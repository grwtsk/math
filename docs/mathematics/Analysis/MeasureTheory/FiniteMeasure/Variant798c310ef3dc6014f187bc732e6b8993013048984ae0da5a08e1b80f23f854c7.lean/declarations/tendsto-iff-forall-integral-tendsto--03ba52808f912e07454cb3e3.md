# tendsto_iff_forall_integral_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d042d980-782d-37ea-b7a9-a75dab1f8630",
  "kind": "theorem",
  "lexical_name": "tendsto_iff_forall_integral_tendsto",
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
  "slug": "tendsto-iff-forall-integral-tendsto--03ba52808f912e07454cb3e3",
  "source": {
    "blob": "013855ee43b7e9d7dcc9303bc0854d86cc182fff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 700,
    "line": 680,
    "path": "GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variant798c310ef3dc6014f187bc732e6b8993013048984ae0da5a08e1b80f23f854c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03ba52808f912e07454cb3e38cc670efc540e13cffe1378df72a1ff1bca9e10b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/FiniteMeasure/Variant798c310ef3dc6014f187bc732e6b8993013048984ae0da5a08e1b80f23f854c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d042d980-782d-37ea-b7a9-a75dab1f8630`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 680–700.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_iff_forall_integral_tendsto {γ : Type*} {F : Filter γ} {μs : γ → FiniteMeasure Ω}
    {μ : FiniteMeasure Ω} :
    Tendsto μs F (𝓝 μ) ↔
      ∀ f : Ω →ᵇ ℝ,
        Tendsto (fun i ↦ ∫ x, f x ∂(μs i : Measure Ω)) F (𝓝 (∫ x, f x ∂(μ : Measure Ω))) := by
  refine ⟨?_, tendsto_of_forall_integral_tendsto⟩
  rw [tendsto_iff_forall_lintegral_tendsto]
  intro h f
  simp_rw [BoundedContinuousFunction.integral_eq_integral_nnrealPart_sub]
  set f_pos := f.nnrealPart with _def_f_pos
  set f_neg := (-f).nnrealPart with _def_f_neg
  have tends_pos := (ENNReal.tendsto_toReal (f_pos.lintegral_lt_top_of_nnreal μ).ne).comp (h f_pos)
  have tends_neg := (ENNReal.tendsto_toReal (f_neg.lintegral_lt_top_of_nnreal μ).ne).comp (h f_neg)
  have aux :
    ∀ g : Ω →ᵇ ℝ≥0,
      (ENNReal.toReal ∘ fun i : γ ↦ ∫⁻ x : Ω, ↑(g x) ∂(μs i : Measure Ω)) =
        fun i : γ ↦ (∫⁻ x : Ω, ↑(g x) ∂(μs i : Measure Ω)).toReal :=
    fun _ ↦ rfl
  simp_rw [aux, BoundedContinuousFunction.toReal_lintegral_coe_eq_integral] at tends_pos tends_neg
  exact Tendsto.sub tends_pos tends_neg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/FiniteMeasure/Variant798c310ef3dc6014f187bc732e6b8993013048984ae0da5a08e1b80f23f854c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variant798c310ef3dc6014f187bc732e6b8993013048984ae0da5a08e1b80f23f854c7.lean#L680).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `013855ee43b7e9d7dcc9303bc0854d86cc182fff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
