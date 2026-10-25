# graph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92db385be4707c0ed06fe65df2de74e82540e166ca5e152dd1c6b2722edf8119",
  "kind": "def",
  "lexical_name": "graph",
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
  "slug": "graph--4846b0df0c8d9ea688bd41e1",
  "source": {
    "blob": "3f90406cb9cc2874df944074e87d466dab8955e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 174,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MainGraph/Variant799d2e8d5d74250ef824e236c6e89afa4ed34d1abdec3a2f498b55b147440933.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4846b0df0c8d9ea688bd41e1ef0568558f64bfecbbfd7a96994d806561f69921",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MainGraph/Variant799d2e8d5d74250ef824e236c6e89afa4ed34d1abdec3a2f498b55b147440933.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92db385be4707c0ed06fe65df2de74e82540e166ca5e152dd1c6b2722edf8119`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def graph : Cmd := `[Cli|
  graph VIA importGraphCLI; ["0.0.3"]
  "Generate representations of a Lean import graph. \
   By default generates the import graph up to `Mathlib`. \
   If you are working in a downstream project, use `lake exe graph --to MyProject`."

  FLAGS:
    "show-transitive";         "Show transitively redundant edges."
    "to" : Array ModuleName;   "Only show the upstream imports of the specified modules."
    "from" : Array ModuleName; "Only show the downstream dependencies of the specified modules."
    "exclude-meta";            "Exclude any files starting with `Mathlib.[Tactic|Lean|Util|Mathport]`."
    "include-direct";          "Include directly imported files from other libraries"
    "include-deps";            "Include used files from other libraries (not including Lean itself and `std`)"
    "include-std";             "Include used files from the Lean standard library (implies `--include-deps`)"
    "include-lean";            "Include used files from Lean itself (implies `--include-deps` and `--include-std`)"
    "mark-package";            "Visually highlight the package containing the first `--to` target (used in combination with some `--include-XXX`)."
    "mark-sorry";              "Visually highlight modules containing sorries."

  ARGS:
    ...outputs : String;  "Filename(s) for the output. \
      If none are specified, generates `import_graph.dot`. \
      Automatically chooses the format based on the file extension. \
      Currently supported formats are `.dot`, `.gexf`, `.html`, \
      and if you have `graphviz` installed then any supported output format is allowed."
]


/-- `lake exe graph` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MainGraph/Variant799d2e8d5d74250ef824e236c6e89afa4ed34d1abdec3a2f498b55b147440933.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MainGraph/Variant799d2e8d5d74250ef824e236c6e89afa4ed34d1abdec3a2f498b55b147440933.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f90406cb9cc2874df944074e87d466dab8955e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
