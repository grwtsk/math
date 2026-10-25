# GeneralizeArg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75c710a23e1b78de20cbbfc7c9fcace3e7688c22d8e5de91ec8ddae01566458e",
  "kind": "structure",
  "lexical_name": "GeneralizeArg",
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
  "slug": "generalizearg--d2fffac62822d5b8c30c0e19",
  "source": {
    "blob": "34da288843a5e078f05a859547d6897e742092ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Generalize/Variantade696587816020ce29236fd2b9c22cf4273b0086061a5d50462da4f4ca2108a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2fffac62822d5b8c30c0e19f9bc8a5aadced2e18e80e3976e98b893496cb2f1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Generalize/Variantade696587816020ce29236fd2b9c22cf4273b0086061a5d50462da4f4ca2108a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75c710a23e1b78de20cbbfc7c9fcace3e7688c22d8e5de91ec8ddae01566458e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GeneralizeArg where
  expr   : Expr
  xName? : Option Name := none
  hName? : Option Name := none
  deriving Inhabited

/--
Telescopic `generalize` tactic. It can simultaneously generalize many terms.
It uses `kabstract` to occurrences of the terms that need to be generalized.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Generalize/Variantade696587816020ce29236fd2b9c22cf4273b0086061a5d50462da4f4ca2108a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Generalize/Variantade696587816020ce29236fd2b9c22cf4273b0086061a5d50462da4f4ca2108a.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34da288843a5e078f05a859547d6897e742092ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
