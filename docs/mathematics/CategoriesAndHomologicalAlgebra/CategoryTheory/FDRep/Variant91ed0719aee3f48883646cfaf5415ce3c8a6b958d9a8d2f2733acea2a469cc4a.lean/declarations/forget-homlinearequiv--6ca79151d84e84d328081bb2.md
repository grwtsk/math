# forget₂HomLinearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad7042a25fc2a7c7d7f836d25cc902fb36b9c4171e335a9f16f9a03e789f2707",
  "kind": "def",
  "lexical_name": "forget₂HomLinearEquiv",
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
  "slug": "forget-homlinearequiv--6ca79151d84e84d328081bb2",
  "source": {
    "blob": "ed2010d84e8f8ade917dc8119d829eb2a7ea71e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 172,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variant91ed0719aee3f48883646cfaf5415ce3c8a6b958d9a8d2f2733acea2a469cc4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ca79151d84e84d328081bb2f4d2ec35caaab499a0c0757d0e66a0aec6b750fc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variant91ed0719aee3f48883646cfaf5415ce3c8a6b958d9a8d2f2733acea2a469cc4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad7042a25fc2a7c7d7f836d25cc902fb36b9c4171e335a9f16f9a03e789f2707`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def forget₂HomLinearEquiv (X Y : FDRep R G) :
    ((forget₂ (FDRep R G) (Rep R G)).obj X ⟶
      (forget₂ (FDRep R G) (Rep R G)).obj Y) ≃ₗ[R] X ⟶ Y where
  toFun f := ⟨InducedCategory.homMk (ModuleCat.ofHom <| f.hom.toLinearMap), fun g ↦ by
    ext1
    simp only [FGModuleCat.obj_carrier]
    exact f.hom.2 g⟩
  map_add' _ _ := rfl
  map_smul' _ _ := rfl
  invFun f := Rep.ofHom ⟨((forget₂ (FGModuleCat R) (ModuleCat R)).map f.hom).hom, fun g ↦ by
    ext x
    exact ConcreteCategory.congr_hom ((forget (FGModuleCat R)).congr_map (f.comm g)) x⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variant91ed0719aee3f48883646cfaf5415ce3c8a6b958d9a8d2f2733acea2a469cc4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variant91ed0719aee3f48883646cfaf5415ce3c8a6b958d9a8d2f2733acea2a469cc4a.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed2010d84e8f8ade917dc8119d829eb2a7ea71e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
