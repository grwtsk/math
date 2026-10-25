# caseValues

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:986731b4608967976360c1d34b11932888435525244ee9ebe26ff50bd0b1535d",
  "kind": "def",
  "lexical_name": "caseValues",
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
  "slug": "casevalues--b4dabd1021df52438829c09d",
  "source": {
    "blob": "9e69acf23e5ce0e7d04b4ed040e3216fb54c45bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseValues/Variant27fe67fa5e57a8ae0cb4f6443084130d4360933d1e9a53462bb216b23144e8be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4dabd1021df52438829c09dad4708102c5c8236862ec6e89dd1501c69f825a3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseValues/Variant27fe67fa5e57a8ae0cb4f6443084130d4360933d1e9a53462bb216b23144e8be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:986731b4608967976360c1d34b11932888435525244ee9ebe26ff50bd0b1535d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def caseValues (mvarId : MVarId) (fvarId : FVarId) (values : Array Expr) (hNamePrefix := `h)
    (needHyps := true) : MetaM (Array CaseValuesSubgoal) :=
  let rec loop : Nat → MVarId → List Expr → Array FVarId → Array CaseValuesSubgoal → MetaM (Array CaseValuesSubgoal)
    | _, mvarId, [],    _,  _        => throwTacticEx `caseValues mvarId "list of values must not be empty"
    | i, mvarId, v::vs, hs, subgoals => do
      let (thenMVarId, elseMVarId) ← caseValue mvarId fvarId v (hNamePrefix.appendIndexAfter i)
      appendTagSuffix thenMVarId ((`case).appendIndexAfter i)
      let thenMVarId ← thenMVarId.tryClearMany hs
      let (subst, thenMVarId) ← introSubstEq thenMVarId (substLHS := true)
      let subgoals := subgoals.push { mvarId := thenMVarId, newHs := #[], subst }
      let (hs', elseMVarId) ←
        if needHyps then
          let (elseH, elseMVarId) ← elseMVarId.intro1P
          pure (hs.push elseH, elseMVarId)
        else
          let elseMVarId ← elseMVarId.intro1_
          pure (hs, elseMVarId)
      match vs with
      | [] => do
        appendTagSuffix elseMVarId ((`case).appendIndexAfter (i+1))
        pure $ subgoals.push { mvarId := elseMVarId, newHs := hs', subst := {} }
      | vs =>
        loop (i+1) elseMVarId vs hs' subgoals

  loop 1 mvarId values.toList #[] #[]

end Lean.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseValues/Variant27fe67fa5e57a8ae0cb4f6443084130d4360933d1e9a53462bb216b23144e8be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseValues/Variant27fe67fa5e57a8ae0cb4f6443084130d4360933d1e9a53462bb216b23144e8be.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e69acf23e5ce0e7d04b4ed040e3216fb54c45bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
