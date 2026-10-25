# FixedParamPerms.fixedArePrefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61978a8db98019e1d9844943456cc21499d7207fd5a535f1fd1f74bf1dbcc643",
  "kind": "def",
  "lexical_name": "FixedParamPerms.fixedArePrefix",
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
  "slug": "fixedparamperms-fixedareprefix--b5003b6333ea0e5b0eecff10",
  "source": {
    "blob": "afeecda5628ed5e7fd48e4a45c2eabe4757a8f96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 440,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variantf05853f5f8061599fa99e65336334b4d5205b21d4dee8a85f00a4423a30fb53c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5003b6333ea0e5b0eecff10f8d4e96ea40930483ba9eeadf0e817553d7d310e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variantf05853f5f8061599fa99e65336334b4d5205b21d4dee8a85f00a4423a30fb53c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61978a8db98019e1d9844943456cc21499d7207fd5a535f1fd1f74bf1dbcc643`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 440–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FixedParamPerms.fixedArePrefix (fixedParamPerms : FixedParamPerms) : Bool :=
  fixedParamPerms.perms.all fun paramInfos =>
    paramInfos ==
      (Array.range fixedParamPerms.numFixed).map Option.some ++
      .replicate (paramInfos.size - fixedParamPerms.numFixed) .none

/--
If `xs` are the fixed parameters that are in scope, and `toErase` are, for each function, the
positions of arguments that must no longer be fixed parameters, then this function splits partitions
`xs` into those to keep and those to erase, and updates `FixedParams` accordingly.

This is used in structural recursion, where we may discover that some fixed parameters are actually
indices and need to be treated as varying, including all parameters that depend on them.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variantf05853f5f8061599fa99e65336334b4d5205b21d4dee8a85f00a4423a30fb53c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variantf05853f5f8061599fa99e65336334b4d5205b21d4dee8a85f00a4423a30fb53c.lean#L440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afeecda5628ed5e7fd48e4a45c2eabe4757a8f96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
