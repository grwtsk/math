# leftRightMeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85aad9e378db1ab91a3c983163acd146c08a09312adf83f3066c43c758a937eb",
  "kind": "def",
  "lexical_name": "leftRightMeta",
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
  "slug": "leftrightmeta--bffad9bd0058c0156c0f496c",
  "source": {
    "blob": "c545efd6319df6d291c3930be98eed9d36b64e9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeftRight/Variant573593868169e900379d9611f763fa3a3a54bc4190f05063a2e0964b92530098.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bffad9bd0058c0156c0f496ce26b88e4d60ad6e75cefd9a09ff8fef7e04d9bb0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeftRight/Variant573593868169e900379d9611f763fa3a3a54bc4190f05063a2e0964b92530098.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85aad9e378db1ab91a3c983163acd146c08a09312adf83f3066c43c758a937eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leftRightMeta (name : Name) (idx max : Nat) (goal : MVarId) : MetaM (List MVarId) := do
  goal.withContext do
    goal.checkNotAssigned name
    let target ← goal.getType'
    matchConstInduct target.getAppFn
      (fun _ ↦ throwTacticEx `constructor goal "target is not an inductive datatype")
      fun ival us ↦ do
        unless ival.ctors.length == max do
          throwTacticEx `constructor goal
            s!"{name} target applies for inductive types with exactly two constructors"
        let ctor := ival.ctors[idx]!
        goal.apply <| mkConst ctor us

end LeftRight

open LeftRight

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeftRight/Variant573593868169e900379d9611f763fa3a3a54bc4190f05063a2e0964b92530098.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeftRight/Variant573593868169e900379d9611f763fa3a3a54bc4190f05063a2e0964b92530098.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c545efd6319df6d291c3930be98eed9d36b64e9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
