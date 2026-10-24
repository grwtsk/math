# order_lt_order_of_eq_add_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9dbda9566542d94895f87dc69c0c0fef4d55ea13",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 231,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a55171c5-4d80-c948-728f-97940280ed98",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e76ff9d5-d824-d2dd-6a60-f01fe7f5d4c4",
  "kind": "theorem",
  "lexical_name": "order_lt_order_of_eq_add_single",
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
  "slug": "order-lt-order-of-eq-add-single--d0e282128b6af68c429454db",
  "source": {
    "blob": "9dbda9566542d94895f87dc69c0c0fef4d55ea13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 231,
    "path": "GRWTSK/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0e282128b6af68c429454db6411bf5632239e7c5dd49a0f8235da20eac474d9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e76ff9d5-d824-d2dd-6a60-f01fe7f5d4c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem order_lt_order_of_eq_add_single {R} {Γ} [LinearOrder Γ] [Zero Γ] [AddCancelCommMonoid R]
    {x y : HahnSeries Γ R} (hxy : x = y + single x.order x.leadingCoeff) (hy : y ≠ 0) :
    x.order < y.order := by
  have : x.order ≠ y.order := by
    intro h
    have hyne : single y.order y.leadingCoeff ≠ 0 := single_ne_zero <| leadingCoeff_ne_iff.mpr hy
    rw [leadingCoeff_eq, ← h, coeff_order_of_eq_add_single hxy <| ne_zero_of_eq_add_single hxy hy,
      single_eq_zero] at hyne
    exact hyne rfl
  refine lt_of_le_of_ne ?_ this
  simp only [order, ne_zero_of_eq_add_single hxy hy, ↓reduceDIte, hy]
  have : y.support ⊆ x.support := by
    intro g hg
    by_cases hgx : g = x.order
    · refine (mem_support x g).mpr ?_
      have : x.coeff x.order ≠ 0 := coeff_order_ne_zero <| ne_zero_of_eq_add_single hxy hy
      rwa [← hgx] at this
    · have : x.coeff g = (y + (single x.order) x.leadingCoeff).coeff g := by rw [← hxy]
      rw [coeff_add, coeff_single_of_ne hgx, add_zero] at this
      simpa [this] using hg
  exact Set.IsWF.min_le_min_of_subset this

/-- `single` as an additive monoid/group homomorphism -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Addition/Variant4ae924474be57e9979152f5cfb3d594b08b300276706f998cd9d159d7ce4061b.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dbda9566542d94895f87dc69c0c0fef4d55ea13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
