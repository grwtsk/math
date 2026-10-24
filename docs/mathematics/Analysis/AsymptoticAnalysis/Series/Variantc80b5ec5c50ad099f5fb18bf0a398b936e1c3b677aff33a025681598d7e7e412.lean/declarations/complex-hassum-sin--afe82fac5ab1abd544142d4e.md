# Complex.hasSum_sin'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32ad17aa-8b85-2261-cf01-0887bea67afc",
  "kind": "theorem",
  "lexical_name": "Complex.hasSum_sin'",
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
  "slug": "complex-hassum-sin--afe82fac5ab1abd544142d4e",
  "source": {
    "blob": "338b1b342d1b92e1136c2b0c138dac80b1dfc5a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 56,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afe82fac5ab1abd544142d4e35f8f618dd7bb6516e35d0e8f0edc59be7c0f12a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32ad17aa-8b85-2261-cf01-0887bea67afc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Complex.hasSum_sin' (z : ℂ) :
    HasSum (fun n : ℕ => (z * Complex.I) ^ (2 * n + 1) / ↑(2 * n + 1)! / Complex.I)
      (Complex.sin z) := by
  rw [Complex.sin, Complex.exp_eq_exp_ℂ]
  have := (((expSeries_div_hasSum_exp ℂ (-z * Complex.I)).sub
    (expSeries_div_hasSum_exp ℂ (z * Complex.I))).mul_right Complex.I).div_const 2
  replace := (Nat.divModEquiv 2).symm.hasSum_iff.mpr this
  dsimp [Function.comp] at this
  simp_rw [← mul_comm 2 _] at this
  refine' this.prod_fiberwise fun k => _
  dsimp only
  convert hasSum_fintype (_ : Fin 2 → ℂ) using 1
  rw [Fin.sum_univ_two]
  simp_rw [Fin.val_zero, Fin.val_one, add_zero, pow_succ', pow_mul, mul_pow, neg_sq, sub_self,
    zero_mul, zero_div, zero_add, neg_mul, mul_neg, neg_div, ← neg_add', ← two_mul,
    neg_mul, neg_div, mul_assoc, mul_div_cancel_left _ (two_ne_zero : (2 : ℂ) ≠ 0), Complex.div_I]
#align complex.has_sum_sin' Complex.hasSum_sin'

/-- The power series expansion of `Complex.cos`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `338b1b342d1b92e1136c2b0c138dac80b1dfc5a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
