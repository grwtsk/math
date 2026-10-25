# caseValues

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f119d8de15236244728fe69b9270ea788cf6f29c0fadf74dbaddbd59140bd10a",
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
  "slug": "casevalues--ba231f7a97e4bac14d0e9324",
  "source": {
    "blob": "429d17762b4659c825decf393a49f7b26699a7c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseValues/Variantf9cbbbce579e6efcd30267106d02445d0490781e1054e5e6a79d67042aeb041f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba231f7a97e4bac14d0e93249f7b85d53ca316c88b2ab28eee66be54118ec539",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseValues/Variantf9cbbbce579e6efcd30267106d02445d0490781e1054e5e6a79d67042aeb041f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f119d8de15236244728fe69b9270ea788cf6f29c0fadf74dbaddbd59140bd10a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–91.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseValues/Variantf9cbbbce579e6efcd30267106d02445d0490781e1054e5e6a79d67042aeb041f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CaseValues/Variantf9cbbbce579e6efcd30267106d02445d0490781e1054e5e6a79d67042aeb041f.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `429d17762b4659c825decf393a49f7b26699a7c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
