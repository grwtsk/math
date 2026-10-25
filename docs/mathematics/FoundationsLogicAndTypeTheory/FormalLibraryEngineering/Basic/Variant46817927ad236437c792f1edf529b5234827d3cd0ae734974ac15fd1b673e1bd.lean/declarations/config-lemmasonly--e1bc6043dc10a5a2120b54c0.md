# Config.lemmasOnly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38fb1e360d255de89caf97a4ee34e5937dbf6a6c3342999ecd4ac8e72933abb7",
  "kind": "def",
  "lexical_name": "Config.lemmasOnly",
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
  "slug": "config-lemmasonly--e1bc6043dc10a5a2120b54c0",
  "source": {
    "blob": "480167c71f00d66f8d03ba37b08b0eea09686bb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 861,
    "line": 853,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1bc6043dc10a5a2120b54c0a85b541ca0d4ea1ce0daa689701c39f8464c26d1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38fb1e360d255de89caf97a4ee34e5937dbf6a6c3342999ecd4ac8e72933abb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 853–861.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Config.lemmasOnly : Config where
  isSimp := false

/-- `instantiateLambdasOrApps es e` instantiates lambdas in `e` by expressions from `es`.
If the length of `es` is larger than the number of lambdas in `e`,
then the term is applied to the remaining terms.
Also reduces head let-expressions in `e`, including those after instantiating all lambdas.

This is very similar to `expr.substs`, but this also reduces head let-expressions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant46817927ad236437c792f1edf529b5234827d3cd0ae734974ac15fd1b673e1bd.lean#L853).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `480167c71f00d66f8d03ba37b08b0eea09686bb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
