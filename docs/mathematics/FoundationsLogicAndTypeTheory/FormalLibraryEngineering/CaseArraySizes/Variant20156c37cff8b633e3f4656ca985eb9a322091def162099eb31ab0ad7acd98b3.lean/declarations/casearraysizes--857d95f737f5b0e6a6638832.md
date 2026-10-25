# caseArraySizes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ace1865d0b79c219c1fad1232dad411b7d9573fed3d5304d3723caf8da8b97d",
  "kind": "def",
  "lexical_name": "caseArraySizes",
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
  "slug": "casearraysizes--857d95f737f5b0e6a6638832",
  "source": {
    "blob": "e189e1e7da65584024a8887b4b9dbde379a3cf41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant20156c37cff8b633e3f4656ca985eb9a322091def162099eb31ab0ad7acd98b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:857d95f737f5b0e6a6638832fd47f8ccf9c5ce506f403129d9f5e512bf1a02dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant20156c37cff8b633e3f4656ca985eb9a322091def162099eb31ab0ad7acd98b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ace1865d0b79c219c1fad1232dad411b7d9573fed3d5304d3723caf8da8b97d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def caseArraySizes (mvarId : MVarId) (fvarId : FVarId) (sizes : Array Nat) (xNamePrefix := `x) (hNamePrefix := `h) : MetaM (Array CaseArraySizesSubgoal) :=
  mvarId.withContext do
    let a := mkFVar fvarId
    let aSize ← mkAppM `Array.size #[a]
    let mvarId ← mvarId.assertExt `aSize (mkConst `Nat) aSize
    let (aSizeFVarId, mvarId) ← mvarId.intro1
    let (hEq, mvarId) ← mvarId.intro1
    let subgoals ← caseValues mvarId aSizeFVarId (sizes.map mkRawNatLit) hNamePrefix
    subgoals.mapIdxM fun i subgoal => do
      let subst  := subgoal.subst
      let mvarId := subgoal.mvarId
      if h : i < sizes.size then
        let hEqSz  := (subst.get hEq).fvarId!
        let n := sizes[i]
        mvarId.withContext do
          let hEqSzSymm ← mkEqSymm (mkFVar hEqSz)
          let mvarId ← introArrayLit mvarId a n xNamePrefix hEqSzSymm
          let (xs, mvarId)  ← mvarId.introN n
          let (hEqLit, mvarId) ← mvarId.intro1
          let mvarId ← mvarId.clear hEqSz
          let (subst, mvarId) ← substCore mvarId hEqLit (symm := false) subst
          pure { mvarId := mvarId, elems := xs, subst := subst }
      else
        let (subst, mvarId) ← substCore mvarId hEq (symm := false) subst
        let diseqs := subgoal.newHs.map fun fvarId => (subst.get fvarId).fvarId!
        pure { mvarId := mvarId, diseqs := diseqs, subst := subst }

end Lean.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant20156c37cff8b633e3f4656ca985eb9a322091def162099eb31ab0ad7acd98b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant20156c37cff8b633e3f4656ca985eb9a322091def162099eb31ab0ad7acd98b3.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e189e1e7da65584024a8887b4b9dbde379a3cf41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
