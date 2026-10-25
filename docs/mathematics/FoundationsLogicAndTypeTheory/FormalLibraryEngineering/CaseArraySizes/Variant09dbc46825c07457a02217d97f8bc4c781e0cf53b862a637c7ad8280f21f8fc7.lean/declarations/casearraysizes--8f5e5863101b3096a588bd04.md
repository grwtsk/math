# caseArraySizes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c30dc1624b74ac7905a6ef667c4095f2df6f45175db048ee04617f0193150204",
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
  "slug": "casearraysizes--8f5e5863101b3096a588bd04",
  "source": {
    "blob": "7d1a8b5961b9ab57e9cb07d4abb69bcf739ebd88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant09dbc46825c07457a02217d97f8bc4c781e0cf53b862a637c7ad8280f21f8fc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f5e5863101b3096a588bd0492736e37db90bb2ce98d7f98ac2b48c8c740b843",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant09dbc46825c07457a02217d97f8bc4c781e0cf53b862a637c7ad8280f21f8fc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c30dc1624b74ac7905a6ef667c4095f2df6f45175db048ee04617f0193150204`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–100.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant09dbc46825c07457a02217d97f8bc4c781e0cf53b862a637c7ad8280f21f8fc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseArraySizes/Variant09dbc46825c07457a02217d97f8bc4c781e0cf53b862a637c7ad8280f21f8fc7.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d1a8b5961b9ab57e9cb07d4abb69bcf739ebd88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
