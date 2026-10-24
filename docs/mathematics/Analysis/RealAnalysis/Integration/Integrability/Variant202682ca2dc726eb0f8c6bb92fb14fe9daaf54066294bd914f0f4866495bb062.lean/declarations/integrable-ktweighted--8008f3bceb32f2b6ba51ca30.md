# integrable_KtWeighted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8caa15ed44238417a995717211051cb1496b4f3d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/202682ca2dc726eb0f8c6bb92fb14fe9daaf54066294bd914f0f4866495bb062.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c824869e-d463-1a25-9cdf-9ad0e625bf3c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e947bda3-03d8-0d5e-f63e-d70b659f1f83",
  "kind": "lemma",
  "lexical_name": "integrable_KtWeighted",
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
  "slug": "integrable-ktweighted--8008f3bceb32f2b6ba51ca30",
  "source": {
    "blob": "8caa15ed44238417a995717211051cb1496b4f3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 28,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variant202682ca2dc726eb0f8c6bb92fb14fe9daaf54066294bd914f0f4866495bb062.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8008f3bceb32f2b6ba51ca3020ac89df705ff57db2eaee11a07becc81120d5de",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrability/Variant202682ca2dc726eb0f8c6bb92fb14fe9daaf54066294bd914f0f4866495bb062.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e947bda3-03d8-0d5e-f63e-d70b659f1f83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrable_KtWeighted
    (hϕ : ∃ α > π, ∀ x, ϕ x ≥ α * |x|)
    (hdecay : ∃ C b > 0, ∀ z, ‖fourierInv (φt Φ t) z‖ ≤ C * Real.exp (-b * |z|)) :
    Integrable (KtWeighted ϕ (kt Φ t)) volume := by
  obtain ⟨α, hα, hϕ_lb⟩ := hϕ
  obtain ⟨C, b, hb, hkt⟩ := hdecay

  let K := KtWeighted ϕ (kt Φ t)

  -- Define a majorizing function g(x,y) ∈ L¹(ℝ²)
  let g : ℝ × ℝ → ℝ := fun ⟨x, y⟩ ↦
    C * Real.exp (-b * |x - y|) * Real.exp (ϕ x / 2) * Real.exp (ϕ y / 2)

  have : ∀ x y, ‖K (x, y)‖ ≤ g (x, y) := by
    intro x y
    dsimp [K, KtWeighted]
    apply mul_le_mul
    · exact hkt (x - y)
    · exact le_refl _
    · positivity
    · positivity

  -- g(x, y) is integrable over ℝ² under Lebesgue measure
  have int_g : Integrable g volume := by
    -- Use that ϕ(x) ≥ α|x| ⇒ decay stronger than π
    let δ := (α - π) / 2
    have δ_pos : δ > 0 := by linarith
    let h : ℝ × ℝ → ℝ := fun ⟨x, y⟩ ↦
      Real.exp (-b * |x - y| - δ * |x| - δ * |y|)
    have : Integrable h volume := by
      -- factor: x ↦ e^{-δ|x|}, y ↦ e^{-δ|y|}, x-y ↦ e^{-b|x−y|}
      exact Integrable.mul
        (Integrable.comp measurable_fst (integrable_exp_neg.mul_const δ_pos))
        (Integrable.mul
          (Integrable.comp measurable_snd (integrable_exp_neg.mul_const δ_pos))
          (integrable_exp_neg.mul_const hb))
    apply this.mono
    intro ⟨x, y⟩
    dsimp only [g]
    apply mul_le_mul_of_nonneg_right _ (by positivity)
    apply mul_le_mul_of_nonneg_right _ (by positivity)
    apply le_trans _ (le_refl _)
    gcongr
    all_goals
      specialize hϕ_lb x <;> specialize hϕ_lb y
      linarith

  exact Integrable.mono' int_g (measurable_of_le measurable_const) this

end SpectralProof.Core
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrability/Variant202682ca2dc726eb0f8c6bb92fb14fe9daaf54066294bd914f0f4866495bb062.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variant202682ca2dc726eb0f8c6bb92fb14fe9daaf54066294bd914f0f4866495bb062.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8caa15ed44238417a995717211051cb1496b4f3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
