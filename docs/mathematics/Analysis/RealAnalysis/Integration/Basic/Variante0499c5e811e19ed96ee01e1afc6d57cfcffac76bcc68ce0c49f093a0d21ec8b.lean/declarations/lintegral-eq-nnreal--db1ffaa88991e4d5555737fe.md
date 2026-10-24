# lintegral_eq_nnreal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e3247e18ae4dc134c0ac49995458ef2750e8efb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0499c5e811e19ed96ee01e1afc6d57cfcffac76bcc68ce0c49f093a0d21ec8b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ece2fb4-c67d-1a82-1c0a-bff78c134d11",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef1f9a1f-6675-1450-3064-4fd1553bfae6",
  "kind": "theorem",
  "lexical_name": "lintegral_eq_nnreal",
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
  "slug": "lintegral-eq-nnreal--db1ffaa88991e4d5555737fe",
  "source": {
    "blob": "7e3247e18ae4dc134c0ac49995458ef2750e8efb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 158,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variante0499c5e811e19ed96ee01e1afc6d57cfcffac76bcc68ce0c49f093a0d21ec8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db1ffaa88991e4d5555737fee5952ef3766768638b012f0f2787531e880962f8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variante0499c5e811e19ed96ee01e1afc6d57cfcffac76bcc68ce0c49f093a0d21ec8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef1f9a1f-6675-1450-3064-4fd1553bfae6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_eq_nnreal {m : MeasurableSpace α} (f : α → ℝ≥0∞) (μ : Measure α) :
    ∫⁻ a, f a ∂μ =
      ⨆ (φ : α →ₛ ℝ≥0) (_ : ∀ x, ↑(φ x) ≤ f x), (φ.map ((↑) : ℝ≥0 → ℝ≥0∞)).lintegral μ := by
  rw [lintegral]
  refine
    le_antisymm (iSup₂_le fun φ hφ ↦ ?_) (iSup_mono' fun φ ↦ ⟨φ.map ((↑) : ℝ≥0 → ℝ≥0∞), le_rfl⟩)
  by_cases h : ∀ᵐ a ∂μ, φ a ≠ ∞
  · let ψ := φ.map ENNReal.toNNReal
    replace h : ψ.map ((↑) : ℝ≥0 → ℝ≥0∞) =ᵐ[μ] φ := h.mono fun a => ENNReal.coe_toNNReal
    have : ∀ x, ↑(ψ x) ≤ f x := fun x => le_trans ENNReal.coe_toNNReal_le_self (hφ x)
    exact le_iSup₂_of_le (φ.map ENNReal.toNNReal) this (ge_of_eq <| lintegral_congr h)
  · have h_meas : μ (φ ⁻¹' {∞}) ≠ 0 := mt measure_eq_zero_iff_ae_notMem.1 h
    refine le_trans le_top (ge_of_eq <| iSup_eq_top.2 fun b hb => ?_)
    obtain ⟨n, hn⟩ : ∃ n : ℕ, b < n * μ (φ ⁻¹' {∞}) := exists_nat_mul_gt h_meas (ne_of_lt hb)
    use (const α (n : ℝ≥0)).restrict (φ ⁻¹' {∞})
    simp only [lt_iSup_iff, exists_prop, coe_restrict, φ.measurableSet_preimage, coe_const,
      ENNReal.coe_indicator, map_coe_ennreal_restrict, SimpleFunc.map_const, ENNReal.coe_natCast,
      restrict_const_lintegral]
    refine ⟨indicator_le fun x hx => le_trans ?_ (hφ _), hn⟩
    simp only [mem_preimage, mem_singleton_iff] at hx
    simp only [hx, le_top]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variante0499c5e811e19ed96ee01e1afc6d57cfcffac76bcc68ce0c49f093a0d21ec8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variante0499c5e811e19ed96ee01e1afc6d57cfcffac76bcc68ce0c49f093a0d21ec8b.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e3247e18ae4dc134c0ac49995458ef2750e8efb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
