# exists_rat_pow_btwn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f2f0e46ca3e84897756b6831bf647c91b8c7f84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 760,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/647c7a5f530516e2b2d8100c38e22bf83046b57a1a93360d0829f40fc1fdf725.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:270f4b01-8374-d3db-1afa-466c7d8b6f78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:497187d4-1fb0-f120-1b89-f7a86778fe6d",
  "kind": "theorem",
  "lexical_name": "exists_rat_pow_btwn",
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
  "slug": "exists-rat-pow-btwn--6635c4d67ab074409ad0132c",
  "source": {
    "blob": "7f2f0e46ca3e84897756b6831bf647c91b8c7f84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 834,
    "line": 760,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Real/Variant647c7a5f530516e2b2d8100c38e22bf83046b57a1a93360d0829f40fc1fdf725.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6635c4d67ab074409ad0132c205ff23c392cc2d838c64b084baca86cd46a7415",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Real/Variant647c7a5f530516e2b2d8100c38e22bf83046b57a1a93360d0829f40fc1fdf725.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:497187d4-1fb0-f120-1b89-f7a86778fe6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 760–834.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_rat_pow_btwn {α : Type*} [LinearOrderedField α] [Archimedean α] (hn : n ≠ 0)
    {x y : α} (h : x < y) (hy : 0 < y) : ∃ q : ℚ, 0 < q ∧ x < (q : α) ^ n ∧ (q : α) ^ n < y := by
  obtain ⟨q₂, hx₂, hy₂⟩ := exists_rat_btwn (max_lt h hy)
  obtain ⟨q₁, hx₁, hq₁₂⟩ := exists_rat_btwn hx₂
  have : (0 : α) < q₂ := (le_max_right _ _).trans_lt hx₂
  norm_cast at hq₁₂ this
  obtain ⟨q, hq, hq₁, hq₂⟩ := exists_rat_pow_btwn_rat hn hq₁₂ this
  refine' ⟨q, hq, (le_max_left _ _).trans_lt <| hx₁.trans _, hy₂.trans' _⟩ <;> assumption_mod_cast
#align real.exists_rat_pow_btwn Real.exists_rat_pow_btwn

end Real

section Tactics

/-!
## Tactic extensions for real powers
-/


-- namespace NormNum

-- open Tactic

-- theorem rpow_pos (a b : ℝ) (b' : ℕ) (c : ℝ) (hb : (b' : ℝ) = b) (h : a ^ b' = c) :
-- a ^ b = c := by
--   rw [← h, ← hb, Real.rpow_nat_cast]
-- #align norm_num.rpow_pos NormNum.rpow_pos

-- theorem rpow_neg (a b : ℝ) (b' : ℕ) (c c' : ℝ) (a0 : 0 ≤ a) (hb : (b' : ℝ) = b) (h : a ^ b' = c)
--     (hc : c⁻¹ = c') : a ^ (-b) = c' := by
--   rw [← hc, ← h, ← hb, Real.rpow_neg a0, Real.rpow_nat_cast]
-- #align norm_num.rpow_neg NormNum.rpow_neg

-- /-- Evaluate `Real.rpow a b` where `a` is a rational numeral and `b` is an integer.
-- (This cannot go via the generalized version `prove_rpow'` because `rpow_pos` has a
-- side condition; we do not attempt to evaluate `a ^ b` where `a` and `b` are both negative because
-- it comes out to some garbage.) -/
-- unsafe def prove_rpow (a b : expr) : tactic (expr × expr) := do
--   let na ← a.to_rat
--   let ic ← mk_instance_cache q(ℝ)
--   match match_sign b with
--     | Sum.inl b => do
--       let (ic, a0) ← guard (na ≥ 0) >> prove_nonneg ic a
--       let nc ← mk_instance_cache q(ℕ)
--       let (ic, nc, b', hb) ← prove_nat_uncast ic nc b
--       let (ic, c, h) ← prove_pow a na ic b'
--       let cr ← c
--       let (ic, c', hc) ← prove_inv ic c cr
--       pure (c', (expr.const `` rpow_neg []).mk_app [a, b, b', c, c', a0, hb, h, hc])
--     | Sum.inr ff => pure (q((1 : ℝ)), expr.const `` Real.rpow_zero [] a)
--     | Sum.inr tt => do
--       let nc ← mk_instance_cache q(ℕ)
--       let (ic, nc, b', hb) ← prove_nat_uncast ic nc b
--       let (ic, c, h) ← prove_pow a na ic b'
--       pure (c, (expr.const `` rpow_pos []).mk_app [a, b, b', c, hb, h])
-- #align norm_num.prove_rpow norm_num.prove_rpow

-- /-- Evaluates expressions of the form `rpow a b` and `a ^ b` in the special case where
-- `b` is an integer and `a` is a positive rational (so it's really just a rational power). -/
-- @[norm_num]
-- unsafe def eval_rpow : expr → tactic (expr × expr)
--   | q(@Pow.pow _ _ Real.hasPow $(a) $(b)) => b.to_int >> prove_rpow a b
--   | q(Real.rpow $(a) $(b)) => b.to_int >> prove_rpow a b
--   | _ => tactic.failed
-- #align norm_num.eval_rpow norm_num.eval_rpow

-- end NormNum

namespace Mathlib.Meta.Positivity

open Lean Meta Qq

/-- Extension for the `positivity` tactic: exponentiation by a real number is positive (namely 1)
when the exponent is zero. The other cases are done in `evalRpow`. -/
@[positivity (_ : ℝ) ^ (0 : ℝ), Pow.pow (_ : ℝ) (0 : ℝ), Real.rpow (_ : ℝ) (0 : ℝ)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Real/Variant647c7a5f530516e2b2d8100c38e22bf83046b57a1a93360d0829f40fc1fdf725.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Real/Variant647c7a5f530516e2b2d8100c38e22bf83046b57a1a93360d0829f40fc1fdf725.lean#L760).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f2f0e46ca3e84897756b6831bf647c91b8c7f84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
