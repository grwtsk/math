# mapIsoToOrderIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3044891124d417915eb48c047f6b56caa8cfe0afa912e6787834c7ef83e84f30",
  "kind": "def",
  "lexical_name": "mapIsoToOrderIso",
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
  "slug": "mapisotoorderiso--061ed819516bdc3ad2375944",
  "source": {
    "blob": "de190f825e76cf7d4a33e92e1272b700d9ea882d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 628,
    "line": 610,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a6b3f0bcdb86c5ccf3e0868631ba89080f6a90a19e25b7c8bead372452f96ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:061ed819516bdc3ad2375944043feed82c448d072358e9c138f9c6a6f2794358",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a6b3f0bcdb86c5ccf3e0868631ba89080f6a90a19e25b7c8bead372452f96ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3044891124d417915eb48c047f6b56caa8cfe0afa912e6787834c7ef83e84f30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 610–628.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapIsoToOrderIso (e : X ≅ Y) : Subobject X ≃o Subobject Y where
  toFun := (map e.hom).obj
  invFun := (map e.inv).obj
  left_inv g := by simp_rw [← map_comp, e.hom_inv_id, map_id]
  right_inv g := by simp_rw [← map_comp, e.inv_hom_id, map_id]
  map_rel_iff' {A B} := by
    dsimp
    constructor
    · intro h
      apply_fun (map e.inv).obj at h
      · simpa only [← map_comp, e.hom_inv_id, map_id] using h
      · apply Functor.monotone
    · intro h
      apply_fun (map e.hom).obj at h
      · exact h
      · apply Functor.monotone
#align category_theory.subobject.map_iso_to_order_iso CategoryTheory.Subobject.mapIsoToOrderIso

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a6b3f0bcdb86c5ccf3e0868631ba89080f6a90a19e25b7c8bead372452f96ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a6b3f0bcdb86c5ccf3e0868631ba89080f6a90a19e25b7c8bead372452f96ea.lean#L610).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de190f825e76cf7d4a33e92e1272b700d9ea882d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
