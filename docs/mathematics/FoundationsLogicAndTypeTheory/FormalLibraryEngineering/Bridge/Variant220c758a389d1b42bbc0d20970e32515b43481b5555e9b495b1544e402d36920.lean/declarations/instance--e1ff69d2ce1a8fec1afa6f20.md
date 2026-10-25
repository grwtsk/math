# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a90e8f0afd50a896c5dc89fb69f46e0592310201dc846f959b6ada08cdc03ee0",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--e1ff69d2ce1a8fec1afa6f20",
  "source": {
    "blob": "5184af2a459a9ee0e3b81eef1221c21e11ccc4c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 436,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant220c758a389d1b42bbc0d20970e32515b43481b5555e9b495b1544e402d36920.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1ff69d2ce1a8fec1afa6f20a04e373d3432bdb6bfbfc2738623dcf2e66c176b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant220c758a389d1b42bbc0d20970e32515b43481b5555e9b495b1544e402d36920.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a90e8f0afd50a896c5dc89fb69f46e0592310201dc846f959b6ada08cdc03ee0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : FromJson VerifyAdaptiveRequest where
  fromJson? j := do
    let expr ← j.getObjValAs? LExpr "expr"
    let boxJson ← j.getObjVal? "box"
    let boxArr ← match boxJson with
      | Json.arr arr => arr.mapM (FromJson.fromJson? (α := RawInterval))
      | _ => throw "box must be an array"
    let bound ← j.getObjValAs? RawRat "bound"
    let isUpperBound ← j.getObjValAs? Bool "isUpperBound"
    let maxIters := (j.getObjValAs? Nat "maxIters").toOption.getD 1000
    let tolerance := (j.getObjValAs? RawRat "tolerance").toOption.getD { n := 1, d := 1000 }
    let taylorDepth := (j.getObjValAs? Nat "taylorDepth").toOption.getD 10
    return { expr, box := boxArr, bound, isUpperBound, maxIters, tolerance, taylorDepth }

/-- Request for high-performance Dyadic interval evaluation -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant220c758a389d1b42bbc0d20970e32515b43481b5555e9b495b1544e402d36920.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant220c758a389d1b42bbc0d20970e32515b43481b5555e9b495b1544e402d36920.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5184af2a459a9ee0e3b81eef1221c21e11ccc4c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
