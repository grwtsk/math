# Result.insertInArray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56256bdfc962b8a2a72936dd27e67aab4e1c72d43a9c12bd462508efad8d339a",
  "kind": "def",
  "lexical_name": "Result.insertInArray",
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
  "slug": "result-insertinarray--c933a472fd6ca5be00dc769d",
  "source": {
    "blob": "75247336c5b88ed0b15c64d8acb7ca3ba207634f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SectionState/Variantfcb1695d83a2fd395558870bba1ec46d42c44b12a017d46eaa6f61b87584e558.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c933a472fd6ca5be00dc769d175e6b53e7fa576ef08a80e5da39ea5f22236b97",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SectionState/Variantfcb1695d83a2fd395558870bba1ec46d42c44b12a017d46eaa6f61b87584e558.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56256bdfc962b8a2a72936dd27e67aab4e1c72d43a9c12bd462508efad8d339a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Result.insertInArray (res : Result α) (arr : Array (Result α)) (isDup : α → α → MetaM Bool) :
    MetaM (Array (Result α)) := do
  if let some idx ← findDuplicate res arr then
    if res < arr[idx]! then
      return (arr.modify idx ({ · with filtered := none })).binInsert (· < ·) res
    else
      return arr.binInsert (· < ·) { res with filtered := none }
  else
    return arr.binInsert (· < ·) res
where
  /-- Check if there is already a duplicate of `result` in `results`,
  for which both appear in the filtered view. -/
  findDuplicate (result : Result α) (results : Array (Result α)) : MetaM (Option Nat) := do
    unless result.filtered.isSome do
      return none
    results.findIdxM? fun res =>
      try
        pure res.filtered.isSome <&&> isDup res.key result.key
      catch _ =>
        pure false

/-- Insert `res` into the section state `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SectionState/Variantfcb1695d83a2fd395558870bba1ec46d42c44b12a017d46eaa6f61b87584e558.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SectionState/Variantfcb1695d83a2fd395558870bba1ec46d42c44b12a017d46eaa6f61b87584e558.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75247336c5b88ed0b15c64d8acb7ca3ba207634f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
