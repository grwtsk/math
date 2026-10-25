# RecCallCache.eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3c7ca06c8603672f11fc59bdfab71a46aaba6556ecf6bbeb5bb867f82441673",
  "kind": "def",
  "lexical_name": "RecCallCache.eval",
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
  "slug": "reccallcache-eval--1d5cdff82c2d4a70165cc483",
  "source": {
    "blob": "d7e8f582f2bcabce625f8ec04c422992da61f27e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 515,
    "line": 506,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant977fc49d05765c90b70a4d7c1ed9d671d77be0365c0d2e5e1b71acee5a15270c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d5cdff82c2d4a70165cc4839795f53010a702c125e6bda5320b51ed32f41eaf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant977fc49d05765c90b70a4d7c1ed9d671d77be0365c0d2e5e1b71acee5a15270c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3c7ca06c8603672f11fc59bdfab71a46aaba6556ecf6bbeb5bb867f82441673`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 506–515.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RecCallCache.eval (rc: RecCallCache) (callerMeasureIdx calleeMeasureIdx : Nat) : MetaM GuessLexRel := do
  -- Check the cache first
  if let Option.some res := (← rc.cache.get)[callerMeasureIdx]![calleeMeasureIdx]! then
    return res
  else
    let res ← evalRecCall  rc.callerName rc.decrTactic? rc.callerMeasures rc.calleeMeasures rc.rcc callerMeasureIdx calleeMeasureIdx
    rc.cache.modify (·.modify callerMeasureIdx (·.set! calleeMeasureIdx res))
    return res

/-- Print a single cache entry as a string, without forcing it -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant977fc49d05765c90b70a4d7c1ed9d671d77be0365c0d2e5e1b71acee5a15270c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant977fc49d05765c90b70a4d7c1ed9d671d77be0365c0d2e5e1b71acee5a15270c.lean#L506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7e8f582f2bcabce625f8ec04c422992da61f27e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
