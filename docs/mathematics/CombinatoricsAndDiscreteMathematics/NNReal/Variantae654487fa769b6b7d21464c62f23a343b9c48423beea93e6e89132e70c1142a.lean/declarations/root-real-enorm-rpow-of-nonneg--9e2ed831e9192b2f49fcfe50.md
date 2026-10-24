# _root_.Real.enorm_rpow_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1df0d54790a616ac0c3483f69f0ddebd2eb772ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 936,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae654487fa769b6b7d21464c62f23a343b9c48423beea93e6e89132e70c1142a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b63deff-a271-56bb-77e4-698a3a9586cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f05a668-3f9f-2e71-c3a0-8e67679707da",
  "kind": "lemma",
  "lexical_name": "_root_.Real.enorm_rpow_of_nonneg",
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
  "slug": "root-real-enorm-rpow-of-nonneg--9e2ed831e9192b2f49fcfe50",
  "source": {
    "blob": "1df0d54790a616ac0c3483f69f0ddebd2eb772ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1031,
    "line": 936,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NNReal/Variantae654487fa769b6b7d21464c62f23a343b9c48423beea93e6e89132e70c1142a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e2ed831e9192b2f49fcfe5038e8b8daa4c8bfda877346542f204199b946a2d4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NNReal/Variantae654487fa769b6b7d21464c62f23a343b9c48423beea93e6e89132e70c1142a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f05a668-3f9f-2e71-c3a0-8e67679707da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 936–1031.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.Real.enorm_rpow_of_nonneg {x y : ℝ} (hx : 0 ≤ x) (hy : 0 ≤ y) :
    ‖x ^ y‖ₑ = ‖x‖ₑ ^ y := by simp [enorm, nnnorm_rpow_of_nonneg hx, coe_rpow_of_nonneg _ hy]

end ENNReal

-- Porting note(https://github.com/leanprover-community/mathlib4/issues/6038): restore
-- section Tactics

-- /-!
-- ## Tactic extensions for powers on `ℝ≥0` and `ℝ≥0∞`
-- -/


-- namespace NormNum

-- theorem nnrpow_pos (a : ℝ≥0) (b : ℝ) (b' : ℕ) (c : ℝ≥0) (hb : b = b') (h : a ^ b' = c) :
--     a ^ b = c := by rw [← h, hb, NNReal.rpow_natCast]

-- theorem nnrpow_neg (a : ℝ≥0) (b : ℝ) (b' : ℕ) (c c' : ℝ≥0) (hb : b = b') (h : a ^ b' = c)
--     (hc : c⁻¹ = c') : a ^ (-b) = c' := by
--   rw [← hc, ← h, hb, NNReal.rpow_neg, NNReal.rpow_natCast]

-- theorem ennrpow_pos (a : ℝ≥0∞) (b : ℝ) (b' : ℕ) (c : ℝ≥0∞) (hb : b = b') (h : a ^ b' = c) :
--     a ^ b = c := by rw [← h, hb, ENNReal.rpow_natCast]

-- theorem ennrpow_neg (a : ℝ≥0∞) (b : ℝ) (b' : ℕ) (c c' : ℝ≥0∞) (hb : b = b') (h : a ^ b' = c)
--     (hc : c⁻¹ = c') : a ^ (-b) = c' := by
--   rw [← hc, ← h, hb, ENNReal.rpow_neg, ENNReal.rpow_natCast]

-- /-- Evaluate `NNReal.rpow a b` where `a` is a rational numeral and `b` is an integer. -/
-- unsafe def prove_nnrpow : expr → expr → tactic (expr × expr) :=
--   prove_rpow' `` nnrpow_pos `` nnrpow_neg `` NNReal.rpow_zero q(ℝ≥0) q(ℝ) q((1 : ℝ≥0))

-- /-- Evaluate `ENNReal.rpow a b` where `a` is a rational numeral and `b` is an integer. -/
-- unsafe def prove_ennrpow : expr → expr → tactic (expr × expr) :=
--   prove_rpow' `` ennrpow_pos `` ennrpow_neg `` ENNReal.rpow_zero q(ℝ≥0∞) q(ℝ) q((1 : ℝ≥0∞))

-- /-- Evaluates expressions of the form `rpow a b` and `a ^ b` in the special case where
-- `b` is an integer and `a` is a positive rational (so it's really just a rational power). -/
-- @[norm_num]
-- unsafe def eval_nnrpow_ennrpow : expr → tactic (expr × expr)
--   | q(@Pow.pow _ _ NNReal.Real.hasPow $(a) $(b)) => b.to_int >> prove_nnrpow a b
--   | q(NNReal.rpow $(a) $(b)) => b.to_int >> prove_nnrpow a b
--   | q(@Pow.pow _ _ ENNReal.Real.hasPow $(a) $(b)) => b.to_int >> prove_ennrpow a b
--   | q(ENNReal.rpow $(a) $(b)) => b.to_int >> prove_ennrpow a b
--   | _ => tactic.failed

-- end NormNum

-- namespace Tactic

-- namespace Positivity

-- private theorem nnrpow_pos {a : ℝ≥0} (ha : 0 < a) (b : ℝ) : 0 < a ^ b :=
--   NNReal.rpow_pos ha

-- /-- Auxiliary definition for the `positivity` tactic to handle real powers of nonnegative reals.
-- -/
-- unsafe def prove_nnrpow (a b : expr) : tactic strictness := do
--   let strictness_a ← core a
--   match strictness_a with
--     | positive p => positive <$> mk_app `` nnrpow_pos [p, b]
--     | _ => failed

-- -- We already know `0 ≤ x` for all `x : ℝ≥0`
-- private theorem ennrpow_pos {a : ℝ≥0∞} {b : ℝ} (ha : 0 < a) (hb : 0 < b) : 0 < a ^ b :=
--   ENNReal.rpow_pos_of_nonneg ha hb.le

-- /-- Auxiliary definition for the `positivity` tactic to handle real powers of extended
-- nonnegative reals. -/
-- unsafe def prove_ennrpow (a b : expr) : tactic strictness := do
--   let strictness_a ← core a
--   let strictness_b ← core b
--   match strictness_a, strictness_b with
--     | positive pa, positive pb => positive <$> mk_app `` ennrpow_pos [pa, pb]
--     | positive pa, nonnegative pb => positive <$> mk_app `` ENNReal.rpow_pos_of_nonneg [pa, pb]
--     | _, _ => failed

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

-- end Tactic

-- end Tactics
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NNReal/Variantae654487fa769b6b7d21464c62f23a343b9c48423beea93e6e89132e70c1142a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NNReal/Variantae654487fa769b6b7d21464c62f23a343b9c48423beea93e6e89132e70c1142a.lean#L936).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1df0d54790a616ac0c3483f69f0ddebd2eb772ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
