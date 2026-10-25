# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:249238f23370f689c34f9090cfbcf147faa40db90626ba5021a722a491de65fc",
  "kind": "elab_rules",
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
  "slug": "elab-rules--1da009ee8f199956dbeecb45",
  "source": {
    "blob": "d48e67f883309cb4b141cc044e62704d95b3251f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransImports/Variant499cb2e59fe3d57f57c12f2d6d11664a3f93def329851134da84ce130aba927b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1da009ee8f199956dbeecb45f395e02c809040b9284ce40aa0c0ac375d589ee8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransImports/Variant499cb2e59fe3d57f57c12f2d6d11664a3f93def329851134da84ce130aba927b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:249238f23370f689c34f9090cfbcf147faa40db90626ba5021a722a491de65fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : command
| `(command| #trans_imports $(stx)? $[at_most $le:num]?) => do
  let imports := (← getEnv).allImportedModuleNames
  let currMod := if let mod@(.str _ _) := ← getMainModule then m!"'{mod}' has " else ""
  let rest := match stx with
      | none => m!""
      | some str =>
        let imps := imports.filterMap fun (i : Name) =>
          if i.toString.startsWith str.getString then some i else none
        m!"\n\n{imps.size} starting with {str}:\n{imps.qsort (·.toString < ·.toString)}"
  match le with
    | none => logInfo m!"{currMod}{imports.size} transitive imports{rest}"
    | some bd =>
      if imports.size ≤ bd.getNat then
        logInfo m!"{currMod}at most {bd} transitive imports{rest}"
      else
        logWarningAt bd
          m!"{currMod}{imports.size} transitive imports, exceeding the expected bound of {bd}{rest}"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransImports/Variant499cb2e59fe3d57f57c12f2d6d11664a3f93def329851134da84ce130aba927b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransImports/Variant499cb2e59fe3d57f57c12f2d6d11664a3f93def329851134da84ce130aba927b.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d48e67f883309cb4b141cc044e62704d95b3251f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
