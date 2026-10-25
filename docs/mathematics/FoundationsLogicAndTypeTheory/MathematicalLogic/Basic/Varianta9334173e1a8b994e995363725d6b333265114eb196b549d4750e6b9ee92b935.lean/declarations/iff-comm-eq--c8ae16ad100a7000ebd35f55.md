# iff_comm_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b3d2ad2f6dcedde4742658c60b74c3c97a6a3f74",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a9334173e1a8b994e995363725d6b333265114eb196b549d4750e6b9ee92b935.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc2ceca4-ad75-b80f-bb22-56d228e71067",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84c10308-e60a-4372-b116-f8ade2695420",
  "kind": "theorem",
  "lexical_name": "iff_comm_eq",
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
  "slug": "iff-comm-eq--c8ae16ad100a7000ebd35f55",
  "source": {
    "blob": "b3d2ad2f6dcedde4742658c60b74c3c97a6a3f74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta9334173e1a8b994e995363725d6b333265114eb196b549d4750e6b9ee92b935.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8ae16ad100a7000ebd35f553f32d8ae0f01b07b0921d7b82f4d0a7c36ec6ec8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta9334173e1a8b994e995363725d6b333265114eb196b549d4750e6b9ee92b935.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84c10308-e60a-4372-b116-f8ade2695420`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iff_comm_eq (a b : Prop) : (a ↔ b) = (b ↔ a) := by rw [@iff_comm a b]

/-- On a goal of the form of `x = y`, also try to simplify `y = x`.

If simplifying `y = x` gives `y' = x'` then this simproc returns `x' = y'` (so that the use of
commutativity is transparent), otherwise it returns the result of simplifying `y = x` unmodified.
-/
simproc_decl eqComm (_ = _) := fun e => do
  let_expr Eq _ x y := e | return .continue
  let symmExpr ← mkEq y x
  let r ← withoutTheorems #[`eqComm,
    -- These theorems would cause an infinite loop:
    ``eq_comm, ``Bool.not_eq_eq_eq_not, `inv_eq_iff_eq_inv, `eq_inv_mul_iff_mul_eq,
    `eq_mul_inv_iff_mul_eq, `neg_eq_iff_eq_neg, `Function.Involutive.eq_iff,
    `vadd_eq_iff_eq_neg_vadd, `Equiv.eq_symm_apply,
    -- These theorems aren't commute-resistant (they turn an equality into a non-equality in a
    -- non-commutative way.)
    ``beq_iff_eq, ``funext_iff, ``eq_iff_iff, `Prod.swap_eq_iff_eq_swap, ``left_eq_dite_iff,
    ``right_eq_dite_iff] do
    withTraceNode `Meta.Tactic.simp (fun _ => return m!"commuting equality: {e}") <| simp symmExpr
  -- If no actual progress happened (modulo commutativity), return early.
  match_expr r.expr with
  | Eq _ y' x' =>
    if (y' == y && x' == x) || (y' == x && x' == y) then do
      return .continue none
  | _ => pure ()
  let symmR ← Result.mkEqTrans { expr := symmExpr, proof? := ← mkAppM ``eq_comm_eq #[x, y] } r
  -- If we started with `x = y`, and the result of simplifying `y = x` was `y' = x'`, then we want
  -- to end up with `x' = y'`.
  match_expr r.expr with
  | Eq _ y' x' =>
    return .visit (← symmR.mkEqTrans
      { expr := ← mkEq x' y', proof? := ← mkAppM ``eq_comm_eq #[y', x'] })
  | _ => return .done symmR

/-- On a goal of the form of `x ↔ y`, also try to simplify `y ↔ x`.

If simplifying `y ↔ x` gives `y' ↔ x'` then this simproc returns `x' ↔ y'` (so that the use of
commutativity is transparent), otherwise it returns the result of simplifying `y ↔ x` unmodified.
-/
simproc_decl iffComm (_ ↔ _) := fun e => do
  let_expr Iff x y := e | return .continue
  let symmExpr := .app (.app (.const ``Iff []) y) x
  let r ← withoutTheorems #[`iffComm,
      -- These theorems would cause an infinite loop:
      ``Iff.comm,
      -- These theorems aren't commute-resistant (they turn an iff into a non-iff in a
      -- non-commutative way).
      ``and_congr_left_iff, ``and_congr_right_iff, ``iff_def, ``iff_def',
      ``iff_iff_implies_and_implies, ``Bool.coe_iff_coe] do
    withTraceNode `Meta.Tactic.simp (fun _ => return m!"commuting iff: {e}") <| simp symmExpr
  -- If no actual progress happened (modulo commutativity), return early.
  if r.expr == symmExpr || r.expr == e then return .continue
  let symmR ← Result.mkEqTrans { expr := symmExpr, proof? := ← mkAppM ``iff_comm_eq #[x, y] } r
  -- If we started with `x ↔ y`, and the result of simplifying `y ↔ x` was `y' ↔ x'`, then we want
  -- to end up with `x' ↔ y'`.
  match_expr r.expr with
  | Iff y' x' =>
    return .visit (← symmR.mkEqTrans
      { expr := .app (.app (.const ``Iff []) x') y', proof? := ← mkAppM ``iff_comm_eq #[y', x'] })
  | _ => return .done symmR

end CommSimproc

-- attribute [refl] HEq.refl -- FIXME This is still rejected after https://github.com/leanprover-community/mathlib4/pull/857

/-- An identity function with its main argument implicit. This will be printed as `hidden` even
if it is applied to a large term, so it can be used for elision,
as done in the `elide` and `unelide` tactics. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta9334173e1a8b994e995363725d6b333265114eb196b549d4750e6b9ee92b935.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta9334173e1a8b994e995363725d6b333265114eb196b549d4750e6b9ee92b935.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3d2ad2f6dcedde4742658c60b74c3c97a6a3f74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
