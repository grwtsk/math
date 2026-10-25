# mkAll

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5119361fd00fef8192c246ba602ec3d14fbd64f0fa0680e573505030dd49331",
  "kind": "def",
  "lexical_name": "mkAll",
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
  "slug": "mkall--ae3c9070e67e0edbc69fe64b",
  "source": {
    "blob": "ae79948610542fbf00e7db8d2879e271d8e0df74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkAll/Variant184c5a1b06ad122cd1c01bce2e8e27344dd871385da23b3af1d3ef1f5e8df354.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae3c9070e67e0edbc69fe64b4c9d65fd07b9a0a246c02b339fe40da3e39a61a0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkAll/Variant184c5a1b06ad122cd1c01bce2e8e27344dd871385da23b3af1d3ef1f5e8df354.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5119361fd00fef8192c246ba602ec3d14fbd64f0fa0680e573505030dd49331`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkAll : Cmd := `[Cli|
  mk_all VIA mkAllCLI; ["0.0.1"]
  "Generate a file importing all the files of a Lean folder. \
   By default, it generates the files for the Lean libraries of the package.\
   In the case of `Mathlib`, it removes the libraries `Cache` and `LongestPole`\
   and it adds `Mathlib/Tactic`. \
   If you are working in a project downstream of mathlib, use `lake exe mk_all --lib MyProject`."

  FLAGS:
    lib : String; "Create a folder importing all Lean files from the specified library/subfolder."
    git;          "Use the folder content information from git."
    check;        "Only check if the files are up-to-date; print an error if not"
]

/-- The entrypoint to the `lake exe mk_all` command. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkAll/Variant184c5a1b06ad122cd1c01bce2e8e27344dd871385da23b3af1d3ef1f5e8df354.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkAll/Variant184c5a1b06ad122cd1c01bce2e8e27344dd871385da23b3af1d3ef1f5e8df354.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae79948610542fbf00e7db8d2879e271d8e0df74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
