# require!

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac779b5a69a33a044a442015d8121c7080eef14c06735bbaa7fd029e4c5f15d6",
  "kind": "def",
  "lexical_name": "require!",
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
  "slug": "require--bbae67e347cb2603b6c370b1",
  "source": {
    "blob": "1ed114227548a239dbfd53ed1d575436b953f746",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extensions/Variant1560fcd5ffe33ac7d0ac2e4470430d20f814fff53d516ea40596721ae5be5031.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbae67e347cb2603b6c370b1f672f97bf6192f7862087daa2c050eefc1f0f0c9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extensions/Variant1560fcd5ffe33ac7d0ac2e4470430d20f814fff53d516ea40596721ae5be5031.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac779b5a69a33a044a442015d8121c7080eef14c06735bbaa7fd029e4c5f15d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  def require! (requiredFlags : Array String) : Extension :=
    let findRequiredFlags cmd := requiredFlags.map (cmd.flag! ·)
    {
      extend := fun cmd =>
        let requiredFlags := findRequiredFlags cmd
        let newMetaFlags := cmd.flags.map fun flag =>
          if requiredFlags.find? (·.longName = flag.longName) |>.isSome then
            { flag with description := "[Required] " ++ flag.description }
          else
            flag
        cmd.update (flags := newMetaFlags)
      postprocess := fun cmd parsed => do
        if parsed.hasFlag "help" ∨ parsed.hasFlag "version" then
          return parsed
        let requiredFlags := findRequiredFlags cmd
        let missingFlags := Array.diffBy (·.longName) requiredFlags <| parsed.flags.map (·.flag.longName)
        if let some missingFlag ← pure <| missingFlags[0]? then
          throw s!"Missing required flag `--{missingFlag.longName}`."
        return parsed
    }
end Extensions

end Cli
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extensions/Variant1560fcd5ffe33ac7d0ac2e4470430d20f814fff53d516ea40596721ae5be5031.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extensions/Variant1560fcd5ffe33ac7d0ac2e4470430d20f814fff53d516ea40596721ae5be5031.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ed114227548a239dbfd53ed1d575436b953f746` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
