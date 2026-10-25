# checkFunInfoCache

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6930875edb85147110665b3101b419a3e18bd013ae727c0eaa74eb2ad3632c13",
  "kind": "def",
  "lexical_name": "checkFunInfoCache",
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
  "slug": "checkfuninfocache--2a1859206c40e31e2f4b7135",
  "source": {
    "blob": "44ee46ca1761fba1e1d1380294b1762d8039ed49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variant014a95c19bc0728176c34b594bd2691d1bfcd3631457be72a8f463ba7f6293b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a1859206c40e31e2f4b7135bb9eb29f3be71e9388c67878a8702be553b05ce0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variant014a95c19bc0728176c34b594bd2691d1bfcd3631457be72a8f463ba7f6293b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6930875edb85147110665b3101b419a3e18bd013ae727c0eaa74eb2ad3632c13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] private def checkFunInfoCache (fn : Expr) (maxArgs? : Option Nat) (k : MetaM FunInfo) : MetaM FunInfo := do
  let key ← mkInfoCacheKey fn maxArgs?
  match (← get).cache.funInfo.find? key with
  | some finfo => return finfo
  | none       => do
    let finfo ← match fn with
      | .const c ls =>
        -- If `fn` is only a single constant, we can share the result with any thread that can see `c`
        -- as well.
        if ls.any (·.hasMVar) then
          -- However, if any level mvars are present, other threads should not be able to encounter
          -- the same `fn` and sharing would just waste time.
          k
        else
          realizeValue c { c, ls, maxArgs? : FunInfoEnvCacheKey } k
      | _ => k
    modify fun s => { s with cache := { s.cache with funInfo := s.cache.funInfo.insert key finfo } }
    return finfo

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variant014a95c19bc0728176c34b594bd2691d1bfcd3631457be72a8f463ba7f6293b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variant014a95c19bc0728176c34b594bd2691d1bfcd3631457be72a8f463ba7f6293b7.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44ee46ca1761fba1e1d1380294b1762d8039ed49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
