# initState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd5ff62baa5e64a1fbb3a9eaf8b9f945f0d4ac04d3f1b0e7c83174aa210befc1",
  "kind": "def",
  "lexical_name": "initState",
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
  "slug": "initstate--f44e0cc7a54a646b7257c3c0",
  "source": {
    "blob": "8172ff8af17f74f5200353af4c9fd8f4bcdfd0b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 70,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variantceb263203a2e44a1eb9a1f14defe30b9b516592d7f2aae2ff40598c0c354acfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f44e0cc7a54a646b7257c3c077eaccc20c9e5a76c3411361553bdd7c561fa256",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variantceb263203a2e44a1eb9a1f14defe30b9b516592d7f2aae2ff40598c0c354acfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd5ff62baa5e64a1fbb3a9eaf8b9f945f0d4ac04d3f1b0e7c83174aa210befc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def initState (env : Environment) (cliOptions : List String := []) : M Unit := do
  let mut recursorMap : NameMap NameSet := {}
  for (_, constInfo) in env.constants do
    if let .recInfo recVal := constInfo then
      for indName in recVal.all do
        recursorMap := recursorMap.alter indName <|
          fun
          | none => some <| NameSet.empty.insert recVal.name
          | some recNames => some <| recNames.insert recVal.name
  modify fun st => { st with
    exportMData   := cliOptions.any (· == "--export-mdata")
    exportUnsafe  := cliOptions.any (· == "--export-unsafe")
    ignoreMissing := cliOptions.any (· == "--ignore-missing")
    recursorMap
  }

/--
For a given primitive (name, level, expr) to be exported:
IFF it's been seen before, return its index within the export file
IFF it has not been seen before, add it to the cache, print it into the export, and return its cache index.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variantceb263203a2e44a1eb9a1f14defe30b9b516592d7f2aae2ff40598c0c354acfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variantceb263203a2e44a1eb9a1f14defe30b9b516592d7f2aae2ff40598c0c354acfa.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8172ff8af17f74f5200353af4c9fd8f4bcdfd0b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
