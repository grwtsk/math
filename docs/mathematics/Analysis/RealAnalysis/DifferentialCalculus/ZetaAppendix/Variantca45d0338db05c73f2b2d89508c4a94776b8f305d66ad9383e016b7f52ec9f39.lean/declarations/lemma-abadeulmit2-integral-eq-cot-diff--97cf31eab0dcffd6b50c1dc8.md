# lemma_abadeulmit2_integral_eq_cot_diff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2498,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57e14fce-1f92-131d-724d-861161401570",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1bb83d7-125c-20be-acb2-4db97abd542a",
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
  "slug": "lemma-abadeulmit2-integral-eq-cot-diff--97cf31eab0dcffd6b50c1dc8",
  "source": {
    "blob": "bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2541,
    "line": 2498,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97cf31eab0dcffd6b50c1dc87fc439c77a7734009bb60e337ca057b6d3235175",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1bb83d7-125c-20be-acb2-4db97abd542a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2498–2541.

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

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean#L2498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
