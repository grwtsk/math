# abel_ibp_second

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23772e81-3c73-a1f7-21b2-077d02a11d06",
  "kind": "theorem",
  "lexical_name": "abel_ibp_second",
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
  "slug": "abel-ibp-second--0423d32867045faf759cfc1e",
  "source": {
    "blob": "67038b8cde04b83ca48c8bbfe74fc60f24eab369",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 283,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0423d32867045faf759cfc1ec54366814fc83a1f7f58acb50e9e3de3122c2d83",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23772e81-3c73-a1f7-21b2-077d02a11d06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abel_ibp_second (hN : 0 < N) {r g h : ℝ → ℝ} {T : Set ℝ} (hT : T.Countable)
    (hr : ∀ x ∈ Icc (0:ℝ) 1, HasDerivAt r (g x) x) (hg : ContinuousOn g (Icc (0:ℝ) 1))
    (hgh : ∀ x ∈ Ioo (0:ℝ) 1 \ T, HasDerivAt g (h x) x) (hh : IntervalIntegrable h volume 0 1) :
    ∑ j ∈ Finset.Icc 1 N, s j * r ((j:ℝ)/N) - ∫ x in (0:ℝ)..1, r x * x
      = r 1 * Dfun s N 1 - g 1 * Efun s N 1 + ∫ x in (0:ℝ)..1, h x * Efun s N x := by
  rw [abel_ibp_first hN hr hg]
  -- FTC for F := g·E off the countable set T ∪ grid
  have hE := continuousOn_Efun (s := s) hN
  have hgi : IntervalIntegrable g volume 0 1 := by
    rw [← uIcc_of_le zero_le_one] at hg; exact hg.intervalIntegrable
  have hgD : IntervalIntegrable (fun x => g x * Dfun s N x) volume 0 1 :=
    ((intervalIntegrable_gC (s := s) hN hg).sub
      (hgi.mul_continuousOn ((by fun_prop : Continuous fun x : ℝ => x ^ 2 / 2).continuousOn))).congr_ae
      (by filter_upwards with x; simp [Dfun, mul_sub])
  have hhE : IntervalIntegrable (fun x => h x * Efun s N x) volume 0 1 :=
    hh.mul_continuousOn (by rwa [uIcc_of_le zero_le_one])
  have key := MeasureTheory.integral_eq_of_hasDerivAt_off_countable_of_le
    (fun x => g x * Efun s N x) (fun x => h x * Efun s N x + g x * Dfun s N x) zero_le_one
    ((hT.union grid_countable)) (hg.mul hE)
    (fun x hx => by
      have hx' : x ∈ Ioo (0:ℝ) 1 \ T := ⟨hx.1, fun h' => hx.2 (Or.inl h')⟩
      have hx'' : x ∈ Ioo (0:ℝ) 1 \ grid N := ⟨hx.1, fun h' => hx.2 (Or.inr h')⟩
      exact (hgh x hx').mul (hasDerivAt_Efun hN hx''))
    (hhE.add hgD)
  rw [intervalIntegral.integral_add hhE hgD] at key
  simp only [Efun_zero, mul_zero, sub_zero] at key
  linarith

/-- **CEILING STABILITY (L1).** With |E| ≤ M on [0,1]:
  |Σ_{j=1}^{N} s_j r(j/N) − ∫₀¹ r(x)x dx| ≤ |r 1|·|D 1| + |g 1|·|E 1| + M·∫₀¹|h|. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67038b8cde04b83ca48c8bbfe74fc60f24eab369` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
