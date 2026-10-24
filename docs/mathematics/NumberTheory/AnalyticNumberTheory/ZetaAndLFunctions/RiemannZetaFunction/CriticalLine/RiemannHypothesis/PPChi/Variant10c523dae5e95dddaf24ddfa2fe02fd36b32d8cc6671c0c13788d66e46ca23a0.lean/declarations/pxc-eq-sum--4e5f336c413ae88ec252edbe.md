# PXc_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db2e3d52969f93d93f479a49e8e0c273da06f899",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 269,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b6466d1f-4d39-7304-5652-4d55378c42d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8373cb6-d8d0-8769-9d57-dfc78324d4fe",
  "kind": "lemma",
  "lexical_name": "PXc_eq_sum",
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
  "slug": "pxc-eq-sum--4e5f336c413ae88ec252edbe",
  "source": {
    "blob": "db2e3d52969f93d93f479a49e8e0c273da06f899",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 269,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e5f336c413ae88ec252edbe31f1918393d3beced3475c8af95501fa8235f3d3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8373cb6-d8d0-8769-9d57-dfc78324d4fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PXc_eq_sum (c : ℕ → ℂ) (X τ : ℝ) :
    PXc c X τ = -(1 / π) * ∑ n ∈ primeRange X,
      acoef n * ‖c n‖ * Real.cos (τ * Real.log n - (c n).arg) := by
  unfold PXc
  congr 1
  rw [Complex.re_sum]
  refine Finset.sum_congr rfl fun n hn => ?_
  have hn1 : 1 ≤ n := one_le_of_mem_primeRange hn
  rw [cpow_neg_half_sub_I_mul hn1]
  have hsplit : ((Λ n : ℝ) : ℂ) * c n * ((((Real.sqrt n)⁻¹ : ℝ) : ℂ)
        * Complex.exp ((-(τ * Real.log n) : ℝ) * Complex.I))
      = (((Λ n : ℝ) * (Real.sqrt n)⁻¹ : ℝ) : ℂ)
        * (c n * Complex.exp ((-(τ * Real.log n) : ℝ) * Complex.I)) := by
    push_cast
    ring
  rw [hsplit, Complex.re_ofReal_mul]
  have hc : c n * Complex.exp ((-(τ * Real.log n) : ℝ) * Complex.I)
      = ((‖c n‖ : ℝ) : ℂ) * Complex.exp ((((c n).arg - τ * Real.log n : ℝ)) * Complex.I) := by
    conv_lhs => rw [← Complex.norm_mul_exp_arg_mul_I (c n)]
    rw [mul_assoc, ← Complex.exp_add]
    congr 2
    push_cast
    ring
  rw [hc, Complex.re_ofReal_mul, Complex.exp_ofReal_mul_I_re]
  have hcos : Real.cos ((c n).arg - τ * Real.log n) = Real.cos (τ * Real.log n - (c n).arg) := by
    rw [← Real.cos_neg]
    congr 1
    ring
  rw [hcos]
  unfold acoef
  rw [div_eq_mul_inv]
  ring

end PXcForm

/-! ## H-MV with phases -/

section MVPh
variable {C : ℝ}

/-- Mirror of MV_real with a per-index phase: for real weights u, v and phases φv,
both trig sums Σ_{n≠m} u_n v_m·trig(cc(y_n−y_m) − (φv_n − φv_m))/(y_n−y_m) obey the H-MV bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db2e3d52969f93d93f479a49e8e0c273da06f899` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
