# readMultiFlag?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a73358a6b173cc6f025127d92c3f9b7155a7cffc3134d6e46dd3490c949ad06",
  "kind": "def",
  "lexical_name": "readMultiFlag?",
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
  "slug": "readmultiflag--68b08f375b9f74f26f4c876d",
  "source": {
    "blob": "5cbf904d5d87c166d8bfcf8b166c9249abf5edab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1429,
    "line": 1398,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8feca42a024562cd95361df4b330a65e46239d73ceaacc9c2ed23cb415a2f517.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68b08f375b9f74f26f4c876d82be9456275ec2f13a3a6cfa7cf3fcd7bdc00eb7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8feca42a024562cd95361df4b330a65e46239d73ceaacc9c2ed23cb415a2f517.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a73358a6b173cc6f025127d92c3f9b7155a7cffc3134d6e46dd3490c949ad06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1398–1429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
    private partial def readMultiFlag? : ParseM (Option (Array Parsed.Flag)) := do
      let some (flagContent, true) ← readFlagContent?
        | return none
      let some (parsedFlags : Array (String × Parsed.Flag)) ← loop flagContent ∅
        | return none
      for (inputFlagName, parsedFlag) in parsedFlags do
        ensureFlagUnique parsedFlag.flag ⟨inputFlagName, true⟩
      skip
      return some <| parsedFlags.map (·.2)
    where
      loop (flagContent : String) (matched : Std.TreeSet String compare)
        : ParseM (Option (Array (String × Parsed.Flag))) := do
        -- this is not tail recursive, but that's fine: `loop` will only recurse further if the corresponding
        -- flag has not been matched yet, meaning that this can only overflow if the application has an
        -- astronomical amount of short flags.
        if flagContent = "" then
          return some #[]
        let parsedFlagsCandidates : Array (Array (String × Parsed.Flag)) ←
          (← cmd).meta.flags.filter (·.isParamless)
            |>.filter               (·.hasShortName)
            |>.filter               (·.shortName!.isPrefixOf flagContent)
            |>.filter               (¬ matched.contains ·.shortName!)
            |>.qsort                (·.shortName!.length > ·.shortName!.length)
            |>.filterMapM fun flag => do
              let inputFlagName := flagContent.take flag.shortName!.length
              let restContent   := flagContent.drop flag.shortName!.length
              let newMatched    := matched.insert flag.shortName!
              let some tail ← loop restContent.copy newMatched
                | return none
              return some <| #[(inputFlagName.copy, ⟨flag, ""⟩)] ++ tail
        return parsedFlagsCandidates[0]?

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8feca42a024562cd95361df4b330a65e46239d73ceaacc9c2ed23cb415a2f517.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8feca42a024562cd95361df4b330a65e46239d73ceaacc9c2ed23cb415a2f517.lean#L1398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cbf904d5d87c166d8bfcf8b166c9249abf5edab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
