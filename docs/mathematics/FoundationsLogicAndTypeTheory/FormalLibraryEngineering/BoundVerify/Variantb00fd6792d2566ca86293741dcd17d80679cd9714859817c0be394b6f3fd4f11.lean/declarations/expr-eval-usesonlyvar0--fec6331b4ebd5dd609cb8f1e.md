# Expr.eval_usesOnlyVar0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a7d9e1a-529f-b34a-e654-12636b2fa231",
  "kind": "theorem",
  "lexical_name": "Expr.eval_usesOnlyVar0",
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
  "slug": "expr-eval-usesonlyvar0--fec6331b4ebd5dd609cb8f1e",
  "source": {
    "blob": "063041f9a13dbbb802987ada3c7e9e9a13976777",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 328,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fec6331b4ebd5dd609cb8f1e45a1a1027b7d653e6aaea098de9257c6c8919583",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a7d9e1a-529f-b34a-e654-12636b2fa231`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Expr.eval_usesOnlyVar0 (e : Expr) (he : e.usesOnlyVar0 = true)
    (ρ ρ' : Nat → ℝ) (h0 : ρ 0 = ρ' 0) : Expr.eval ρ e = Expr.eval ρ' e := by
  induction e with
  | const q => rfl
  | var i =>
    -- usesOnlyVar0 (var i) = (i == 0), so he : (i == 0) = true
    have hi : i = 0 := by
      change (i == 0) = true at he
      exact beq_iff_eq.mp he
    simp only [Expr.eval, hi, h0]
  | add e1 e2 ih1 ih2 =>
    -- usesOnlyVar0 (add e1 e2) = e1.usesOnlyVar0 && e2.usesOnlyVar0
    have he' : e1.usesOnlyVar0 = true ∧ e2.usesOnlyVar0 = true := by
      change (e1.usesOnlyVar0 && e2.usesOnlyVar0) = true at he
      exact Bool.and_eq_true_iff.mp he
    simp only [Expr.eval, ih1 he'.1, ih2 he'.2]
  | mul e1 e2 ih1 ih2 =>
    have he' : e1.usesOnlyVar0 = true ∧ e2.usesOnlyVar0 = true := by
      change (e1.usesOnlyVar0 && e2.usesOnlyVar0) = true at he
      exact Bool.and_eq_true_iff.mp he
    simp only [Expr.eval, ih1 he'.1, ih2 he'.2]
  | neg e ih => simp only [Expr.eval, ih he]
  | inv e ih => simp only [Expr.eval, ih he]
  | exp e ih => simp only [Expr.eval, ih he]
  | sin e ih => simp only [Expr.eval, ih he]
  | cos e ih => simp only [Expr.eval, ih he]
  | log e ih => simp only [Expr.eval, ih he]
  | atan e ih => simp only [Expr.eval, ih he]
  | arsinh e ih => simp only [Expr.eval, ih he]
  | atanh e ih => simp only [Expr.eval, ih he]
  | sinc e ih => simp only [Expr.eval, ih he]
  | erf e ih => simp only [Expr.eval, ih he]
  | sinh e ih => simp only [Expr.eval, ih he]
  | cosh e ih => simp only [Expr.eval, ih he]
  | tanh e ih => simp only [Expr.eval, ih he]
  | sqrt e ih => simp only [Expr.eval, ih he]
  | namedConst _ => rfl

/-! ### Tactic-facing lemmas for adaptive bound verification -/

/-- Tactic-facing lemma: if adaptive verification succeeds, upper bound holds.
    This is the key lemma that tactics use to close goals.
    Requires that the expression uses only var 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `063041f9a13dbbb802987ada3c7e9e9a13976777` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
