# colimitFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcafe8a925e2cbb975bb2e4090b0f6e84cd30218bf759f1e6a3a71766e16aa34",
  "kind": "def",
  "lexical_name": "colimitFunctor",
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
  "slug": "colimitfunctor--9e5a4e37bf19c36c82962817",
  "source": {
    "blob": "68253c6dd40bc111364a315941978407fd2b2189",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 355,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitFunctor/Variant75721c782f68dc293d6a1aeb51711afcab6317581f06ff9235d5183104960d5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e5a4e37bf19c36c829628176acf455687b6a30e4b881e3b1265df8cf67fdcf7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitFunctor/Variant75721c782f68dc293d6a1aeb51711afcab6317581f06ff9235d5183104960d5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcafe8a925e2cbb975bb2e4090b0f6e84cd30218bf759f1e6a3a71766e16aa34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def colimitFunctor : PresheafOfModules.{w} R ⥤ ModuleCat.{w} cR.pt where
  obj M := ↧(ModuleColimit hcR (colimit.isColimit M.presheaf))
  map f := ModuleCat.ofHom (ModuleColimit.map _ _ _ f)
  map_comp f g := by ext : 1; exact (ModuleColimit.comp_map ..).symm

/-- Given a presheaf of rings `R` on a cofiltered category, this is the
adjunction between `colimitFunctor : PresheafOfModules R ⥤ ModuleCat cR.pt`
and the constant functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitFunctor/Variant75721c782f68dc293d6a1aeb51711afcab6317581f06ff9235d5183104960d5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitFunctor/Variant75721c782f68dc293d6a1aeb51711afcab6317581f06ff9235d5183104960d5b.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68253c6dd40bc111364a315941978407fd2b2189` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
