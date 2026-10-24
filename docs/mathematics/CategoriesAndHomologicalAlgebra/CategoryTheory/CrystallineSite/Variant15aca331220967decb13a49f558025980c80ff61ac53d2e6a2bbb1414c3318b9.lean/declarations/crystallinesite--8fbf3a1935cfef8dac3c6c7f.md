# CrystallineSite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3aaa8095a5961b44b0e1b380bf9e79b2dc7e31f6134bd5e2179049cab1c5dbcd",
  "kind": "structure",
  "lexical_name": "CrystallineSite",
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
  "slug": "crystallinesite--8fbf3a1935cfef8dac3c6c7f",
  "source": {
    "blob": "770176a9c5dd50f4bbf0aeb29bfec9f2b3ae7f4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 33,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CrystallineSite/Variant15aca331220967decb13a49f558025980c80ff61ac53d2e6a2bbb1414c3318b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8fbf3a1935cfef8dac3c6c7fc01ba8ce5a73cbbaf12a0b218db1cf2aee3ca1e0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CrystallineSite/Variant15aca331220967decb13a49f558025980c80ff61ac53d2e6a2bbb1414c3318b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3aaa8095a5961b44b0e1b380bf9e79b2dc7e31f6134bd5e2179049cab1c5dbcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CrystallineSite where
  Site : ResearchTopos.SiteCategory
  topology : ResearchTopos.GrothendieckTopology Site
  thickeningOf : Site.Obj → Option InfinitesimalThickening
  baseLabel : String
  intendedBaseStack : String := "M_ell"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CrystallineSite/Variant15aca331220967decb13a49f558025980c80ff61ac53d2e6a2bbb1414c3318b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CrystallineSite/Variant15aca331220967decb13a49f558025980c80ff61ac53d2e6a2bbb1414c3318b9.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `770176a9c5dd50f4bbf0aeb29bfec9f2b3ae7f4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
