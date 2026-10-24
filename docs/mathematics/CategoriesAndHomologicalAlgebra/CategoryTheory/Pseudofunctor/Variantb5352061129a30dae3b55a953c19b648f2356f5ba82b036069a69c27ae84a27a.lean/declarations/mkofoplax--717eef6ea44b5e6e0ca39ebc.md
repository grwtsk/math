# mkOfOplax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6e6be17a688b64c11d9c3509e7a88eed9c33c15a7246b48aada0e95ae347d47",
  "kind": "def",
  "lexical_name": "mkOfOplax",
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
  "slug": "mkofoplax--717eef6ea44b5e6e0ca39ebc",
  "source": {
    "blob": "b2d244bdc3f4cc6150a5c2320ed6d903f4cd4019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 247,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variantb5352061129a30dae3b55a953c19b648f2356f5ba82b036069a69c27ae84a27a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:717eef6ea44b5e6e0ca39ebc76a4ad500769b3f42fe86003222e726ec7506ff5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variantb5352061129a30dae3b55a953c19b648f2356f5ba82b036069a69c27ae84a27a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6e6be17a688b64c11d9c3509e7a88eed9c33c15a7246b48aada0e95ae347d47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkOfOplax (F : OplaxFunctor B C) (F' : F.PseudoCore) : Pseudofunctor B C where
  toPrelaxFunctor := F.toPrelaxFunctor
  mapId := F'.mapIdIso
  mapComp := F'.mapCompIso
  map₂_whisker_left := fun f g h η => by
    rw [F'.mapCompIso_hom f g, ← F.mapComp_naturality_right_assoc, ← F'.mapCompIso_hom f h,
      hom_inv_id, comp_id]
  map₂_whisker_right := fun η h => by
    rw [F'.mapCompIso_hom _ h, ← F.mapComp_naturality_left_assoc, ← F'.mapCompIso_hom _ h,
      hom_inv_id, comp_id]
  map₂_associator := fun f g h => by
    rw [F'.mapCompIso_hom (f ≫ g) h, F'.mapCompIso_hom f g, ← F.map₂_associator_assoc, ←
      F'.mapCompIso_hom f (g ≫ h), ← F'.mapCompIso_hom g h, whiskerLeft_hom_inv_assoc,
      hom_inv_id, comp_id]

/-- Construct a pseudofunctor from an oplax functor whose `mapId` and `mapComp` are isomorphisms. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variantb5352061129a30dae3b55a953c19b648f2356f5ba82b036069a69c27ae84a27a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variantb5352061129a30dae3b55a953c19b648f2356f5ba82b036069a69c27ae84a27a.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2d244bdc3f4cc6150a5c2320ed6d903f4cd4019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
