# HandleOverlapState.insertSurrounding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d72072683a950744f6671f360cdb4f882225f6c234be47891ddb72ecba0ffcac",
  "kind": "def",
  "lexical_name": "HandleOverlapState.insertSurrounding",
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
  "slug": "handleoverlapstate-insertsurrounding--96236d1c7071d3006eeb839b",
  "source": {
    "blob": "d957c35cbcf9ee6f6c36ed5d7d10aa34b38aac70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantd8621f2c5c08811d64abc7372abd4cd1f9e9e5f09f03fe38c5b9c037ca47c037.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96236d1c7071d3006eeb839b865b8754effaa3249b681328cb907b3fba70b941",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantd8621f2c5c08811d64abc7372abd4cd1f9e9e5f09f03fe38c5b9c037ca47c037.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d72072683a950744f6671f360cdb4f882225f6c234be47891ddb72ecba0ffcac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def HandleOverlapState.insertSurrounding
    (st : HandleOverlapState) (s : AbsoluteLspSemanticToken) : HandleOverlapState :=
  { st with surrounding := go st.surrounding }
where
  go
    | [] => [s]
    | x :: xs =>
      if s.tailPos < x.tailPos then s :: x :: xs else x :: go xs

/--
Handles state transitions that are not due to a new token. If `nextToken?` is `none`, then there are
no more tokens to process, so all remaining transitions occur. If it is `some t`, then state
transitions only occur for token boundaries less than the `t`'s start.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantd8621f2c5c08811d64abc7372abd4cd1f9e9e5f09f03fe38c5b9c037ca47c037.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantd8621f2c5c08811d64abc7372abd4cd1f9e9e5f09f03fe38c5b9c037ca47c037.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d957c35cbcf9ee6f6c36ed5d7d10aa34b38aac70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
