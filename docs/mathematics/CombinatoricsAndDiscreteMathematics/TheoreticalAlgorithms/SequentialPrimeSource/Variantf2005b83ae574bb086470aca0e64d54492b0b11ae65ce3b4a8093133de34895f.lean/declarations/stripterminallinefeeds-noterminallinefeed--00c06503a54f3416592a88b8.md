# stripTerminalLineFeeds_noTerminalLineFeed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e411d4c2-9f35-2c0e-a559-77fefad50e3d",
  "kind": "theorem",
  "lexical_name": "stripTerminalLineFeeds_noTerminalLineFeed",
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
  "slug": "stripterminallinefeeds-noterminallinefeed--00c06503a54f3416592a88b8",
  "source": {
    "blob": "cb43f6e67ffffc02ed4b6b550c69a44a190f5890",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 90,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SequentialPrimeSource/Variantf2005b83ae574bb086470aca0e64d54492b0b11ae65ce3b4a8093133de34895f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00c06503a54f3416592a88b84dd66579cb5e4b2add952c69efbf8dca0cead4e1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SequentialPrimeSource/Variantf2005b83ae574bb086470aca0e64d54492b0b11ae65ce3b4a8093133de34895f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e411d4c2-9f35-2c0e-a559-77fefad50e3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stripTerminalLineFeeds_noTerminalLineFeed
    (characters : List Char) :
    (stripTerminalLineFeeds characters).getLast? ≠ some '\n' := by
  induction characters with
  | nil => simp [stripTerminalLineFeeds]
  | cons head tail inductionHypothesis =>
      simp only [stripTerminalLineFeeds]
      split
      · split
        · simp
        · rename_i notLineFeed
          simp [notLineFeed]
      · rename_i first rest result
        simpa [result] using inductionHypothesis

/--
The exact documentation canonicalizer: normalize line endings, remove all
terminal LFs, and append exactly one LF.  `String` supplies UTF-8 encoding
without a BOM through `String.toUTF8`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SequentialPrimeSource/Variantf2005b83ae574bb086470aca0e64d54492b0b11ae65ce3b4a8093133de34895f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SequentialPrimeSource/Variantf2005b83ae574bb086470aca0e64d54492b0b11ae65ce3b4a8093133de34895f.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb43f6e67ffffc02ed4b6b550c69a44a190f5890` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
