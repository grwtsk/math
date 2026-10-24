# mem_nonZeroDivisorsLeft_of_constantCoeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d102a54d2c48b5ed6fdccf50c3b659c4d11f69ee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dcd2c7eae0853f1ccb509a3b18aabd934d53f7657543650a152abccb28765c98.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8d62f7a-78d8-a3aa-8d6d-9162dc487fb5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d19855f1-cc9d-c1a8-b689-d54df60c591f",
  "kind": "theorem",
  "lexical_name": "mem_nonZeroDivisorsLeft_of_constantCoeff",
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
  "slug": "mem-nonzerodivisorsleft-of-constantcoeff--63461f58f3e7cdc28fe5a764",
  "source": {
    "blob": "d102a54d2c48b5ed6fdccf50c3b659c4d11f69ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 75,
    "path": "GRWTSK/Algebra/RingTheory/NoZeroDivisors/Variantdcd2c7eae0853f1ccb509a3b18aabd934d53f7657543650a152abccb28765c98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63461f58f3e7cdc28fe5a7641d305843008e03dcb5694d6a74d4fe47660decd2",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/NoZeroDivisors/Variantdcd2c7eae0853f1ccb509a3b18aabd934d53f7657543650a152abccb28765c98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d19855f1-cc9d-c1a8-b689-d54df60c591f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_nonZeroDivisorsLeft_of_constantCoeff {φ : MvPowerSeries σ R}
    (hφ : constantCoeff φ ∈ nonZeroDivisorsLeft R) :
    φ ∈ nonZeroDivisorsLeft (MvPowerSeries σ R) := by
  classical
  intro x hx
  ext d
  apply WellFoundedLT.induction d
  intro e he
  rw [map_zero, ← mul_left_mem_nonZeroDivisorsLeft_eq_zero_iff hφ,
    ← map_zero (f := coeff e), ← hx]
  convert! (coeff_mul e φ x).symm
  rw [Finset.sum_eq_single (0, e), coeff_zero_eq_constantCoeff]
  · rintro ⟨_, u⟩ huv _
    suffices u < e by simp only [he u this, mul_zero, map_zero]
    apply lt_of_le_of_ne
    · simp only [← mem_antidiagonal.mp huv, le_add_iff_nonneg_left, zero_le]
    · rintro rfl
      simp_all
  · simp only [mem_antidiagonal, zero_add, not_true_eq_false, coeff_zero_eq_constantCoeff,
      false_implies]

/-- A multivariate power series is not a zero divisor
  when its constant coefficient is not a zero divisor -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/NoZeroDivisors/Variantdcd2c7eae0853f1ccb509a3b18aabd934d53f7657543650a152abccb28765c98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/NoZeroDivisors/Variantdcd2c7eae0853f1ccb509a3b18aabd934d53f7657543650a152abccb28765c98.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d102a54d2c48b5ed6fdccf50c3b659c4d11f69ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
