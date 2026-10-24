# compact_covered_by_mul_left_translates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44365f79-cb04-7dfb-492e-62c675a1679d",
  "kind": "theorem",
  "lexical_name": "compact_covered_by_mul_left_translates",
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
  "slug": "compact-covered-by-mul-left-translates--340a8244b3ca0c3f14ff3d8b",
  "source": {
    "blob": "3d76f71efd3510cef483a2a09972884f71518245",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1684,
    "line": 1666,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantba7af376cad08c06ec0654ebf2d22abb7604a5db49afa66cf7c9696abce04b3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:340a8244b3ca0c3f14ff3d8bb7020688de82e7744b3fa30bbf51d46ee4bda4ab",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantba7af376cad08c06ec0654ebf2d22abb7604a5db49afa66cf7c9696abce04b3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44365f79-cb04-7dfb-492e-62c675a1679d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1666–1684.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compact_covered_by_mul_left_translates {K V : Set G} (hK : IsCompact K)
    (hV : (interior V).Nonempty) : ∃ t : Finset G, K ⊆ ⋃ g ∈ t, (fun h => g * h) ⁻¹' V := by
  obtain ⟨t, ht⟩ : ∃ t : Finset G, K ⊆ ⋃ x ∈ t, interior ((· * ·) x ⁻¹' V) := by
    refine'
      hK.elim_finite_subcover (fun x => interior <| (· * ·) x ⁻¹' V) (fun x => isOpen_interior) _
    cases' hV with g₀ hg₀
    refine' fun g _ => mem_iUnion.2 ⟨g₀ * g⁻¹, _⟩
    refine' preimage_interior_subset_interior_preimage (continuous_const.mul continuous_id) _
    rwa [mem_preimage, id_def, inv_mul_cancel_right]
  exact ⟨t, Subset.trans ht <| iUnion₂_mono fun g _ => interior_subset⟩
#align compact_covered_by_mul_left_translates compact_covered_by_mul_left_translates
#align compact_covered_by_add_left_translates compact_covered_by_add_left_translates

/-- Every locally compact separable topological group is σ-compact.
  Note: this is not true if we drop the topological group hypothesis. -/
@[to_additive SeparableLocallyCompactAddGroup.sigmaCompactSpace
  "Every locally
  compact separable topological group is σ-compact.
  Note: this is not true if we drop the topological group hypothesis."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantba7af376cad08c06ec0654ebf2d22abb7604a5db49afa66cf7c9696abce04b3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantba7af376cad08c06ec0654ebf2d22abb7604a5db49afa66cf7c9696abce04b3a.lean#L1666).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d76f71efd3510cef483a2a09972884f71518245` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
