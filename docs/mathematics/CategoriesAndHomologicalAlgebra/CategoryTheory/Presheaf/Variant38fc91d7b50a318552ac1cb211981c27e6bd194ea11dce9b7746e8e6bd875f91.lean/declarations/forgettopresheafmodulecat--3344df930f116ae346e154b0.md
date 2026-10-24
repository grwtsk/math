# forgetToPresheafModuleCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d1e9fd93abcc300afb9c04da3e576341c8846ce40fc08cfab86c03317257c50",
  "kind": "def",
  "lexical_name": "forgetToPresheafModuleCat",
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
  "slug": "forgettopresheafmodulecat--3344df930f116ae346e154b0",
  "source": {
    "blob": "5f3e34bdcd4fb1435d3f3debddf30f3695f8da4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 471,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant38fc91d7b50a318552ac1cb211981c27e6bd194ea11dce9b7746e8e6bd875f91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3344df930f116ae346e154b0ea5884199edd1bcc5a301976c0fa79afb383372b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant38fc91d7b50a318552ac1cb211981c27e6bd194ea11dce9b7746e8e6bd875f91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d1e9fd93abcc300afb9c04da3e576341c8846ce40fc08cfab86c03317257c50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 471–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def forgetToPresheafModuleCat (X : Cᵒᵖ) (hX : Limits.IsInitial X) :
    PresheafOfModules.{v} R ⥤ Cᵒᵖ ⥤ ModuleCat (R.obj X) where
  obj M := forgetToPresheafModuleCatObj X hX M
  map f := forgetToPresheafModuleCatMap X hX f

end module_over_initial

end PresheafOfModules
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant38fc91d7b50a318552ac1cb211981c27e6bd194ea11dce9b7746e8e6bd875f91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant38fc91d7b50a318552ac1cb211981c27e6bd194ea11dce9b7746e8e6bd875f91.lean#L471).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f3e34bdcd4fb1435d3f3debddf30f3695f8da4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
