# parseLit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f30ccc39bc604027b1a26ff9b4db75b5633e2ad6a021c1998deb7fbbafa4d1e",
  "kind": "def",
  "lexical_name": "parseLit",
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
  "slug": "parselit--c3ad764267e365a3d181cac9",
  "source": {
    "blob": "0d506021748294d1cbdde16ad24e317ddd734158",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 161,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant14a27d543ae4812102c78fc1850c459b15e5ccb4fc15d3f83f850f7cc2fca0a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3ad764267e365a3d181cac954dc30b0e423b5c0e282235d1c9196fac28c948b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant14a27d543ae4812102c78fc1850c459b15e5ccb4fc15d3f83f850f7cc2fca0a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f30ccc39bc604027b1a26ff9b4db75b5633e2ad6a021c1998deb7fbbafa4d1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def parseLit : Parser Int := do
  go 0 0
where
  go (uidx : UInt64) (shift : UInt64) : Parser Int := do
    let uch ← any
    if shift == 28 && ((uch &&& ~~~15) != 0) then
      fail "Excessive literal"
    else if uch == 0 then
      fail "Invalid zero byte in literal"
    else
      let uidx := uidx ||| ((uch &&& 127).toUInt64 <<< shift)
      if uch &&& 128 == 0 then
        let idx := uidx >>> 1
        if (1 &&& uidx) != 0 then
          return (-(idx).toNat : Int)
        else
          return (idx.toNat : Int)
      else
        go uidx (shift + 7)

@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant14a27d543ae4812102c78fc1850c459b15e5ccb4fc15d3f83f850f7cc2fca0a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant14a27d543ae4812102c78fc1850c459b15e5ccb4fc15d3f83f850f7cc2fca0a0.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d506021748294d1cbdde16ad24e317ddd734158` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
