# moments_frob

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a81db1ec-4d9d-11e1-66c3-2cb9ab5a8131",
  "kind": "theorem",
  "lexical_name": "moments_frob",
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
  "slug": "moments-frob--eec14e339246677b0cba9fab",
  "source": {
    "blob": "2fcd6f6db026d97bd8254fdc7c05b9871d8c0b29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 588,
    "line": 563,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eec14e339246677b0cba9fab734de0e2732d518d6020aaef3012ac3bf3915dfc",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a81db1ec-4d9d-11e1-66c3-2cb9ab5a8131`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 563–588.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem moments_frob (h : TracesBoundsXi P aT bT JT trG trG2 Ncnt)
    (hN0 : ∀ᶠ T in atTop, 0 ≤ Ncnt T) {c : ℝ} (hc0 : 0 < c)
    (hc : Tendsto (fun T => ThmD.cRatio (P.lam1 T) (aT T) (bT T) (JT T)) atTop (𝓝 c))
    {δ : ℝ} (hδ : 0 < δ) :
    ∀ᶠ T in atTop, trG2 T / (aT T * P.L T) ^ 2 ≤ (c⁻¹ + δ) * Ncnt T := by
  -- cRatio⁻¹ · N ~ c⁻¹ · N
  have hinv : Tendsto (fun T => (ThmD.cRatio (P.lam1 T) (aT T) (bT T) (JT T))⁻¹) atTop
      (𝓝 c⁻¹) := hc.inv₀ hc0.ne'
  have hcc : (fun T => (ThmD.cRatio (P.lam1 T) (aT T) (bT T) (JT T))⁻¹)
      ~[atTop] (fun _ => c⁻¹) :=
    (isEquivalent_const_iff_tendsto (inv_ne_zero hc0.ne')).2 hinv
  have h1 : (fun T => trG2 T / (aT T * P.L T) ^ 2) ~[atTop] (fun T => c⁻¹ * Ncnt T) := by
    have := h.frhat.trans (hcc.mul (IsEquivalent.refl (u := Ncnt) (l := atTop)))
    simpa [Pi.mul_def] using this
  have hv : ∀ᶠ T in atTop, 0 ≤ c⁻¹ * Ncnt T :=
    hN0.mono fun T hT => mul_nonneg (inv_pos.2 hc0).le hT
  have hδ' : 0 < δ * c := by positivity
  filter_upwards [eventually_abs_sub_le_of_isEquivalent h1 hv hδ', hN0] with T hT hN
  have := (abs_le.mp hT).2
  have e : δ * c * (c⁻¹ * Ncnt T) = δ * Ncnt T := by field_simp
  nlinarith [e]

end Moments

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean#L563).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fcd6f6db026d97bd8254fdc7c05b9871d8c0b29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
