# bD_close

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
      "line": 1143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:142c97f1-8842-cc60-d55f-94af91a55a57",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b8516fc-fff7-fb4a-67da-82f396b91b81",
  "kind": "theorem",
  "lexical_name": "bD_close",
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
  "slug": "bd-close--aea254655a53b2a21f084ea4",
  "source": {
    "blob": "749ca9b7ad43eb4a407475d2aa8aa7c8324b5f67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1210,
    "line": 1143,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aea254655a53b2a21f084ea466390d9f8a618c0cb0ef9e19c2bf780c48efa1f9",
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

Occurrence: `result:6b8516fc-fff7-fb4a-67da-82f396b91b81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1143–1210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bD_close (hϱ : TaperProfile ϱ) (h0 : 0 < lam) (h1 : lam ≤ 1) (hw : 1 ≤ w)
    (hwL : 8 * w ≤ L) :
    |L⁻¹ * (∫ u, phiD ϱ lam L w u ^ 4) - bStar lam| ≤ 4 * w / L := by
  have hw0 : 0 < w := by linarith
  have hwL' : 2 * w ≤ L := by linarith
  have hL : 0 < L := by linarith
  have hsub : bStar lam = L⁻¹ * ∫ u in Set.Icc (-(L/2)) (L/2), vStar lam (u / L) ^ 2 := by
    rw [MeasureTheory.integral_Icc_eq_integral_Ioc,
      ← intervalIntegral.integral_of_le (by linarith : -(L/2) ≤ L/2),
      integral_scale (v := fun s => vStar lam s ^ 2) hL]
    unfold bStar
    field_simp
  have hwin : ∫ u, phiD ϱ lam L w u ^ 4
      = ∫ u, vStar lam (u / L) ^ 2 * Taper.phi ϱ L w u ^ 4 := by
    have e : (fun u => phiD ϱ lam L w u ^ 4)
        = fun u => vStar lam (u / L) ^ 2 * Taper.phi ϱ L w u ^ 4 := by
      have h2 := phiD_sq_eq hϱ h0 h1 hw0 hwL'
      funext u
      have := congrFun h2 u
      calc phiD ϱ lam L w u ^ 4 = (phiD ϱ lam L w u ^ 2) ^ 2 := by ring
        _ = (vStar lam (u / L) * Taper.phi ϱ L w u ^ 2) ^ 2 := by rw [this]
        _ = vStar lam (u / L) ^ 2 * Taper.phi ϱ L w u ^ 4 := by ring
    rw [e]
  rw [hwin, hsub]
  have hcore := edge_estimate (h := fun u => vStar lam (u / L) ^ 2)
    (p := fun u => Taper.phi ϱ L w u ^ 4) hL hw0 hwL'
    (fun u => by
      rw [abs_pow]
      calc |vStar lam (u / L)| ^ 2 ≤ 1 ^ 2 := by
            apply pow_le_pow_left₀ (abs_nonneg _) ?_ 2
            unfold vStar
            exact Real.abs_cos_le_one _
        _ = 1 := one_pow 2)
    (fun u => by positivity)
    (fun u => by
      calc Taper.phi ϱ L w u ^ 4 ≤ 1 ^ 4 :=
            pow_le_pow_left₀ (Taper.phi_nonneg hϱ u) (Taper.phi_le_one hϱ u) 4
        _ = 1 := one_pow 4)
    (fun u hu => by
      show Taper.phi ϱ L w u ^ 4 = 1
      rw [Taper.phi_eq_one hϱ hw0 hu, one_pow])
    (fun u hu => by
      show Taper.phi ϱ L w u ^ 4 = 0
      rw [Taper.phi_eq_zero hϱ hw0 hu, zero_pow (by norm_num : (4:ℕ) ≠ 0)])
    ((Taper.phi_continuous hϱ hw0 hwL').pow 4)
    (by
      unfold vStar
      fun_prop)
  have e : L⁻¹ * (∫ u, vStar lam (u / L) ^ 2 * Taper.phi ϱ L w u ^ 4)
      - L⁻¹ * ∫ u in Set.Icc (-(L/2)) (L/2), vStar lam (u / L) ^ 2
      = L⁻¹ * ((∫ u, vStar lam (u / L) ^ 2 * Taper.phi ϱ L w u ^ 4)
        - ∫ u in Set.Icc (-(L/2)) (L/2), vStar lam (u / L) ^ 2) := by ring
  rw [e, abs_mul, abs_of_pos (by positivity : (0:ℝ) < L⁻¹)]
  calc L⁻¹ * |(∫ u, vStar lam (u / L) ^ 2 * Taper.phi ϱ L w u ^ 4)
      - ∫ u in Set.Icc (-(L/2)) (L/2), vStar lam (u / L) ^ 2|
      ≤ L⁻¹ * (2 * w) := mul_le_mul_of_nonneg_left hcore (by positivity)
    _ ≤ 4 * w / L := by
        rw [div_eq_mul_inv]
        nlinarith [hw0.le, inv_pos.mpr hL]

section JMoment
/-! #### jD_close: the J-moment of the window vs J* (no Fubini — everything is one-variable:
the sharp-window autocorrelation has a trigonometric closed form (product-to-sum + explicit
antiderivatives), its y-moment evaluates to (L³/2)·(the closed form of J*) [jStar_closed], and
the ramp only moves the autocorrelation by 4w pointwise). -/

/-- the sharp-cutoff comparison autocorrelation, in closed form:
Cfun y := (L−y)/2 · cos(ω̃y) + sin(ω̃(L−y))/(2ω̃), ω̃ := √2λ/L. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean#L1143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `749ca9b7ad43eb4a407475d2aa8aa7c8324b5f67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
