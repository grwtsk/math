# collectUsed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e830721fba4dda53803c096b1e5f3b73ea194461cdb2baed25e04b65865d8110",
  "kind": "def",
  "lexical_name": "collectUsed",
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
  "slug": "collectused--6f7a778b337281f31db98a75",
  "source": {
    "blob": "f320279c1b7f7081ea4c6739bbe50efe89916510",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectUsed/Variant13d4857d002134bff8ea3788177d5c2624d7d8e64e8ddc474b070fe9c45d3d6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f7a778b337281f31db98a75fda9131e55fddc9a08aeb8c21ec0319e5a0311c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectUsed/Variant13d4857d002134bff8ea3788177d5c2624d7d8e64e8ddc474b070fe9c45d3d6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e830721fba4dda53803c096b1e5f3b73ea194461cdb2baed25e04b65865d8110`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def collectUsed [Monad m] [MonadEnv m] [MonadError m] (constName : Name) :
    m (NameSet × NameSet) := do
  let env ← getEnv
  let mut s : CollectUsed.State := {}

  -- Collect constants used by statement
  let info ← getConstInfo constName
  for c in info.type.getUsedConstants do
    (_, s) := ((CollectUsed.collect c).run { env, root := constName }).run s
  let typeUsed := NameSet.ofArray s.used

  -- Collect constants used by proof
  (_, s) := ((CollectUsed.collect constName).run { env, root := constName }).run s
  let valueUsed := NameSet.ofArray s.used

  return (typeUsed, valueUsed \ typeUsed.erase ``sorryAx)

end Architect
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectUsed/Variant13d4857d002134bff8ea3788177d5c2624d7d8e64e8ddc474b070fe9c45d3d6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectUsed/Variant13d4857d002134bff8ea3788177d5c2624d7d8e64e8ddc474b070fe9c45d3d6d.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f320279c1b7f7081ea4c6739bbe50efe89916510` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
