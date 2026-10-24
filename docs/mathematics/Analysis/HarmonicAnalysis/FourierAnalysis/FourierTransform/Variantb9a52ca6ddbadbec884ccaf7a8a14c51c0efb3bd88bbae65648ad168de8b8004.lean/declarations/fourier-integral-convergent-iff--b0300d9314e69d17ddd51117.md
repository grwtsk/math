# fourier_integral_convergent_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f2cf859-7553-3187-e099-76aca2631a01",
  "kind": "theorem",
  "lexical_name": "fourier_integral_convergent_iff",
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
  "slug": "fourier-integral-convergent-iff--b0300d9314e69d17ddd51117",
  "source": {
    "blob": "4ea99a82ef6d9f40b9a88d891fbd4440ef38fc70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 137,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0300d9314e69d17ddd511172573d682ca2ef0f95e118c2b38c840a84544c918",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f2cf859-7553-3187-e099-76aca2631a01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourier_integral_convergent_iff (he : Continuous e)
    (hL : Continuous fun p : V × W => L p.1 p.2) {f : V → E} (w : W) :
    Integrable f μ ↔ Integrable (fun v : V => e[-L v w] • f v) μ := by
  -- first prove one-way implication
  have aux :
    ∀ {g : V → E} (_ : Integrable g μ) (x : W), Integrable (fun v : V => e[-L v x] • g v) μ := by
    intro g hg x
    have c : Continuous fun v => e[-L v x] := by
      refine' (continuous_induced_rng.mp he).comp (continuous_ofAdd.comp (Continuous.neg _))
      exact hL.comp (continuous_prod_mk.mpr ⟨continuous_id, continuous_const⟩)
    rw [← integrable_norm_iff (c.aestronglyMeasurable.smul hg.1)]
    convert hg.norm using 2
    rw [norm_smul, Complex.norm_eq_abs, abs_coe_circle, one_mul]
  -- then use it for both directions
  refine' ⟨fun hf => aux hf w, fun hf => _⟩
  convert aux hf (-w)
  rw [← smul_assoc, smul_eq_mul, ← Submonoid.coe_mul, ← MonoidHom.map_mul, ← ofAdd_add,
    LinearMap.map_neg, neg_neg, ← sub_eq_add_neg, sub_self, ofAdd_zero, MonoidHom.map_one,
    Submonoid.coe_one, one_smul]
#align vector_fourier.fourier_integral_convergent_iff VectorFourier.fourier_integral_convergent_iff

variable [CompleteSpace E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ea99a82ef6d9f40b9a88d891fbd4440ef38fc70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
