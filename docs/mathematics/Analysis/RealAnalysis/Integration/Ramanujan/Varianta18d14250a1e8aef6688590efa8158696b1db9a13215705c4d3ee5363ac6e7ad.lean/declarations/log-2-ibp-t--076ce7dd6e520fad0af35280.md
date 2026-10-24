# log_2_IBP_t

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b99d4674-023b-23aa-d8f3-fef83747e827",
  "kind": "lemma",
  "lexical_name": "log_2_IBP_t",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "log-2-ibp-t--076ce7dd6e520fad0af35280",
  "source": {
    "blob": "1497488f027732033fe8af0a05024403d34b5d20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1426,
    "line": 1376,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:076ce7dd6e520fad0af3528057125743cb31945b1f8c8056f4bad0348d7ffc15",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b99d4674-023b-23aa-d8f3-fef83747e827`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1376–1426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma log_2_IBP_t (x : ℝ) (hx : 2 ≤ x) :
    ∫ t in Set.Icc 2 x, 1 / log t ^ 2 =
      x / log x ^ 2 - 2 / log 2 ^ 2 +
        2 * ∫ t in Set.Icc 2 x, 1 / log t ^ 3 := by
  suffices h_ibp : ∀ a b : ℝ, 2 ≤ a → a ≤ b →
      ∫ t in a..b, (1 / (log t) ^ 2) = (b / (log b) ^ 2) - (a / (log a) ^ 2) +
        2 * ∫ t in a..b, (1 / (log t) ^ 3) by
    simpa only [MeasureTheory.integral_Icc_eq_integral_Ioc,
      intervalIntegral.integral_of_le hx] using h_ibp 2 x (by norm_num) hx
  intro a b ha hab
  have h_deriv : ∀ t ∈ Set.Icc a b,
      deriv (fun t ↦ t / (log t) ^ 2) t =
        1 / (log t) ^ 2 - 2 * (1 / (log t) ^ 3) := by
    intro t ht
    norm_num [differentiableAt_log, ne_of_gt (show 0 < log t from log_pos <| by linarith [ht.1]),
      ne_of_gt (show 0 < t from by linarith [ht.1])]
    ring_nf
    grind
  have h_ftc : ∫ t in a..b, deriv (fun t ↦ t / (log t) ^ 2) t =
      (b / (log b) ^ 2) - (a / (log a) ^ 2) := by
    rw [intervalIntegral.integral_deriv_eq_sub']
    · rfl
    · exact fun x hx ↦ DifferentiableAt.div differentiableAt_id
        (DifferentiableAt.pow (differentiableAt_log
          (by cases Set.mem_uIcc.mp hx <;> linarith)) _)
        (pow_ne_zero _ <| ne_of_gt <| log_pos <|
          by cases Set.mem_uIcc.mp hx <;> linarith)
    · rw [Set.uIcc_of_le hab]
      have hlog_cont := continuousOn_log.mono fun y (hy : y ∈ Set.Icc a b) ↦
        ne_of_gt <| by linarith [hy.1]
      have hpow_ne : ∀ (n : ℕ), ∀ y ∈ Set.Icc a b, log y ^ n ≠ 0 :=
        fun n y hy ↦ pow_ne_zero n <| ne_of_gt <| log_pos <| by linarith [hy.1]
      exact ContinuousOn.congr (ContinuousOn.sub
        (continuousOn_const.div (hlog_cont.pow _) (hpow_ne _))
        (continuousOn_const.mul <| continuousOn_const.div (hlog_cont.pow _) (hpow_ne _))) h_deriv
  rw [← h_ftc, intervalIntegral.integral_congr fun t ht =>
    h_deriv t <| by simpa [hab] using ht]
  rw [intervalIntegral.integral_sub]
  · norm_num
  · exact ContinuousOn.intervalIntegrable (continuousOn_of_forall_continuousAt fun x hx ↦
      ContinuousAt.div continuousAt_const
        (ContinuousAt.pow (continuousAt_log
          (by linarith [Set.mem_Icc.mp (by simpa [hab] using hx)])) _)
        (ne_of_gt (pow_pos (log_pos (by linarith [Set.mem_Icc.mp (by simpa [hab] using hx)])) _)))
  · exact ContinuousOn.intervalIntegrable ((continuousOn_const.mul
      (continuousOn_of_forall_continuousAt fun x hx ↦
        ContinuousAt.div continuousAt_const
          (ContinuousAt.pow (continuousAt_log
            (by linarith [Set.mem_Icc.mp (by simpa [hab] using hx)])) _)
          (ne_of_gt (pow_pos (log_pos (by linarith [Set.mem_Icc.mp (by simpa [hab] using hx)])) _)))))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean#L1376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1497488f027732033fe8af0a05024403d34b5d20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
