# physicalReductionRowsChunk0009

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03301d953aaf21f4b5e501a6c8966a3028f203aa8f7e86c5c7cf9750fcdcb3e0",
  "kind": "def",
  "lexical_name": "physicalReductionRowsChunk0009",
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
  "slug": "physicalreductionrowschunk0009--a9705832010d72dbaafd8b0b",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140343,
    "line": 140276,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9705832010d72dbaafd8b0b6d3ca356ebe96b5a5d1401ea5913761ec02e99bb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03301d953aaf21f4b5e501a6c8966a3028f203aa8f7e86c5c7cf9750fcdcb3e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140276–140343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def physicalReductionRowsChunk0009 : List PhysicalReductionRow :=
[
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 3, branchCount := 3, folderRequired := true },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 14, branchCount := 14, folderRequired := true },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 2, branchCount := 2, folderRequired := true },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 6, branchCount := 6, folderRequired := true },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 2, branchCount := 2, folderRequired := true },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false }
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L140276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
