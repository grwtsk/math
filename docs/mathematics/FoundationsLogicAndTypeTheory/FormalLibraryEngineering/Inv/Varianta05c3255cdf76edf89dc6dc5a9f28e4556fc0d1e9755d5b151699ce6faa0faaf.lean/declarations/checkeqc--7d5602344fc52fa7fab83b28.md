# checkEqc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:324b2c4a3b316c39e6e7a11f5a1d656c369cc73aac2a6c48443c9daabd29b4bb",
  "kind": "def",
  "lexical_name": "checkEqc",
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
  "slug": "checkeqc--7d5602344fc52fa7fab83b28",
  "source": {
    "blob": "c3fbd1f32fea23627163e6c5e23b6097dcf80637",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 16,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta05c3255cdf76edf89dc6dc5a9f28e4556fc0d1e9755d5b151699ce6faa0faaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d5602344fc52fa7fab83b285f834099303e96306a7357dbb83e939d5afa8fdf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta05c3255cdf76edf89dc6dc5a9f28e4556fc0d1e9755d5b151699ce6faa0faaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:324b2c4a3b316c39e6e7a11f5a1d656c369cc73aac2a6c48443c9daabd29b4bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkEqc (root : ENode) : GoalM Unit := do
  let mut size := 0
  let mut curr := root.self
  repeat
    size := size + 1
    -- The root of `curr` must be `root`
    assert! isSameExpr (← getRoot curr) root.self
    -- Check congruence root
    if curr.isApp then
      if let some { e } := (← get).congrTable.find? { e := curr } then
        if (← hasSameType e.getAppFn curr.getAppFn) then
          assert! isSameExpr e (← getCongrRoot curr)
      else
        assert! (← isCongrRoot curr)
    -- If the equivalence class does not have HEq proofs, then the types must be definitionally equal.
    unless root.heqProofs do
      assert! (← hasSameType curr root.self)
    -- Starting at `curr`, following the `target?` field leads to `root`.
    let mut n := curr
    repeat
      if let some target ← getTarget? n then
        n := target
      else
        break
    assert! isSameExpr n root.self
    -- Go to next element
    curr ← getNext curr
    if isSameExpr root.self curr then
      break
  -- The size of the equivalence class is correct.
  assert! root.size == size

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta05c3255cdf76edf89dc6dc5a9f28e4556fc0d1e9755d5b151699ce6faa0faaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta05c3255cdf76edf89dc6dc5a9f28e4556fc0d1e9755d5b151699ce6faa0faaf.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3fbd1f32fea23627163e6c5e23b6097dcf80637` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
