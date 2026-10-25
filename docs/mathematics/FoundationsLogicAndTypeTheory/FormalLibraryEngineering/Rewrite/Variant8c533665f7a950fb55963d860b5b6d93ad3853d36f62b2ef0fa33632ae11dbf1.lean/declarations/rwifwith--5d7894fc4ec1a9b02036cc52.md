# rwIfWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dde9bb8ce8a53785748f4463a2a3828f7394ee26c793a82636f4a69c91d7aeec",
  "kind": "def",
  "lexical_name": "rwIfWith",
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
  "slug": "rwifwith--5d7894fc4ec1a9b02036cc52",
  "source": {
    "blob": "7bfcb319a324827668c612b9314fc8c424767555",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant8c533665f7a950fb55963d860b5b6d93ad3853d36f62b2ef0fa33632ae11dbf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d7894fc4ec1a9b02036cc52251fa605736c4125e1d2161cbe27c315cb1bdf52",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant8c533665f7a950fb55963d860b5b6d93ad3853d36f62b2ef0fa33632ae11dbf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dde9bb8ce8a53785748f4463a2a3828f7394ee26c793a82636f4a69c91d7aeec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rwIfWith (hc : Expr) (e : Expr) : MetaM Simp.Result := do
  match_expr e with
  | ite@ite α c h t f =>
    let us := ite.constLevels!
    if (← isDefEq c (← inferType hc)) then
      return {
        expr := t
        proof? := (mkAppN (mkConst ``if_pos us) #[c, h, hc, α, t, f])
      }
    if (← isDefEq (mkNot c) (← inferType hc)) then
      return {
        expr := f
        proof? := (mkAppN (mkConst ``if_neg us) #[c, h, hc, α, t, f])
      }
  | dite@dite α c h t f =>
    let us := dite.constLevels!
    if (← isDefEq c (← inferType hc)) then
      return {
        expr := t.beta #[hc]
        proof? := (mkAppN (mkConst ``dif_pos us) #[c, h, hc, α, t, f])
      }
    if (← isDefEq (mkNot c) (← inferType hc)) then
      return {
        expr := f.beta #[hc]
        proof? := (mkAppN (mkConst ``dif_neg us) #[c, h, hc, α, t, f])
      }
  | cond@cond α c t f =>
    let us := cond.constLevels!
    if (← isDefEq (← inferType hc) (← mkEq c (mkConst ``Bool.true))) then
      return {
        expr := t
        proof? := (mkAppN (mkConst ``Bool.cond_pos us) #[α, c, t, f, hc])
      }
    if (← isDefEq (← inferType hc) (← mkEq c (mkConst ``Bool.false))) then
      return {
        expr := f
        proof? := (mkAppN (mkConst ``Bool.cond_neg us) #[α, c, t, f, hc])
      }
  | _ => pure ()
  return { expr := e }

/--
In the `onAlt` handler of a `MatcherApp.transform`, you can use this function on a properly
substituted matcher application with the alternative `altIdx`.

If it fails, it returns a rewrite with `proof? := none` and the unchanged expression.

"Properly substituted" here means that the discriminants have been substituted according to the
alternative; otherwise, the rewrite might fail because some hypothesis of the congruence
equation theorem cannot be discharged by assumption or reflixivity.
See `Lean.Meta.Tactic.FunInd.buildInductionBody` and `Lean.Elab.Tactic.Do.VCGen.Split` for examples
of how to coerce `MatherApp.transform` into doing the substitution on the motive for you.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant8c533665f7a950fb55963d860b5b6d93ad3853d36f62b2ef0fa33632ae11dbf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant8c533665f7a950fb55963d860b5b6d93ad3853d36f62b2ef0fa33632ae11dbf1.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bfcb319a324827668c612b9314fc8c424767555` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
