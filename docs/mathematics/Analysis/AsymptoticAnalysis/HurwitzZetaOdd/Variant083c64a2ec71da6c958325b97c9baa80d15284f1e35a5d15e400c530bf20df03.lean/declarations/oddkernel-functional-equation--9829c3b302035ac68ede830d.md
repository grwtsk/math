# oddKernel_functional_equation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f63abc696aeec59a76ab48157eb9ca4ca6c4505c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3b1c753-b71c-9f53-b114-ece19fa5d933",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8fb3ba77-0ed0-8650-7479-231d51021612",
  "kind": "lemma",
  "lexical_name": "oddKernel_functional_equation",
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
  "slug": "oddkernel-functional-equation--9829c3b302035ac68ede830d",
  "source": {
    "blob": "f63abc696aeec59a76ab48157eb9ca4ca6c4505c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 178,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9829c3b302035ac68ede830d987afde3bab722a4279d520e9d58fd5055d39a7a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fb3ba77-0ed0-8650-7479-231d51021612`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma oddKernel_functional_equation (a : UnitAddCircle) (x : ℝ) :
    oddKernel a x = 1 / x ^ (3 / 2 : ℝ) * sinKernel a (1 / x) := by
  -- first reduce to `0 < x`
  rcases le_or_lt x 0 with hx | hx
  · rw [oddKernel_undef _ hx, sinKernel_undef _ (one_div_nonpos.mpr hx), mul_zero]
  induction a using QuotientAddGroup.induction_on with | H a =>
  have h1 : -1 / (I * ↑(1 / x)) = I * x := by rw [one_div, ofReal_inv, mul_comm, ← div_div,
    div_inv_eq_mul, div_eq_mul_inv, inv_I, mul_neg, neg_one_mul, neg_mul, neg_neg, mul_comm]
  have h2 : (-I * (I * ↑(1 / x))) = 1 / x := by
    rw [← mul_assoc, neg_mul, I_mul_I, neg_neg, one_mul, ofReal_div, ofReal_one]
  have h3 : (x : ℂ) ^ (3 / 2 : ℂ) ≠ 0 := by
    simp only [Ne, cpow_eq_zero_iff, ofReal_eq_zero, hx.ne', false_and, not_false_eq_true]
  have h4 : arg x ≠ π := by rw [arg_ofReal_of_nonneg hx.le]; exact pi_ne_zero.symm
  rw [← ofReal_inj, oddKernel_def, ofReal_mul, sinKernel_def, jacobiTheta₂'_functional_equation',
    h1, h2]
  generalize jacobiTheta₂'' a (I * ↑x) = J
  rw [one_div (x : ℂ), inv_cpow _ _ h4, div_inv_eq_mul, one_div, ofReal_inv, ofReal_cpow hx.le,
    ofReal_div, ofReal_ofNat, ofReal_ofNat, ← mul_div_assoc _ _ (-2 * π : ℂ),
    eq_div_iff <| mul_ne_zero (neg_ne_zero.mpr two_ne_zero) (ofReal_ne_zero.mpr pi_ne_zero),
    ← div_eq_inv_mul, eq_div_iff h3, mul_comm J _, mul_right_comm]

end kernel_defs

section sum_formulas

/-!
## Formulae for the kernels as sums
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f63abc696aeec59a76ab48157eb9ca4ca6c4505c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
