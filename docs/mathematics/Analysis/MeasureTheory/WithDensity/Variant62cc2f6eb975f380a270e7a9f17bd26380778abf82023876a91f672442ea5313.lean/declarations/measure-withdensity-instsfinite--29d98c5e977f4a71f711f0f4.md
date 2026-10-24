# Measure.withDensity.instSFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8613c6654f391af17735510f01f16b60ef7f50b3d2b4d43968c146cf2afafcef",
  "kind": "instance",
  "lexical_name": "Measure.withDensity.instSFinite",
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
  "slug": "measure-withdensity-instsfinite--29d98c5e977f4a71f711f0f4",
  "source": {
    "blob": "13b8bced081feb62dc5a16e2ce9acac3981bf1d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 630,
    "line": 602,
    "path": "GRWTSK/Analysis/MeasureTheory/WithDensity/Variant62cc2f6eb975f380a270e7a9f17bd26380778abf82023876a91f672442ea5313.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29d98c5e977f4a71f711f0f4fbd491b53fd7a6300141f7a98233c90d5544807e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/WithDensity/Variant62cc2f6eb975f380a270e7a9f17bd26380778abf82023876a91f672442ea5313.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8613c6654f391af17735510f01f16b60ef7f50b3d2b4d43968c146cf2afafcef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 602–630.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Measure.withDensity.instSFinite [SFinite μ] {f : α → ℝ≥0∞} :
    SFinite (μ.withDensity f) := by
  wlog hfm : Measurable f generalizing f
  · rcases exists_measurable_le_withDensity_eq μ f with ⟨g, hgm, -, h⟩
    exact h ▸ this hgm
  wlog hμ : IsFiniteMeasure μ generalizing μ
  · rw [← sum_sfiniteSeq μ, withDensity_sum]
    have (n : ℕ) : SFinite ((sfiniteSeq μ n).withDensity f) := this inferInstance
    infer_instance
  set s := {x | f x = ∞}
  have hs : MeasurableSet s := hfm (measurableSet_singleton _)
  have key := calc
    μ.withDensity f = μ.withDensity (sᶜ.indicator f) + μ.withDensity (s.indicator f) := by
      simp (disch := measurability) [withDensity_indicator, ← restrict_withDensity]
    _ = μ.withDensity (sᶜ.indicator f) + .sum fun _ : ℕ ↦ μ.withDensity (s.indicator 1) := by
      rw [← withDensity_tsum (by measurability)]
      congr 2 with x
      rw [ENNReal.tsum_apply]
      if hx : x ∈ s then simpa [hx, ENNReal.tsum_const_eq_top_of_ne_zero]
      else simp [hx]
  have : SigmaFinite (μ.withDensity (sᶜ.indicator f)) := by
    refine SigmaFinite.withDensity_of_ne_top <| ae_of_all _ fun x hx ↦ ?_
    simp [indicator_apply, ite_eq_iff, s] at hx
  have : SigmaFinite (μ.withDensity (s.indicator 1)) := by
    rw [withDensity_indicator hs]
    exact SigmaFinite.withDensity 1
  rw [key]
  infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/WithDensity/Variant62cc2f6eb975f380a270e7a9f17bd26380778abf82023876a91f672442ea5313.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/WithDensity/Variant62cc2f6eb975f380a270e7a9f17bd26380778abf82023876a91f672442ea5313.lean#L602).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13b8bced081feb62dc5a16e2ce9acac3981bf1d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
