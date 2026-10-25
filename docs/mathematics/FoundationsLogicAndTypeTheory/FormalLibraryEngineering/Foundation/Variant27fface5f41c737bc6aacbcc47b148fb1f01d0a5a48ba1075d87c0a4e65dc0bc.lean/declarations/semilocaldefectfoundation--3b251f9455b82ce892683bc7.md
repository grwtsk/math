# SemiLocalDefectFoundation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c5380c5e91b8d7aa88aeb2c5dd9ab49c67b81fa15a7adf616bdae4ea0704b77",
  "kind": "structure",
  "lexical_name": "SemiLocalDefectFoundation",
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
  "slug": "semilocaldefectfoundation--3b251f9455b82ce892683bc7",
  "source": {
    "blob": "2a82a06e1f536808cce4974ad703471c9901039b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 9,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Foundation/Variant27fface5f41c737bc6aacbcc47b148fb1f01d0a5a48ba1075d87c0a4e65dc0bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b251f9455b82ce892683bc796d2283b4ee774910206ef7b9c955e16a54f2ead",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Foundation/Variant27fface5f41c737bc6aacbcc47b148fb1f01d0a5a48ba1075d87c0a4e65dc0bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c5380c5e91b8d7aa88aeb2c5dd9ab49c67b81fa15a7adf616bdae4ea0704b77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SemiLocalDefectFoundation
    (primeUniverse : FinitePrimeUniverse)
    (model : OperatorModel) where
  capacity :
    PrimeCutDefectCapacity
      model primeUniverse.Prime
  graph :
    PrimeCutGraphAdapter primeUniverse
  ledger : SemiLocalUnknownLedger
  immutableCut : Prop
  immutableCutProof : immutableCut

end Mathematics.SemiLocalDefect
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Foundation/Variant27fface5f41c737bc6aacbcc47b148fb1f01d0a5a48ba1075d87c0a4e65dc0bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Foundation/Variant27fface5f41c737bc6aacbcc47b148fb1f01d0a5a48ba1075d87c0a4e65dc0bc.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a82a06e1f536808cce4974ad703471c9901039b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
