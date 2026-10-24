# GRH_iff_spec_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d3c05a243afa6df9377ce86a9d0c08261fcc71c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/3604f116c73c2f16b1225c4ba8c1481688039853829a913e9a06075607d8e846.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d858a50-e2c4-c083-a7c2-29e2f54ebcea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b03e6568-c01a-74e5-1dbb-2ba3eeb4d36a",
  "kind": "theorem",
  "lexical_name": "GRH_iff_spec_real",
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
  "slug": "grh-iff-spec-real--3402061a24d92eb95feef5cc",
  "source": {
    "blob": "d3c05a243afa6df9377ce86a9d0c08261fcc71c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 33,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHIffSpecReal/Variant3604f116c73c2f16b1225c4ba8c1481688039853829a913e9a06075607d8e846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3402061a24d92eb95feef5cc198ec1b6b69f671910d6ea0f8eb6ae71e47a2c1b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHIffSpecReal/Variant3604f116c73c2f16b1225c4ba8c1481688039853829a913e9a06075607d8e846.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b03e6568-c01a-74e5-1dbb-2ba3eeb4d36a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem GRH_iff_spec_real
    (Φ : ℝ → ℂ) (Λπ : ℂ → ℂ)
    (hϕ : ∃ α > π, ∀ x, ϕ x ≥ α * |x|)
    (hΦ_symm : ∀ λ, Φ (-λ) = conj (Φ λ))
    (hΛ_entire : Entire Λπ)
    (hcanonical : ∀ λ, zetaDet ϕ (SpectralProof.Operators.Lsym_pi Φ hϕ) λ
                        = Λπ (1 / 2 + I * λ) / Λπ (1 / 2)) :
    GRH Λπ ↔ SpectrumReal Φ hϕ := by
  constructor
  · -- GRH ⇒ spectrum ⊆ ℝ
    intro hGRH
    intro μ hμ
    -- Invert μ to get ρ = ½ + iμ
    let ρ := SpectralProof.Determinants.inverseSpectralMap μ
    have : Λπ ρ = 0 := by
      -- If μ ∈ Spec(L), then det_ζ(I - λL) = 0 ⇒ Λπ(ρ) = 0
      have := hcanonical μ
      rw [SpectralProof.Determinants.zetaDet_def] at this
      rw [this, div_eq_zero_iff] at this
      exact this.1
    specialize hGRH ρ this
    rw [SpectralProof.Determinants.inverseSpectralMap, add_re] at hGRH
    simp only [ofReal_re, ofReal_im, zero_add] at hGRH
    rw [← hGRH, zero_im]
  · -- spectrum ⊆ ℝ ⇒ GRH
    intro hSpec ρ hρ_zero
    let μ := SpectralProof.Determinants.spectralMap ρ
    have : μ ∈ spectrum (SpectralProof.Operators.Lsym_pi Φ hϕ) :=
      SpectralProof.Determinants.zero_maps_to_spectrum Φ Λπ hϕ ρ hρ_zero
    specialize hSpec μ this
    -- ρ = ½ + iμ ⇒ Re(ρ) = ½ iff Im(μ) = 0
    rw [SpectralProof.Determinants.spectralMap, sub_re, ofReal_re, zero_sub,
        neg_re, div_re, ofReal_re, zero_div, zero_sub] at hSpec
    simp only [ofReal_re, div_zero] at hSpec
    field_simp [I_ne_zero] at hSpec
    rw [← hSpec]
    exact rfl

end SpectralProof.Equivalences
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHIffSpecReal/Variant3604f116c73c2f16b1225c4ba8c1481688039853829a913e9a06075607d8e846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHIffSpecReal/Variant3604f116c73c2f16b1225c4ba8c1481688039853829a913e9a06075607d8e846.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3c05a243afa6df9377ce86a9d0c08261fcc71c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
