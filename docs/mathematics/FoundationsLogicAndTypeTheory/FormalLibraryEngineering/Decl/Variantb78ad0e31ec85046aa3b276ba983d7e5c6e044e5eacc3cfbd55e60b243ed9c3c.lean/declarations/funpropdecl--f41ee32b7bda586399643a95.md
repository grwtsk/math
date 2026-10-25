# FunPropDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3fbc4f1ffc8089f3eb0350533dda4fa5b4d22ea2d7a7731cd3ee9ca5ffcfbff7",
  "kind": "structure",
  "lexical_name": "FunPropDecl",
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
  "slug": "funpropdecl--f41ee32b7bda586399643a95",
  "source": {
    "blob": "beccfc3c84dd076b194ea28864ae541397ffede9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decl/Variantb78ad0e31ec85046aa3b276ba983d7e5c6e044e5eacc3cfbd55e60b243ed9c3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f41ee32b7bda586399643a95ceaa9728b9d164ea8f521716c2b5f93a5b36974c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decl/Variantb78ad0e31ec85046aa3b276ba983d7e5c6e044e5eacc3cfbd55e60b243ed9c3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3fbc4f1ffc8089f3eb0350533dda4fa5b4d22ea2d7a7731cd3ee9ca5ffcfbff7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FunPropDecl where
  /-- function transformation name -/
  funPropName : Name
  /-- path for discrimination tree -/
  path : Array DiscrTree.Key
  /-- argument index of a function this function property talks about.
  For example, this would be 4 for `@Continuous α β _ _ f` -/
  funArgId : Nat
  deriving Inhabited, BEq

/-- Discrimination tree for function properties. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decl/Variantb78ad0e31ec85046aa3b276ba983d7e5c6e044e5eacc3cfbd55e60b243ed9c3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decl/Variantb78ad0e31ec85046aa3b276ba983d7e5c6e044e5eacc3cfbd55e60b243ed9c3c.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `beccfc3c84dd076b194ea28864ae541397ffede9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
