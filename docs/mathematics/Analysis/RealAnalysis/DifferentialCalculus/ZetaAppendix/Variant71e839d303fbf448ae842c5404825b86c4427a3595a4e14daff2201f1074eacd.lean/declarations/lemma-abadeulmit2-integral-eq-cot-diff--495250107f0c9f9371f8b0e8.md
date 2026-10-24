# lemma_abadeulmit2_integral_eq_cot_diff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c50c5f2-4995-d9fd-8e8e-1d96130e27e3",
  "kind": "lemma",
  "lexical_name": "lemma_abadeulmit2_integral_eq_cot_diff",
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
  "slug": "lemma-abadeulmit2-integral-eq-cot-diff--495250107f0c9f9371f8b0e8",
  "source": {
    "blob": "31f0e965c048f04d42843bf51db7ae3d45f32361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2549,
    "line": 2506,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:495250107f0c9f9371f8b0e865abc5e0125c36351025c0aac74fe39ee2f98180",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c50c5f2-4995-d9fd-8e8e-1d96130e27e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2506–2549.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lemma_abadeulmit2_integral_eq_cot_diff {z w : ℂ}
  (hz : z ∈ integerComplement)
  (hw : w ∈ integerComplement)
  (h_path : ∀ t : ℝ, t ∈ Set.Icc 0 1 → w + ↑t * (z - w) ∉ range (fun n : ℤ => (n : ℂ))) :
  (z - w) * ∫ (t : ℝ) in 0..1, ∑' (n : ℤ), 1 / (w + ↑t * (z - w) - ↑n) ^ 2 =
  -π * Complex.cot (π * z) - (-π * Complex.cot (π * w)) := by
  rw [lemma_abadeulmit2_integral_tsum_inv_sub_int_sq hz hw h_path]
  have h_summable_w : Summable (fun n : ℤ ↦ (1 / (w - n) - 1 / (z - n) : ℂ)) := summable_inv_sub_inv_aux hz hw
  calc
    ∑' (n : ℤ), (1 / (w - n) - 1 / (z - n))
    = 1 / (w - 0) - 1 / (z - 0) + ∑' (n : ℕ), (1 / (w - (↑n + 1)) - 1 / (z - (↑n + 1)) + (1 / (w - -(↑n + 1)) - 1 / (z - -(↑n + 1)))) := by
      rw [eq_sub_of_add_eq (tsum_nat_add_neg h_summable_w).symm,
        (h_summable_w.nat_add_neg).tsum_eq_zero_add]
      simp only [Int.cast_zero, sub_zero, neg_add_rev]
      ring_nf
      congr 1
      apply tsum_congr
      intro b
      push_cast
      ring
    _ = (1 / w - 1 / z) + ∑' (n : ℕ), (1 / (w - (↑n + 1)) + 1 / (w + (↑n + 1)) - (1 / (z - (↑n + 1)) + 1 / (z + (↑n + 1)))) := by
      simp only [sub_zero]
      congr 1
      apply tsum_congr
      intro n
      ring
    _ = (1 / w - 1 / z) + (∑' (n : ℕ), (1 / (w - (↑n + 1)) + 1 / (w + (↑n + 1))) - ∑' (n : ℕ), (1 / (z - (↑n + 1)) + 1 / (z + (↑n + 1)))) := by
      rw [Summable.tsum_sub (summable_cotTerm hw) (summable_cotTerm hz)]
    _ = (1 / w + ∑' (n : ℕ+), (1 / (w - n) + 1 / (w + n))) - (1 / z + ∑' (n : ℕ+), (1 / (z - n) + 1 / (z + n))) := by
      have hw : ∑' (n : ℕ), (1 / (w - (↑n + 1)) + 1 / (w + (↑n + 1))) = ∑' (n : ℕ+), (1 / (w - n) + 1 / (w + n)) := by
        symm
        simp_rw [tsum_pnat_eq_tsum_succ (f := fun (n : ℕ) => 1 / (w - n) + 1 / (w + n))]
        simp
      have hz_sum : ∑' (n : ℕ), (1 / (z - (↑n + 1)) + 1 / (z + (↑n + 1))) = ∑' (n : ℕ+), (1 / (z - n) + 1 / (z + n)) := by
        symm
        simp_rw [tsum_pnat_eq_tsum_succ (f := fun (n : ℕ) => 1 / (z - n) + 1 / (z + n))]
        simp
      rw [hw, hz_sum]
      ring
    _ = π * cot (π * w) - π * cot (π * z) := by
      rw [cot_series_rep hz, cot_series_rep hw]
    _ = (-π * Complex.cot (π * z)) - (-π * Complex.cot (π * w)) := by
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean#L2506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f0e965c048f04d42843bf51db7ae3d45f32361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
