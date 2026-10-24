# whiskering

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7872749d66130f0f217811994c108de9048c37945ec77446e51584890b2ee4c5",
  "kind": "def",
  "lexical_name": "whiskering",
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
  "slug": "whiskering--9a5f862358d59d00dd446ba7",
  "source": {
    "blob": "6bc9f90eed4fe3c4e5ad19cafa710f56c559bc29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 484,
    "line": 469,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfcf8af751937881250cdde26b33129a32d5b60c4eb4ee72de29945b89709e355.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a5f862358d59d00dd446ba79c0ece993bc746c53b4ae81f364333d737dcb339",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfcf8af751937881250cdde26b33129a32d5b60c4eb4ee72de29945b89709e355.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7872749d66130f0f217811994c108de9048c37945ec77446e51584890b2ee4c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 469–484.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def whiskering (D : Type u') [Category.{v'} D] : (C ⥤ D) ⥤ Augmented C ⥤ Augmented D where
  obj := whiskeringObj _ _
  map η :=
    { app := fun A =>
        { left := whiskerLeft _ η
          right := η.app _
          w := by
            ext n
            dsimp
            rw [Category.comp_id, Category.comp_id, η.naturality] } }
  map_comp := fun _ _ => by ext <;> rfl

variable {C}

/-- The constant augmented simplicial object functor. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfcf8af751937881250cdde26b33129a32d5b60c4eb4ee72de29945b89709e355.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfcf8af751937881250cdde26b33129a32d5b60c4eb4ee72de29945b89709e355.lean#L469).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bc9f90eed4fe3c4e5ad19cafa710f56c559bc29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
