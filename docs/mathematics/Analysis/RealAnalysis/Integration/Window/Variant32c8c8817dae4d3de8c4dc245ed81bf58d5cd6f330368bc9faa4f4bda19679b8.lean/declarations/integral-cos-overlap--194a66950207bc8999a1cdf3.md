# integral_cos_overlap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "749ca9b7ad43eb4a407475d2aa8aa7c8324b5f67",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9873d5c-422c-e5e9-e33d-a9550a5b1927",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0843d795-dca1-e792-06ac-2fbd0a03a12f",
  "kind": "theorem",
  "lexical_name": "integral_cos_overlap",
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
  "slug": "integral-cos-overlap--194a66950207bc8999a1cdf3",
  "source": {
    "blob": "749ca9b7ad43eb4a407475d2aa8aa7c8324b5f67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1260,
    "line": 1217,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:194a66950207bc8999a1cdf3d240c2ab5742d2c6e308f43924fa02292a0fbaea",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0843d795-dca1-e792-06ac-2fbd0a03a12f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1217–1260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_cos_overlap (h0 : 0 < lam) (hL : 0 < L) (y : ℝ) :
    ∫ u in (-(L/2))..(L/2 - y), vStar lam (u / L) * vStar lam ((u + y) / L)
      = Cfun lam L y := by
  have hωpos : (0:ℝ) < Real.sqrt 2 * lam * (1 / L) := by positivity
  set ω : ℝ := Real.sqrt 2 * lam * (1 / L) with hωdef
  have hH : ∀ u : ℝ, HasDerivAt (fun u => Real.cos (ω * y) * u / 2
      + Real.sin (ω * (2 * u + y)) / (4 * ω))
      (vStar lam (u / L) * vStar lam ((u + y) / L)) u := by
    intro u
    have hlin : HasDerivAt (fun u : ℝ => ω * (2 * u + y)) (ω * 2) u := by
      simpa using (((hasDerivAt_id u).const_mul (2:ℝ)).add_const y).const_mul ω
    have h1 : HasDerivAt (fun u : ℝ => Real.cos (ω * y) * u / 2)
        (Real.cos (ω * y) / 2) u := by
      simpa using ((hasDerivAt_id u).const_mul (Real.cos (ω * y))).div_const 2
    have h2 : HasDerivAt (fun u : ℝ => Real.sin (ω * (2 * u + y)) / (4 * ω))
        (Real.cos (ω * (2 * u + y)) * (ω * 2) / (4 * ω)) u :=
      ((Real.hasDerivAt_sin (ω * (2 * u + y))).comp u hlin).div_const (4 * ω)
    have h3 := h1.add h2
    refine h3.congr_deriv ?_
    unfold vStar
    have e1 : Real.sqrt 2 * lam * (u / L) = ω * u := by rw [hωdef]; ring
    have e2 : Real.sqrt 2 * lam * ((u + y) / L) = ω * (u + y) := by rw [hωdef]; ring
    rw [e1, e2]
    have hpts : Real.cos (ω * u) * Real.cos (ω * (u + y))
        = (Real.cos (ω * y) + Real.cos (ω * (2 * u + y))) / 2 := by
      have ha : ω * y = ω * (u + y) - ω * u := by ring
      have hb : ω * (2 * u + y) = ω * (u + y) + ω * u := by ring
      rw [ha, hb, Real.cos_sub, Real.cos_add]
      ring
    rw [hpts]
    field_simp
    ring
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun u _ => hH u)
    (Continuous.intervalIntegrable (by unfold vStar; fun_prop) _ _)]
  unfold Cfun
  rw [← hωdef]
  have e3 : ω * (2 * (L / 2 - y) + y) = ω * (L - y) := by ring
  have e6 : ω * (2 * -(L / 2) + y) = -(ω * (L - y)) := by ring
  rw [e3, e6, Real.sin_neg]
  field_simp
  ring

/-- the y-moment of the sharp autocorrelation, in closed form:
∫_0^L Cfun(y)·y dy = (L³/2)·(sin(2ϑ)/(8ϑ³) − cos(2ϑ)/(4ϑ²))  (explicit antiderivatives). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean#L1217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `749ca9b7ad43eb4a407475d2aa8aa7c8324b5f67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
