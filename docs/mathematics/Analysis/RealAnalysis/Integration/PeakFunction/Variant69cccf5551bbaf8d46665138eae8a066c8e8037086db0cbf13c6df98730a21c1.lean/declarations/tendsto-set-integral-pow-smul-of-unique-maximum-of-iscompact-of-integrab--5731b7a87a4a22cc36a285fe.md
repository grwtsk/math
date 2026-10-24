# tendsto_set_integral_pow_smul_of_unique_maximum_of_isCompact_of_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba778cef-b5ac-b3dd-227f-a294ba3cc397",
  "kind": "theorem",
  "lexical_name": "tendsto_set_integral_pow_smul_of_unique_maximum_of_isCompact_of_integrableOn",
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
  "slug": "tendsto-set-integral-pow-smul-of-unique-maximum-of-iscompact-of-integrab--5731b7a87a4a22cc36a285fe",
  "source": {
    "blob": "b90cfa897ae7acdc1cdd0d9595a2cbb381859c43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 302,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variant69cccf5551bbaf8d46665138eae8a066c8e8037086db0cbf13c6df98730a21c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5731b7a87a4a22cc36a285fe714a722d9e16c055092469020a79584390594541",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PeakFunction/Variant69cccf5551bbaf8d46665138eae8a066c8e8037086db0cbf13c6df98730a21c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba778cef-b5ac-b3dd-227f-a294ba3cc397`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_set_integral_pow_smul_of_unique_maximum_of_isCompact_of_integrableOn
    [MetrizableSpace α] [IsLocallyFiniteMeasure μ] [IsOpenPosMeasure μ] (hs : IsCompact s)
    {c : α → ℝ} (hc : ContinuousOn c s) (h'c : ∀ y ∈ s, y ≠ x₀ → c y < c x₀)
    (hnc : ∀ x ∈ s, 0 ≤ c x) (hnc₀ : 0 < c x₀) (h₀ : x₀ ∈ closure (interior s))
    (hmg : IntegrableOn g s μ) (hcg : ContinuousWithinAt g s x₀) :
    Tendsto (fun n : ℕ => (∫ x in s, c x ^ n ∂μ)⁻¹ • ∫ x in s, c x ^ n • g x ∂μ) atTop
      (𝓝 (g x₀)) := by
  have : x₀ ∈ s := by rw [← hs.isClosed.closure_eq]; exact closure_mono interior_subset h₀
  apply
    tendsto_set_integral_pow_smul_of_unique_maximum_of_isCompact_of_measure_nhdsWithin_pos hs _ hc
      h'c hnc hnc₀ this hmg hcg
  intro u u_open x₀_u
  calc
    0 < μ (u ∩ interior s) :=
      (u_open.inter isOpen_interior).measure_pos μ (_root_.mem_closure_iff.1 h₀ u u_open x₀_u)
    _ ≤ μ (u ∩ s) := measure_mono (inter_subset_inter_right _ interior_subset)
#align tendsto_set_integral_pow_smul_of_unique_maximum_of_is_compact_of_integrable_on tendsto_set_integral_pow_smul_of_unique_maximum_of_isCompact_of_integrableOn

/-- If a continuous function `c` realizes its maximum at a unique point `x₀` in a compact set `s`,
then the sequence of functions `(c x) ^ n / ∫ (c x) ^ n` is a sequence of peak functions
concentrating around `x₀`. Therefore, `∫ (c x) ^ n * g / ∫ (c x) ^ n` converges to `g x₀` if `g` is
continuous on `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PeakFunction/Variant69cccf5551bbaf8d46665138eae8a066c8e8037086db0cbf13c6df98730a21c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variant69cccf5551bbaf8d46665138eae8a066c8e8037086db0cbf13c6df98730a21c1.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b90cfa897ae7acdc1cdd0d9595a2cbb381859c43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
