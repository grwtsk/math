# conversionFolders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ebd5f280f3faf79d6734675e2a1215f961553e0b524cbf090f29ccc2c36cc31",
  "kind": "def",
  "lexical_name": "conversionFolders",
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
  "slug": "conversionfolders--8efaeb29c0fc06d19c92c75d",
  "source": {
    "blob": "6f654d7836fbbcd9327d6a7073984014f21903f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 602,
    "line": 586,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConstantFold/Variantde3e366f02ffa802243ae4685b90a5f74420cbbb2f2b1284fa8e3b2e9559182b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8efaeb29c0fc06d19c92c75db947516440e485076640e9943b016c8830febdd7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConstantFold/Variantde3e366f02ffa802243ae4685b90a5f74420cbbb2f2b1284fa8e3b2e9559182b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ebd5f280f3faf79d6734675e2a1215f961553e0b524cbf090f29ccc2c36cc31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 586–602.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def conversionFolders : List (Name × Folder) := [
  (``UInt8.ofNat, Folder.ofNat (fun v => .uint8 (UInt8.ofNat v))),
  (``UInt16.ofNat, Folder.ofNat (fun v => .uint16 (UInt16.ofNat v))),
  (``UInt32.ofNat, Folder.ofNat (fun v => .uint32 (UInt32.ofNat v))),
  (``UInt64.ofNat, Folder.ofNat (fun v => .uint64 (UInt64.ofNat v))),
  (``USize.ofNat, Folder.ofNat (fun v => .usize (UInt64.ofNat v))),
  (``Char.ofNat, Folder.ofNat (fun v => .uint32 (Char.ofNat v).val)),
  (``UInt8.toNat, Folder.toNat),
  (``UInt16.toNat, Folder.toNat),
  (``UInt32.toNat, Folder.toNat),
  (``UInt64.toNat, Folder.toNat),
  (``USize.toNat, Folder.toNat),
]

/--
All string folders.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConstantFold/Variantde3e366f02ffa802243ae4685b90a5f74420cbbb2f2b1284fa8e3b2e9559182b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConstantFold/Variantde3e366f02ffa802243ae4685b90a5f74420cbbb2f2b1284fa8e3b2e9559182b.lean#L586).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f654d7836fbbcd9327d6a7073984014f21903f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
