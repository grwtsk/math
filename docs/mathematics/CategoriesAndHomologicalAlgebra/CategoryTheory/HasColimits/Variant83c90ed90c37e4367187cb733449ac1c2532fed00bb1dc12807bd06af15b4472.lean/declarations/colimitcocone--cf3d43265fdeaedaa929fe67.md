# colimitCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe29c7ee59692b3651541beaefae8a296bd60184863c487b54bb6d98a7f7e04d",
  "kind": "def",
  "lexical_name": "colimitCocone",
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
  "slug": "colimitcocone--cf3d43265fdeaedaa929fe67",
  "source": {
    "blob": "42fed88610f647a675a52b5f6b593a40d57270d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 148,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf3d43265fdeaedaa929fe67e4b61f6f544aadca30ce3f9e52c0d8b0ffa20bb6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe29c7ee59692b3651541beaefae8a296bd60184863c487b54bb6d98a7f7e04d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def colimitCocone (F : J ⥤ PresheafedSpace.{_, _, v} C) : Cocone F where
  pt := colimit F
  ι :=
    { app := fun j =>
        { base := colimit.ι (F ⋙ PresheafedSpace.forget C) j
          c := limit.π _ (op j) }
      naturality := fun {j j'} f => by
        ext1
        · ext x
          exact colimit.w_apply (F ⋙ PresheafedSpace.forget C) f x
        · ext ⟨U, hU⟩
          dsimp [-Presheaf.comp_app]
          rw [PresheafedSpace.id_c_app, map_id]
          erw [id_comp]
          rw [NatTrans.comp_app, PresheafedSpace.comp_c_app, whiskerRight_app, eqToHom_app,
            ← congr_arg NatTrans.app (limit.w (pushforwardDiagramToColimit F).leftOp f.op),
            NatTrans.comp_app, Functor.leftOp_map, pushforwardDiagramToColimit_map]
          simp }

variable [HasLimitsOfShape Jᵒᵖ C]

namespace ColimitCoconeIsColimit

/-- Auxiliary definition for `AlgebraicGeometry.PresheafedSpace.colimitCoconeIsColimit`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42fed88610f647a675a52b5f6b593a40d57270d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
