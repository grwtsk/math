# toΓSpecSheafedSpace_app_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90955b29-4ed0-824d-e1af-a20198238052",
  "kind": "theorem",
  "lexical_name": "toΓSpecSheafedSpace_app_spec",
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
  "slug": "to-specsheafedspace-app-spec--5e99637d4d58bfdcc721dd70",
  "source": {
    "blob": "908077ae0972c2673a4aa99d92b073bf48a23785",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 205,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e99637d4d58bfdcc721dd707786c69e920bb3e6fedb13a52c634d7a760cbb41",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90955b29-4ed0-824d-e1af-a20198238052`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[reassoc] theorem toΓSpecSheafedSpace_app_spec (r : Γ.obj (op X)) :
    toOpen (Γ.obj (op X)) (basicOpen r) ≫ X.toΓSpecSheafedSpace.c.app (op (basicOpen r)) =
      X.toToΓSpecMapBasicOpen r :=
  (X.toΓSpecSheafedSpace_app_eq r).symm ▸ X.toΓSpecCApp_spec r
#align algebraic_geometry.LocallyRingedSpace.to_Γ_Spec_SheafedSpace_app_spec AlgebraicGeometry.LocallyRingedSpace.toΓSpecSheafedSpace_app_spec

/-- The map on stalks induced by the unit commutes with maps from `Γ(X)` to
    stalks (in `Spec Γ(X)` and in `X`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `908077ae0972c2673a4aa99d92b073bf48a23785` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
