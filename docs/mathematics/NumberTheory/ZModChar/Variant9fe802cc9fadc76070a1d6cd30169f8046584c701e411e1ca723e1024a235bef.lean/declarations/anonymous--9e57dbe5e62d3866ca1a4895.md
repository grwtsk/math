# χ₈

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e33a94df27ababb6bb209887db080b513ad3fab237fbf638bea31f28a59e3cc",
  "kind": "def",
  "lexical_name": "χ₈",
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
  "slug": "anonymous--9e57dbe5e62d3866ca1a4895",
  "source": {
    "blob": "d420847c09e254fd07ab24c4d19183bc4e48b27b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 115,
    "path": "GRWTSK/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e57dbe5e62d3866ca1a4895ea14688ba5043c0e0ac2d07dcdb03b0ce39d4fea",
  "verification": {
    "reference": "docs/verification/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e33a94df27ababb6bb209887db080b513ad3fab237fbf638bea31f28a59e3cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def χ₈ : MulChar (ZMod 8) ℤ where
  toFun a :=
    match a with
    | 0 | 2 | 4 | 6 => 0
    | 1 | 7 => 1
    | 3 | 5 => -1
  map_one' := rfl
  map_mul' := by decide
  map_nonunit' := by decide

/-- `χ₈` takes values in `{0, 1, -1}` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d420847c09e254fd07ab24c4d19183bc4e48b27b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
