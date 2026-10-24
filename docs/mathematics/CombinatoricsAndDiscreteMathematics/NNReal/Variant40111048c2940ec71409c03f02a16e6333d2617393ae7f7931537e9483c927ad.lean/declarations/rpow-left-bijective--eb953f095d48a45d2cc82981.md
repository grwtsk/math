# rpow_left_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91a713403aceaf568a54c3f4dbe2be3a2c0cb221",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 845,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40111048c2940ec71409c03f02a16e6333d2617393ae7f7931537e9483c927ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0465d88-7e1d-6d73-8f35-187b8011c2f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:081d7dcd-5cb3-9c95-259b-107e5faca79b",
  "kind": "theorem",
  "lexical_name": "rpow_left_bijective",
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
  "slug": "rpow-left-bijective--eb953f095d48a45d2cc82981",
  "source": {
    "blob": "91a713403aceaf568a54c3f4dbe2be3a2c0cb221",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 953,
    "line": 845,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NNReal/Variant40111048c2940ec71409c03f02a16e6333d2617393ae7f7931537e9483c927ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb953f095d48a45d2cc829816e78b92c5bb032ab7e8cd148fe2b5579d287a036",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NNReal/Variant40111048c2940ec71409c03f02a16e6333d2617393ae7f7931537e9483c927ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:081d7dcd-5cb3-9c95-259b-107e5faca79b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 845–953.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rpow_left_bijective {x : ℝ} (hx : x ≠ 0) : Function.Bijective fun y : ℝ≥0∞ => y ^ x :=
  ⟨rpow_left_injective hx, rpow_left_surjective hx⟩
#align ennreal.rpow_left_bijective ENNReal.rpow_left_bijective

end ENNReal

-- Porting note(https://github.com/leanprover-community/mathlib4/issues/6038): restore
-- section Tactics

-- /-!
-- ## Tactic extensions for powers on `ℝ≥0` and `ℝ≥0∞`
-- -/


-- namespace NormNum

-- theorem nnrpow_pos (a : ℝ≥0) (b : ℝ) (b' : ℕ) (c : ℝ≥0) (hb : b = b') (h : a ^ b' = c) :
--     a ^ b = c := by rw [← h, hb, NNReal.rpow_nat_cast]
-- #align norm_num.nnrpow_pos NormNum.nnrpow_pos

-- theorem nnrpow_neg (a : ℝ≥0) (b : ℝ) (b' : ℕ) (c c' : ℝ≥0) (hb : b = b') (h : a ^ b' = c)
--     (hc : c⁻¹ = c') : a ^ (-b) = c' := by
--   rw [← hc, ← h, hb, NNReal.rpow_neg, NNReal.rpow_nat_cast]
-- #align norm_num.nnrpow_neg NormNum.nnrpow_neg

-- theorem ennrpow_pos (a : ℝ≥0∞) (b : ℝ) (b' : ℕ) (c : ℝ≥0∞) (hb : b = b') (h : a ^ b' = c) :
--     a ^ b = c := by rw [← h, hb, ENNReal.rpow_nat_cast]
-- #align norm_num.ennrpow_pos NormNum.ennrpow_pos

-- theorem ennrpow_neg (a : ℝ≥0∞) (b : ℝ) (b' : ℕ) (c c' : ℝ≥0∞) (hb : b = b') (h : a ^ b' = c)
--     (hc : c⁻¹ = c') : a ^ (-b) = c' := by
--   rw [← hc, ← h, hb, ENNReal.rpow_neg, ENNReal.rpow_nat_cast]
-- #align norm_num.ennrpow_neg NormNum.ennrpow_neg

-- /-- Evaluate `NNReal.rpow a b` where `a` is a rational numeral and `b` is an integer. -/
-- unsafe def prove_nnrpow : expr → expr → tactic (expr × expr) :=
--   prove_rpow' `` nnrpow_pos `` nnrpow_neg `` NNReal.rpow_zero q(ℝ≥0) q(ℝ) q((1 : ℝ≥0))
-- #align norm_num.prove_nnrpow norm_num.prove_nnrpow

-- /-- Evaluate `ENNReal.rpow a b` where `a` is a rational numeral and `b` is an integer. -/
-- unsafe def prove_ennrpow : expr → expr → tactic (expr × expr) :=
--   prove_rpow' `` ennrpow_pos `` ennrpow_neg `` ENNReal.rpow_zero q(ℝ≥0∞) q(ℝ) q((1 : ℝ≥0∞))
-- #align norm_num.prove_ennrpow norm_num.prove_ennrpow

-- /-- Evaluates expressions of the form `rpow a b` and `a ^ b` in the special case where
-- `b` is an integer and `a` is a positive rational (so it's really just a rational power). -/
-- @[norm_num]
-- unsafe def eval_nnrpow_ennrpow : expr → tactic (expr × expr)
--   | q(@Pow.pow _ _ NNReal.Real.hasPow $(a) $(b)) => b.to_int >> prove_nnrpow a b
--   | q(NNReal.rpow $(a) $(b)) => b.to_int >> prove_nnrpow a b
--   | q(@Pow.pow _ _ ENNReal.Real.hasPow $(a) $(b)) => b.to_int >> prove_ennrpow a b
--   | q(ENNReal.rpow $(a) $(b)) => b.to_int >> prove_ennrpow a b
--   | _ => tactic.failed
-- #align norm_num.eval_nnrpow_ennrpow norm_num.eval_nnrpow_ennrpow

-- end NormNum

-- namespace Tactic

-- namespace Positivity

-- private theorem nnrpow_pos {a : ℝ≥0} (ha : 0 < a) (b : ℝ) : 0 < a ^ b :=
--   NNReal.rpow_pos ha
-- #align tactic.positivity.nnrpow_pos tactic.positivity.nnrpow_pos

-- /-- Auxiliary definition for the `positivity` tactic to handle real powers of nonnegative reals.
-- -/
-- unsafe def prove_nnrpow (a b : expr) : tactic strictness := do
--   let strictness_a ← core a
--   match strictness_a with
--     | positive p => positive <$> mk_app `` nnrpow_pos [p, b]
--     | _ => failed
-- #align tactic.positivity.prove_nnrpow tactic.positivity.prove_nnrpow

-- -- We already know `0 ≤ x` for all `x : ℝ≥0`
-- private theorem ennrpow_pos {a : ℝ≥0∞} {b : ℝ} (ha : 0 < a) (hb : 0 < b) : 0 < a ^ b :=
--   ENNReal.rpow_pos_of_nonneg ha hb.le
-- #align tactic.positivity.ennrpow_pos tactic.positivity.ennrpow_pos

-- /-- Auxiliary definition for the `positivity` tactic to handle real powers of extended
-- nonnegative reals. -/
-- unsafe def prove_ennrpow (a b : expr) : tactic strictness := do
--   let strictness_a ← core a
--   let strictness_b ← core b
--   match strictness_a, strictness_b with
--     | positive pa, positive pb => positive <$> mk_app `` ennrpow_pos [pa, pb]
--     | positive pa, nonnegative pb => positive <$> mk_app `` ENNReal.rpow_pos_of_nonneg [pa, pb]
--     | _, _ => failed
-- #align tactic.positivity.prove_ennrpow tactic.positivity.prove_ennrpow

-- -- We already know `0 ≤ x` for all `x : ℝ≥0∞`
-- end Positivity

-- open Positivity

-- /-- Extension for the `positivity` tactic: exponentiation by a real number is nonnegative when
-- the base is nonnegative and positive when the base is positive. -/
-- @[positivity]
-- unsafe def positivity_nnrpow_ennrpow : expr → tactic strictness
--   | q(@Pow.pow _ _ NNReal.Real.hasPow $(a) $(b)) => prove_nnrpow a b
--   | q(NNReal.rpow $(a) $(b)) => prove_nnrpow a b
--   | q(@Pow.pow _ _ ENNReal.Real.hasPow $(a) $(b)) => prove_ennrpow a b
--   | q(ENNReal.rpow $(a) $(b)) => prove_ennrpow a b
--   | _ => failed
-- #align tactic.positivity_nnrpow_ennrpow tactic.positivity_nnrpow_ennrpow

-- end Tactic

-- end Tactics
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NNReal/Variant40111048c2940ec71409c03f02a16e6333d2617393ae7f7931537e9483c927ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NNReal/Variant40111048c2940ec71409c03f02a16e6333d2617393ae7f7931537e9483c927ad.lean#L845).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91a713403aceaf568a54c3f4dbe2be3a2c0cb221` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
