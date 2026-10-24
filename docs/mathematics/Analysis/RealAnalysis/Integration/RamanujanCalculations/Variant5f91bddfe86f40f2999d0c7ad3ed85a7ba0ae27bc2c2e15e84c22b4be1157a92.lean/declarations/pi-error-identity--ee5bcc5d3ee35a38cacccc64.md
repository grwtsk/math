# pi_error_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "453e830095347a4b4868e31bd20aa3dede73817f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 372,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c7834f0-0cab-5af1-84d8-a9b12ea33571",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:89854ec5-2daa-5de6-0805-5bf4bf7ab5b1",
  "kind": "theorem",
  "lexical_name": "pi_error_identity",
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
  "slug": "pi-error-identity--ee5bcc5d3ee35a38cacccc64",
  "source": {
    "blob": "453e830095347a4b4868e31bd20aa3dede73817f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 372,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee5bcc5d3ee35a38cacccc647c4ac80eac1a5e4b3da5673fb2b882a364d28001",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89854ec5-2daa-5de6-0805-5bf4bf7ab5b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pi_error_identity (x : ℝ) (hx : 2 ≤ x) :
    pi x - Li x = (θ x - x) / log x + 2 / log 2 + ∫ t in Icc 2 x, (θ t - t) / (t * log t ^ 2) := by
  have h_integral : ∫ t in Set.Icc 2 x, (θ t - t) / (t * log t ^ 2) =
      (∫ t in Set.Icc 2 x, θ t / (t * log t ^ 2)) -
      (∫ t in Set.Icc 2 x, 1 / log t ^ 2) := by
    rw [← MeasureTheory.integral_sub]
    · exact MeasureTheory.setIntegral_congr_fun measurableSet_Icc fun t ht ↦ by
        rw [sub_div, div_eq_mul_inv]; ring_nf
        norm_num [show t ≠ 0 by linarith [ht.1], show log t ≠ 0 from ne_of_gt <| log_pos <| by linarith [ht.1]]
    · have h_bound : ∀ t ∈ Set.Icc 2 x, |θ t / (t * log t ^ 2)| ≤ log 4 / log t ^ 2 := by
        intro t ht
        have : θ t ≤ log 4 * t := Chebyshev.theta_le_log4_mul_x (by linarith [ht.1])
        rw [abs_of_nonneg (div_nonneg (by exact Finset.sum_nonneg fun _ _ ↦
              log_nonneg <| Nat.one_le_cast.2 <| Nat.Prime.pos <| by aesop)
            (mul_nonneg (by linarith [ht.1]) (sq_nonneg _))), div_le_div_iff₀] <;>
          nlinarith [ht.1, ht.2, log_pos <| show 1 < t by linarith [ht.1],
            log_le_sub_one_of_pos <| show 0 < t by linarith [ht.1],
            show 0 ≤ θ t from Finset.sum_nonneg fun _ _ ↦
              log_nonneg <| Nat.one_le_cast.2 <| Nat.Prime.pos <| by aesop]
      refine MeasureTheory.Integrable.mono' (g := fun t ↦ log 4 / log t ^ 2) ?_ ?_ ?_
      · exact ContinuousOn.integrableOn_Icc (continuousOn_of_forall_continuousAt fun t ht ↦
          ContinuousAt.div continuousAt_const
            (ContinuousAt.pow (continuousAt_log (by linarith [ht.1])) _)
              (ne_of_gt (sq_pos_of_pos (log_pos (by linarith [ht.1])))))
      · refine (Measurable.mul ?_ ?_).aestronglyMeasurable
        · have : Measurable (fun t : ℕ ↦ ∑ p ∈ Finset.filter Nat.Prime (Finset.Icc 0 t), log p) :=
            measurable_from_nat
          exact this.comp measurable_id'.nat_floor
        · exact Measurable.inv (measurable_id.mul (measurable_log.pow_const 2))
      · filter_upwards [MeasureTheory.ae_restrict_mem measurableSet_Icc] with t ht using h_bound t ht
    · exact ContinuousOn.integrableOn_Icc (continuousOn_const.div
        (ContinuousOn.pow (continuousOn_log.mono <| by norm_num) _) fun t ht ↦
        ne_of_gt <| sq_pos_of_pos <| log_pos <| by linarith [ht.1])
  have h_pi : pi x = θ x / log x + ∫ t in Icc 2 x, θ t / (t * log t ^ 2) := by
    rw [integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le hx]
    exact primeCounting_eq_theta_div_log_add_integral hx
  rw [h_integral, h_pi, Li_eq_sub_add_integral x hx]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `453e830095347a4b4868e31bd20aa3dede73817f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
