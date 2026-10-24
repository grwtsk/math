# natCast_add_one_cpow_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1fa2d130b2f55f39d6e893f7a8953b6cfa02fd7d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:223bc773-451b-6a75-cf14-515745debbfa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2e3b811-e9d1-454a-b6c2-a82283cfbb7f",
  "kind": "lemma",
  "lexical_name": "natCast_add_one_cpow_ne_zero",
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
  "slug": "natcast-add-one-cpow-ne-zero--fc9e3102325c923652c10fbc",
  "source": {
    "blob": "1fa2d130b2f55f39d6e893f7a8953b6cfa02fd7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 238,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc9e3102325c923652c10fbc3593f8138bc05f38d9dd91cf577e3b6eb65d52f3",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2e3b811-e9d1-454a-b6c2-a82283cfbb7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma natCast_add_one_cpow_ne_zero (n : ℕ) (z : ℂ) : (n + 1 : ℂ) ^ z ≠ 0 :=
  mt (cpow_eq_zero_iff ..).mp fun H ↦ by norm_cast at H; exact H.1

end Complex

-- section Tactics

-- /-!
-- ## Tactic extensions for complex powers
-- -/


-- namespace NormNum

-- theorem cpow_pos (a b : ℂ) (b' : ℕ) (c : ℂ) (hb : b = b') (h : a ^ b' = c) : a ^ b = c := by
--   rw [← h, hb, Complex.cpow_natCast]

-- theorem cpow_neg (a b : ℂ) (b' : ℕ) (c c' : ℂ) (hb : b = b') (h : a ^ b' = c) (hc : c⁻¹ = c') :
--     a ^ (-b) = c' := by rw [← hc, ← h, hb, Complex.cpow_neg, Complex.cpow_natCast]

-- open Tactic

-- /-- Generalized version of `prove_cpow`, `prove_nnrpow`, `prove_ennrpow`. -/
-- unsafe def prove_rpow' (pos neg zero : Name) (α β one a b : expr) : tactic (expr × expr) := do
--   let na ← a.to_rat
--   let icα ← mk_instance_cache α
--   let icβ ← mk_instance_cache β
--   match match_sign b with
--     | Sum.inl b => do
--       let nc ← mk_instance_cache q(ℕ)
--       let (icβ, nc, b', hb) ← prove_nat_uncast icβ nc b
--       let (icα, c, h) ← prove_pow a na icα b'
--       let cr ← c
--       let (icα, c', hc) ← prove_inv icα c cr
--       pure (c', (expr.const neg []).mk_app [a, b, b', c, c', hb, h, hc])
--     | Sum.inr ff => pure (one, expr.const zero [] a)
--     | Sum.inr tt => do
--       let nc ← mk_instance_cache q(ℕ)
--       let (icβ, nc, b', hb) ← prove_nat_uncast icβ nc b
--       let (icα, c, h) ← prove_pow a na icα b'
--       pure (c, (expr.const Pos []).mk_app [a, b, b', c, hb, h])

-- /-- Evaluate `Complex.cpow a b` where `a` is a rational numeral and `b` is an integer. -/
-- unsafe def prove_cpow : expr → expr → tactic (expr × expr) :=
--   prove_rpow' `` cpow_pos `` cpow_neg `` Complex.cpow_zero q(ℂ) q(ℂ) q((1 : ℂ))

-- /-- Evaluates expressions of the form `cpow a b` and `a ^ b` in the special case where
-- `b` is an integer and `a` is a positive rational (so it's really just a rational power). -/
-- @[norm_num]
-- unsafe def eval_cpow : expr → tactic (expr × expr)
--   | q(@Pow.pow _ _ Complex.hasPow $(a) $(b)) => b.to_int >> prove_cpow a b
--   | q(Complex.cpow $(a) $(b)) => b.to_int >> prove_cpow a b
--   | _ => tactic.failed

-- end NormNum

-- end Tactics
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fa2d130b2f55f39d6e893f7a8953b6cfa02fd7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
