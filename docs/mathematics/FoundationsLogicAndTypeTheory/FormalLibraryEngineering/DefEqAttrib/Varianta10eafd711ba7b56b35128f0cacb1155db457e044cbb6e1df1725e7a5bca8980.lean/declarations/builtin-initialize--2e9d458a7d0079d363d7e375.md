# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:224aaaa5a46fe4160dc692f6d00a0020d3c381f79501edb71acadd03fe67a022",
  "kind": "builtin_initialize",
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
  "slug": "builtin-initialize--2e9d458a7d0079d363d7e375",
  "source": {
    "blob": "571240a5656393088d6ef0578b14d367b62cc861",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqAttrib/Varianta10eafd711ba7b56b35128f0cacb1155db457e044cbb6e1df1725e7a5bca8980.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e9d458a7d0079d363d7e375607a2da0d788bca69b77f285422acc2526091dac",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqAttrib/Varianta10eafd711ba7b56b35128f0cacb1155db457e044cbb6e1df1725e7a5bca8980.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:224aaaa5a46fe4160dc692f6d00a0020d3c381f79501edb71acadd03fe67a022`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize defeqAttr : TagAttribute ←
  registerTagAttribute `defeq "mark theorem as a definitional equality, to be used by `dsimp`"
    (validate := fun declName => do
      -- Validate via the same check as `@[backward_defeq]`, then maintain the invariant
      -- `defeq ⊆ backward_defeq` by also tagging `backward_defeq`.
      validateDefEqAttr declName
      backwardDefeqAttr.setTag declName)
    (applicationTime := .afterTypeChecking)
    (asyncMode := .async .mainEnv)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqAttrib/Varianta10eafd711ba7b56b35128f0cacb1155db457e044cbb6e1df1725e7a5bca8980.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqAttrib/Varianta10eafd711ba7b56b35128f0cacb1155db457e044cbb6e1df1725e7a5bca8980.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `571240a5656393088d6ef0578b14d367b62cc861` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
