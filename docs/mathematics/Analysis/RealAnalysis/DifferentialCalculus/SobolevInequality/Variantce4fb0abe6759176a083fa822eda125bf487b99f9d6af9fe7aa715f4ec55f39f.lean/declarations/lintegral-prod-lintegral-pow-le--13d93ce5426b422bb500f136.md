# lintegral_prod_lintegral_pow_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3881a6ce-d63c-695b-2947-144d2ac33160",
  "kind": "theorem",
  "lexical_name": "lintegral_prod_lintegral_pow_le",
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
  "slug": "lintegral-prod-lintegral-pow-le--13d93ce5426b422bb500f136",
  "source": {
    "blob": "7f77ea7698c69b09fd175fb6d232115ceab6fe56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 278,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13d93ce5426b422bb500f1360a216042a5a42c7b2f194b6d1c2e0c2861a5eeca",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3881a6ce-d63c-695b-2947-144d2ac33160`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_prod_lintegral_pow_le [Fintype ι] [∀ i, SigmaFinite (μ i)]
    {p : ℝ} (hp : Real.HolderConjugate #ι p)
    {f} (hf : Measurable f) :
    ∫⁻ x, ∏ i, (∫⁻ xᵢ, f (update x i xᵢ) ∂μ i) ^ ((1 : ℝ) / (#ι - 1 : ℝ)) ∂.pi μ
    ≤ (∫⁻ x, f x ∂.pi μ) ^ p := by
  have : Nontrivial ι :=
    Fintype.one_lt_card_iff_nontrivial.mp (by exact_mod_cast hp.lt)
  have h0 : (1 : ℝ) < #ι := by norm_cast; exact Fintype.one_lt_card
  have h1 : (0 : ℝ) < #ι - 1 := by linarith
  have h2 : 0 ≤ ((1 : ℝ) / (#ι - 1 : ℝ)) := by positivity
  have h3 : (#ι - 1 : ℝ) * ((1 : ℝ) / (#ι - 1 : ℝ)) ≤ 1 := by field_simp
  have h4 : p = 1 + 1 / (↑#ι - 1) := by field_simp; rw [mul_comm, hp.sub_one_mul_conj]
  rw [h4]
  convert lintegral_mul_prod_lintegral_pow_le μ h2 h3 hf using 2
  field_simp

end DecidableEq

/-! ## The Gagliardo-Nirenberg-Sobolev inequality -/

variable {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F]

/-- The **Gagliardo-Nirenberg-Sobolev inequality**.  Let `u` be a continuously differentiable
compactly-supported function `u` on `ℝⁿ`, for `n ≥ 2`.  (More literally we encode `ℝⁿ` as
`ι → ℝ` where `n := #ι` is finite and at least 2.)  Then the Lebesgue integral of the pointwise
expression `|u x| ^ (n / (n - 1))` is bounded above by the `n / (n - 1)`-th power of the Lebesgue
integral of the Fréchet derivative of `u`.

For a basis-free version, see `lintegral_pow_le_pow_lintegral_fderiv`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f77ea7698c69b09fd175fb6d232115ceab6fe56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
