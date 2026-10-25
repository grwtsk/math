# distribNotOnceAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:885ba26257162117a7f76dfb6466588451ac3e8769c5af32f9209f24c10cb16a",
  "kind": "def",
  "lexical_name": "distribNotOnceAt",
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
  "slug": "distribnotonceat--863ec7f45adc061e370d98db",
  "source": {
    "blob": "99c72ed0c781e42371759dd432ee264bbbeaafda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variantf0147e5106f68588f4be7febc1352172f4603a860099b8432760836abbd6c109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:863ec7f45adc061e370d98db803d7631d314004cb7719463fec9540481fe445b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variantf0147e5106f68588f4be7febc1352172f4603a860099b8432760836abbd6c109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:885ba26257162117a7f76dfb6466588451ac3e8769c5af32f9209f24c10cb16a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def distribNotOnceAt (hypFVar : Expr) (g : MVarId) : MetaM AssertAfterResult := g.withContext do
  let .fvar fvarId := hypFVar | throwError "not fvar {hypFVar}"
  let h ← fvarId.getDecl
  let e : Q(Prop) ← (do guard <| ← Meta.isProp h.type; pure h.type)
  let replace (p : Expr) := g.replace h.fvarId p
  match e with
  | ~q(¬ ($a : Prop) = $b) => do
    let h' : Q(¬$a = $b) := h.toExpr
    replace q(mt Iff.to_eq $h')
  | ~q(($a : Prop) = $b) => do
    let h' : Q($a = $b) := h.toExpr
    replace q(Eq.to_iff $h')
  | ~q(¬ (($a : Prop) ∧ $b)) => do
    let h' : Q(¬($a ∧ $b)) := h.toExpr
    let _inst ← synthInstanceQ (q(Decidable $b) : Q(Type))
    replace q(Decidable.not_and'.mp $h')
  | ~q(¬ (($a : Prop) ∨ $b)) => do
    let h' : Q(¬($a ∨ $b)) := h.toExpr
    replace q(not_or.mp $h')
  | ~q(¬ (($a : Prop) ≠ $b)) => do
    let h' : Q(¬($a ≠ $b)) := h.toExpr
    let _inst ← synthInstanceQ (q(Decidable ($a = $b)) : Q(Type))
    replace q(Decidable.of_not_not $h')
  | ~q(¬¬ ($a : Prop)) => do
    let h' : Q(¬¬$a) := h.toExpr
    let _inst ← synthInstanceQ (q(Decidable $a) : Q(Type))
    replace q(Decidable.of_not_not $h')
  | ~q(¬ ((($a : Prop)) → $b)) => do
    let h' : Q(¬($a → $b)) := h.toExpr
    let _inst ← synthInstanceQ (q(Decidable $a) : Q(Type))
    replace q(Decidable.not_imp.mp $h')
  | ~q(¬ (($a : Prop) ↔ $b)) => do
    let h' : Q(¬($a ↔ $b)) := h.toExpr
    let _inst ← synthInstanceQ (q(Decidable $b) : Q(Type))
    replace q(Decidable.not_iff.mp $h')
  | ~q(($a : Prop) ↔ $b) => do
    let h' : Q($a ↔ $b) := h.toExpr
    let _inst ← synthInstanceQ (q(Decidable $b) : Q(Type))
    replace q(Decidable.iff_iff_and_or_not_and_not.mp $h')
  | ~q((((($a : Prop)) → False) : Prop)) =>
    throwError "distribNot found nothing to work on with negation"
  | ~q((((($a : Prop)) → $b) : Prop)) => do
    let h' : Q($a → $b) := h.toExpr
    let _inst ← synthInstanceQ (q(Decidable $a) : Q(Type))
    replace q(Decidable.not_or_of_imp $h')
  | _ => throwError "distribNot found nothing to work on"

/--
State of the `distribNotAt` function. We need to carry around the list of
remaining hypothesis as fvars so that we can incrementally apply the
`AssertAfterResult.subst` from each step to each of them. Otherwise,
they could end up referring to old hypotheses.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variantf0147e5106f68588f4be7febc1352172f4603a860099b8432760836abbd6c109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variantf0147e5106f68588f4be7febc1352172f4603a860099b8432760836abbd6c109.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99c72ed0c781e42371759dd432ee264bbbeaafda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
