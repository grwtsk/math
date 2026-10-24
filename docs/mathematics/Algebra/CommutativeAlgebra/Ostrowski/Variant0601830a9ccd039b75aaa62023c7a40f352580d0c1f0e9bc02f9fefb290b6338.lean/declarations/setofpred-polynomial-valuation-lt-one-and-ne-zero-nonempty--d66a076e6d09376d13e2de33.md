# setOfPred_polynomial_valuation_lt_one_and_ne_zero_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7e4d6ec-4e36-d991-a112-22be534ce1bf",
  "kind": "lemma",
  "lexical_name": "setOfPred_polynomial_valuation_lt_one_and_ne_zero_nonempty",
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
  "slug": "setofpred-polynomial-valuation-lt-one-and-ne-zero-nonempty--d66a076e6d09376d13e2de33",
  "source": {
    "blob": "6d103a3e7f61246c5f5b2dc9bc481c8d95ad43e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 73,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Ostrowski/Variant0601830a9ccd039b75aaa62023c7a40f352580d0c1f0e9bc02f9fefb290b6338.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d66a076e6d09376d13e2de33f3ab5f0964793c81082d5eb10305719855d4fd10",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Ostrowski/Variant0601830a9ccd039b75aaa62023c7a40f352580d0c1f0e9bc02f9fefb290b6338.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7e4d6ec-4e36-d991-a112-22be534ce1bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setOfPred_polynomial_valuation_lt_one_and_ne_zero_nonempty [v.IsNontrivial] [v.IsTrivialOn K]
    (hle : v RatFunc.X ≤ 1) : {p : K[X] | v p < 1 ∧ p ≠ 0}.Nonempty := by
  obtain ⟨w, h0, h1⟩ := IsNontrivial.exists_lt_one (v := v)
  induction w using RatFunc.induction_on with
  | f p q =>
    simp only [ne_eq, _root_.div_eq_zero_iff, FaithfulSMul.algebraMap_eq_zero_iff, not_or,
      map_div₀] at *
    have hor : ¬v ↑p = 1 ∨ ¬v ↑q = 1 := by rw [← not_and_or]; aesop
    suffices ∀ r : K[X], v (↑r) ≠ 1 → r ≠ 0 → {p : K[X] | v ↑p < 1 ∧ ¬p = 0}.Nonempty by
      exact Or.elim hor (fun hp ↦ this p hp h0.1) (fun hq ↦ this q hq h0.2)
    exact fun r hr hr0 ↦ ⟨r, lt_iff_le_and_ne.mpr
      ⟨Polynomial.valuation_le_one_of_valuation_X_le_one _ hle r, hr⟩, hr0⟩

@[deprecated (since := "2026-07-09")]
alias setOf_polynomial_valuation_lt_one_and_ne_zero_nonempty :=
  setOfPred_polynomial_valuation_lt_one_and_ne_zero_nonempty

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Ostrowski/Variant0601830a9ccd039b75aaa62023c7a40f352580d0c1f0e9bc02f9fefb290b6338.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Ostrowski/Variant0601830a9ccd039b75aaa62023c7a40f352580d0c1f0e9bc02f9fefb290b6338.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d103a3e7f61246c5f5b2dc9bc481c8d95ad43e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
