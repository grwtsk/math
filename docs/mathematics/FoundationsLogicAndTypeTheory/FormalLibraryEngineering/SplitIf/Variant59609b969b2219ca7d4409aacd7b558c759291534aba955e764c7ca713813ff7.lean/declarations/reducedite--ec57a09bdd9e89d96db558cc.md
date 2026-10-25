# reduceDIte'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6650d104b72e75d625e11345fbd5ac583517e3b0d901fe835b9339f7c133cd18",
  "kind": "def",
  "lexical_name": "reduceDIte'",
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
  "slug": "reducedite--ec57a09bdd9e89d96db558cc",
  "source": {
    "blob": "d6d48ef371e536bcfb63fdbce623bc73b9d88708",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 231,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec57a09bdd9e89d96db558cc54d1d5697c32e7fda842f0b897513a5d0b9bffed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6650d104b72e75d625e11345fbd5ac583517e3b0d901fe835b9339f7c133cd18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def reduceDIte' (numIndices : Nat) (useDecideBool : Bool) : Simp.Simproc := fun e => do
  let_expr f@dite α c i tb eb ← e | return .continue
  let us := f.constLevels!
  if let some h ← discharge? numIndices useDecideBool c then
    let e' := mkApp tb h |>.headBeta
    let h := mkApp6 (mkConst ``dif_pos us) c i h α tb eb
    return .done { expr := e', proof? := some h }
  else if let some h ← discharge? numIndices useDecideBool (mkNot c) then
    let e' := mkApp eb h |>.headBeta
    let h := mkApp6 (mkConst ``dif_neg us) c i h α tb eb
    return .done { expr := e', proof? := some h }
  else
    -- `split` may have selected an `if-then-else` nested in `c`.
    let r ← Simp.simp c
    if r.expr == c then
      return .done { expr := e }
    else
      let c' := r.expr
      let h ← r.getProof
      let dec := mkApp (mkConst ``Decidable) c'
      let .some i' ← trySynthInstance dec | return .done { expr := e }
      let tb' := mkApp tb (mkApp4 (mkConst ``Eq.mpr_prop) c c' h (mkBVar 0)) |>.headBeta
      let tb' := mkLambda (← getBinderName tb) .default c' tb'
      let eb' := mkApp eb (mkApp4 (mkConst ``Eq.mpr_not) c c' h (mkBVar 0)) |>.headBeta
      let eb' := mkLambda (← getBinderName eb) .default (mkNot c') eb'
      let e' := mkApp5 f α c' i' tb' eb'
      let h := mkApp8 (mkConst ``dite_cond_congr us) α c c' i i' tb eb h
      return .done { expr := e', proof? := some h }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant59609b969b2219ca7d4409aacd7b558c759291534aba955e764c7ca713813ff7.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6d48ef371e536bcfb63fdbce623bc73b9d88708` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
