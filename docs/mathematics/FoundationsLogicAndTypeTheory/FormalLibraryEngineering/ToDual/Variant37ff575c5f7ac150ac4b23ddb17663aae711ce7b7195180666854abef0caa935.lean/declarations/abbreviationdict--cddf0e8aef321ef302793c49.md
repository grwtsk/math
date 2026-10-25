# abbreviationDict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4604166d647032f80f034c8bbee98f0d899b44c261787321163b38ed3c86e85d",
  "kind": "def",
  "lexical_name": "abbreviationDict",
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
  "slug": "abbreviationdict--cddf0e8aef321ef302793c49",
  "source": {
    "blob": "3b68c2682ae9fb1358b1193f36d1667915d473d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 265,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDual/Variant37ff575c5f7ac150ac4b23ddb17663aae711ce7b7195180666854abef0caa935.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cddf0e8aef321ef302793c49eb8da11f92911f3d8a20d135bbcbcaf03f432ea5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDual/Variant37ff575c5f7ac150ac4b23ddb17663aae711ce7b7195180666854abef0caa935.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4604166d647032f80f034c8bbee98f0d899b44c261787321163b38ed3c86e85d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def abbreviationDict : Std.HashMap String String := .ofList [
  ("wellFoundedLT", "WellFoundedGT"),
  ("wellFoundedGT", "WellFoundedLT"),
  ("nhdsLT", "NhdsGT"),
  ("nhdsGT", "NhdsLT"),
  ("nhdsLE", "NhdsGE"),
  ("nhdsGE", "NhdsLE"),
  ("relIsoLT", "RelIsoGT"),
  ("relIsoGT", "RelIsoLT"),
  ("succColimit", "SuccLimit"),
  ("predColimit", "PredLimit"),
  ("codirectedOrder", "DirectedOrder"),
  ("directedOrder", "CodirectedOrder"),
  ("galoisInsertion", "GaloisCoinsertion"),
  ("galoisCoinsertion", "GaloisInsertion"),
  ("leftOrdContinuous", "RightOrdContinuous"),
  ("rightOrdContinuous", "LeftOrdContinuous"),
  ("bihimp", "SymmDiff"),
  ("symmDiff", "Bihimp"),
  ("isRightContinuous", "IsLeftContinuous"),
  ("isLeftContinuous", "IsRightContinuous"),
  ("isCadlag", "IsCaglad"),
  ("isCaglad", "IsCadlag"),

  -- Revert translations if they should not happen in certain word combinations:
  ("neTop", "NeBot"),
  ("decidableSucc", "DecidablePred"),
  ("ofSucc", "OfPred"),
  ("maximalAxioms", "MinimalAxioms"),
]

@[inherit_doc GuessName.GuessNameExt]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDual/Variant37ff575c5f7ac150ac4b23ddb17663aae711ce7b7195180666854abef0caa935.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDual/Variant37ff575c5f7ac150ac4b23ddb17663aae711ce7b7195180666854abef0caa935.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b68c2682ae9fb1358b1193f36d1667915d473d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
