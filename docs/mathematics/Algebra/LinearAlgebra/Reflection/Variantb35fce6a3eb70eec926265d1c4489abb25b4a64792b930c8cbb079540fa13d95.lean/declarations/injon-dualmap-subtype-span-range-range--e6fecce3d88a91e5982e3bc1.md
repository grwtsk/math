# injOn_dualMap_subtype_span_range_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b7e2fa7-8c3d-5ba2-e86c-31a25ace25de",
  "kind": "lemma",
  "lexical_name": "injOn_dualMap_subtype_span_range_range",
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
  "slug": "injon-dualmap-subtype-span-range-range--e6fecce3d88a91e5982e3bc1",
  "source": {
    "blob": "4285bfd5ff07b7aa7a53fe270ced2a2bb057ea0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 449,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6fecce3d88a91e5982e3bc17a6344f9f21ea6ffafdb0b740b5aab183d8e0dc4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b7e2fa7-8c3d-5ba2-e86c-31a25ace25de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma injOn_dualMap_subtype_span_range_range {ι : Type*} [NoZeroSMulDivisors ℤ M]
    {r : ι ↪ M} {c : ι → Dual R M} (hfin : (range r).Finite)
    (h_two : ∀ i, c i (r i) = 2)
    (h_mapsTo : ∀ i, MapsTo (preReflection (r i) (c i)) (range r) (range r)) :
    InjOn (span R (range r)).subtype.dualMap (range c) := by
  rintro - ⟨i, rfl⟩ - ⟨j, rfl⟩ hij
  congr
  suffices ∀ k, c i (r k) = c j (r k) by
    rw [← EmbeddingLike.apply_eq_iff_eq r]
    exact eq_of_mapsTo_reflection_of_mem (f := c i) (g := c j) hfin (h_two i) (h_two j)
      (by rw [← this, h_two]) (by rw [this, h_two]) (h_mapsTo i) (h_mapsTo j) (mem_range_self j)
  intro k
  simpa using LinearMap.congr_fun hij ⟨r k, Submodule.subset_span (mem_range_self k)⟩

end Module
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reflection/Variantb35fce6a3eb70eec926265d1c4489abb25b4a64792b930c8cbb079540fa13d95.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4285bfd5ff07b7aa7a53fe270ced2a2bb057ea0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
