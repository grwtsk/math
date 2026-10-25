# markComplete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b51e207fd950435c277ea079df1b63a4cc6802f9db5f36b330fd22f393a0bb33",
  "kind": "def",
  "lexical_name": "markComplete",
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
  "slug": "markcomplete--0c087346cd84068f4b5e9a2d",
  "source": {
    "blob": "ae83b0d85ca1c80286fa1a62aea9945e10328a79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 215,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantf58f48e4b291218a5cd8f44f3c6a66314d7a1e1b20d0daaeec8e22f382f6e8b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c087346cd84068f4b5e9a2d676df275b615bdb1259cd685028490c30f5ccb74",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantf58f48e4b291218a5cd8f44f3c6a66314d7a1e1b20d0daaeec8e22f382f6e8b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b51e207fd950435c277ea079df1b63a4cc6802f9db5f36b330fd22f393a0bb33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def markComplete (reader : Reader dir) : Reader dir :=
  { reader with
    state := .complete
    messageCount := reader.messageCount + 1 }

/--
Transitions the reader to a failed state with the given error.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantf58f48e4b291218a5cd8f44f3c6a66314d7a1e1b20d0daaeec8e22f382f6e8b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reader/Variantf58f48e4b291218a5cd8f44f3c6a66314d7a1e1b20d0daaeec8e22f382f6e8b6.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae83b0d85ca1c80286fa1a62aea9945e10328a79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
