# ImplementationAuthority

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6d28ec2e77e09a8ca4ced31ae841902540650aaec9a8fdd2e984e3dd7dc9f4d",
  "kind": "inductive",
  "lexical_name": "ImplementationAuthority",
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
  "slug": "implementationauthority--9d40cea7b1395e43182a3625",
  "source": {
    "blob": "1672f43a2dd95b5053120e63a8ab8539a2f0abc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 9,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AF0621d4517786117/Variantbd09d1cb27f41f25fe1bc62e9e9d9b3478ff31d9af20a6ceb54e1d393de953d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d40cea7b1395e43182a3625c771df263efacee3e44014219e7049cf76d306f1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AF0621d4517786117/Variantbd09d1cb27f41f25fe1bc62e9e9d9b3478ff31d9af20a6ceb54e1d393de953d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6d28ec2e77e09a8ca4ced31ae841902540650aaec9a8fdd2e984e3dd7dc9f4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ImplementationAuthority
  | implemented
  | partiallyImplemented
  | specifiedNotImplemented
  | externalCapability
  | none
  deriving DecidableEq, Inhabited

namespace Profile

end Profile

end Mathematics.Concept
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AF0621d4517786117/Variantbd09d1cb27f41f25fe1bc62e9e9d9b3478ff31d9af20a6ceb54e1d393de953d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AF0621d4517786117/Variantbd09d1cb27f41f25fe1bc62e9e9d9b3478ff31d9af20a6ceb54e1d393de953d4.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1672f43a2dd95b5053120e63a8ab8539a2f0abc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
