# abs_im_integral_logDeriv_horizontal_le_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d423497ad4094e1b0ce85926c78132fbe710c7ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a88ecc46-6c30-76fd-9450-b02d434b0f88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b503cae-1c50-2e78-1981-cb268b9ffa5d",
  "kind": "theorem",
  "lexical_name": "abs_im_integral_logDeriv_horizontal_le_pi",
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
  "slug": "abs-im-integral-logderiv-horizontal-le-pi--c928f01b08a7f1761ce26d0d",
  "source": {
    "blob": "d423497ad4094e1b0ce85926c78132fbe710c7ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c928f01b08a7f1761ce26d0d9783a231c9c03b9cb9aa01d6c09a0c0493c7347f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b503cae-1c50-2e78-1981-cb268b9ffa5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_im_integral_logDeriv_horizontal_le_pi {f : ℂ → ℂ} {T a b : ℝ} (hab : a ≤ b)
    (hf : ∀ σ ∈ Icc a b, AnalyticAt ℂ f (σ + T * I))
    (hre : ∀ σ ∈ Icc a b, 0 < (f (σ + T * I)).re) :
    |(∫ σ in a..b, logDeriv f (σ + T * I)).im| ≤ Real.pi := by
  set g : ℝ → ℂ := fun σ => f (σ + T * I) with hg
  set g' : ℝ → ℂ := fun σ => deriv f (σ + T * I) with hg'
  have hderiv : ∀ σ ∈ Icc a b, HasDerivAt g (g' σ) σ := fun σ hσ => by
    have := ((hf σ hσ).differentiableAt.hasDerivAt).comp σ (hasDerivAt_horizontal T σ)
    exact this.congr_deriv (mul_one _)
  have hcont : ContinuousOn g' (Icc a b) := by
    intro σ hσ
    have hd : ContinuousAt (deriv f) (σ + T * I) := (hf σ hσ).deriv.continuousAt
    have hp : ContinuousAt (fun σ : ℝ => (σ : ℂ) + T * I) σ := by fun_prop
    exact (hd.comp (f := fun σ : ℝ => (σ : ℂ) + T * I) hp).continuousWithinAt
  have key := abs_im_integral_logDeriv_le_pi hab hderiv hcont hre
  have e : (fun σ => g' σ / g σ) = fun σ : ℝ => logDeriv f (σ + T * I) := by
    funext σ
    simp only [hg, hg', logDeriv_apply]
  rw [e] at key
  exact key

/-! ### (B) one partial-fraction term -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d423497ad4094e1b0ce85926c78132fbe710c7ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
