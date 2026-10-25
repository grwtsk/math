# foldlUtf8M

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6361fdcaf41b18cbe15f7c05b9a47a508aaf8efb6f355fc14fac3f0fff476524",
  "kind": "def",
  "lexical_name": "foldlUtf8M",
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
  "slug": "foldlutf8m--3e0aaf8d6c9479b81cf52dc2",
  "source": {
    "blob": "8489aa818e3c5383b88a54f49022a8730a30bb10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Url/Variantd488f55d930b4ff1ab1e29ee19e0f337735362e37894b6107e66b8175106d3db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e0aaf8d6c9479b81cf52dc28f31d2a52a5d8ecbed1f2b0f69b5b3476a205402",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Url/Variantd488f55d930b4ff1ab1e29ee19e0f337735362e37894b6107e66b8175106d3db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6361fdcaf41b18cbe15f7c05b9a47a508aaf8efb6f355fc14fac3f0fff476524`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[specialize] public def foldlUtf8M [Monad m] (c : Char) (f : σ → UInt8 → m σ) (init : σ) : m σ := do
  let s := init
  let v := c.val
  if v ≤ 0x7f then
    f s v.toUInt8
  else if v ≤ 0x7ff then
    let s ← f s <| (v >>>  6).toUInt8 &&& 0x1f ||| 0xc0
    let s ← f s <| v.toUInt8 &&& 0x3f ||| 0x80
    return s
  else if v ≤ 0xffff then
    let s ← f s <| (v >>> 12).toUInt8 &&& 0x0f ||| 0xe0
    let s ← f s <| (v >>>  6).toUInt8 &&& 0x3f ||| 0x80
    let s ← f s <| v.toUInt8 &&& 0x3f ||| 0x80
    return s
  else
    let s ← f s <| (v >>> 18).toUInt8 &&& 0x07 ||| 0xf0
    let s ← f s <| (v >>> 12).toUInt8 &&& 0x3f ||| 0x80
    let s ← f s <| (v >>>  6).toUInt8 &&& 0x3f ||| 0x80
    let s ← f s <| v.toUInt8 &&& 0x3f ||| 0x80
    return s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Url/Variantd488f55d930b4ff1ab1e29ee19e0f337735362e37894b6107e66b8175106d3db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Url/Variantd488f55d930b4ff1ab1e29ee19e0f337735362e37894b6107e66b8175106d3db.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8489aa818e3c5383b88a54f49022a8730a30bb10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
