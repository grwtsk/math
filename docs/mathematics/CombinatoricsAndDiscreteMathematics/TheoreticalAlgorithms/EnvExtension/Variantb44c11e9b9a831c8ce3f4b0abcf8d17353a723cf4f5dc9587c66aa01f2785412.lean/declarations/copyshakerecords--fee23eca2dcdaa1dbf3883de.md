# copyShakeRecords

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79c262e6f81fb606107458edf2b8524ddddbea4543d84412273db405ace3aa9f",
  "kind": "def",
  "lexical_name": "copyShakeRecords",
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
  "slug": "copyshakerecords--fee23eca2dcdaa1dbf3883de",
  "source": {
    "blob": "54e50ed1ff3049557ebce4d8b8f83728e9a90198",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 195,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EnvExtension/Variantb44c11e9b9a831c8ce3f4b0abcf8d17353a723cf4f5dc9587c66aa01f2785412.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fee23eca2dcdaa1dbf3883dea6e4948215d932552ddd9864fdd77ae906b10b53",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EnvExtension/Variantb44c11e9b9a831c8ce3f4b0abcf8d17353a723cf4f5dc9587c66aa01f2785412.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79c262e6f81fb606107458edf2b8524ddddbea4543d84412273db405ace3aa9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] public def copyShakeRecords (src dest : Environment)
    (srcAsyncMode := AsyncMode.sync)
    (destAsyncMode := AsyncMode.sync)
    (destAsyncDecl := Name.anonymous) : Environment :=
  copyExtraModUses src dest
    (srcAsyncMode  := srcAsyncMode)
    (destAsyncMode := destAsyncMode)
    (destAsyncDecl := destAsyncDecl)
  |> copyIndirectModUses src
    (srcAsyncMode  := srcAsyncMode)
    (destAsyncMode := destAsyncMode)
    (destAsyncDecl := destAsyncDecl)
  |> copyExtraRevModUse src
    (srcAsyncMode  := srcAsyncMode)
    (destAsyncMode := destAsyncMode)
    (destAsyncDecl := destAsyncDecl)

/-- Resets the shake extension entries (the records from the current module), then restores them
after running the given action, merging any new records into the new ones. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EnvExtension/Variantb44c11e9b9a831c8ce3f4b0abcf8d17353a723cf4f5dc9587c66aa01f2785412.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EnvExtension/Variantb44c11e9b9a831c8ce3f4b0abcf8d17353a723cf4f5dc9587c66aa01f2785412.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54e50ed1ff3049557ebce4d8b8f83728e9a90198` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
