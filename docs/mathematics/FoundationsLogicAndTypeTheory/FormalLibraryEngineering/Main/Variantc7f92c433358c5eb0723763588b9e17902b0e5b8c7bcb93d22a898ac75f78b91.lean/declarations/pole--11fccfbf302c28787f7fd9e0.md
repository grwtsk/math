# pole

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1a4a239b063129a23b6ecd3dc438869f3df94b0b284ca24cb384bf8d358eacd",
  "kind": "def",
  "lexical_name": "pole",
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
  "slug": "pole--11fccfbf302c28787f7fd9e0",
  "source": {
    "blob": "f0f43f4900384e8726fdbd00717ccfe9e9ef347f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 177,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantc7f92c433358c5eb0723763588b9e17902b0e5b8c7bcb93d22a898ac75f78b91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11fccfbf302c28787f7fd9e0f6c2a2d7b4b1ca9720e38d0ffa119f2e7bb9e514",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantc7f92c433358c5eb0723763588b9e17902b0e5b8c7bcb93d22a898ac75f78b91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1a4a239b063129a23b6ecd3dc438869f3df94b0b284ca24cb384bf8d358eacd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pole : Cmd := `[Cli|
  pole VIA longestPoleCLI; ["0.0.1"]
  "Calculate the longest pole for building Mathlib (or downstream projects).\n" ++
  "Use as `lake exe pole` or `lake exe pole --to MyProject.MyFile`.\n\n" ++
  "Prints a sequence of imports starting at the target.\n" ++
  "For each file, prints the cumulative instructions (in billions)\n" ++
  "assuming infinite parallelism, and the speed-up factor over sequential processing."

  FLAGS:
    to : ModuleName;      "Calculate the longest pole to the specified module."
    loc;                  "Use lines of code instead of speedcenter instruction counts."
]

/-- `lake exe pole` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantc7f92c433358c5eb0723763588b9e17902b0e5b8c7bcb93d22a898ac75f78b91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantc7f92c433358c5eb0723763588b9e17902b0e5b8c7bcb93d22a898ac75f78b91.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0f43f4900384e8726fdbd00717ccfe9e9ef347f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
