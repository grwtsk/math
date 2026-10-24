# tendsto_iff_forall_integral_rclike_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d46f8d19-3fb4-5ba1-7cc8-d97576f06e72",
  "kind": "theorem",
  "lexical_name": "tendsto_iff_forall_integral_rclike_tendsto",
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
  "slug": "tendsto-iff-forall-integral-rclike-tendsto--e412552fbc7817630ea90150",
  "source": {
    "blob": "013855ee43b7e9d7dcc9303bc0854d86cc182fff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 719,
    "line": 701,
    "path": "GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variant798c310ef3dc6014f187bc732e6b8993013048984ae0da5a08e1b80f23f854c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e412552fbc7817630ea90150e1ee2e17d2af10844ac09af174a9b04e8a9da0ae",
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

Occurrence: `result:d46f8d19-3fb4-5ba1-7cc8-d97576f06e72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 701–719.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_iff_forall_integral_rclike_tendsto {γ : Type*} (𝕜 : Type*) [RCLike 𝕜]
    {F : Filter γ} {μs : γ → FiniteMeasure Ω} {μ : FiniteMeasure Ω} :
    Tendsto μs F (𝓝 μ) ↔
      ∀ f : Ω →ᵇ 𝕜,
        Tendsto (fun i ↦ ∫ ω, f ω ∂(μs i : Measure Ω)) F (𝓝 (∫ ω, f ω ∂(μ : Measure Ω))) := by
  rw [tendsto_iff_forall_integral_tendsto]
  refine ⟨fun h f ↦ ?_, fun h f ↦ ?_⟩
  · rw [← integral_re_add_im (integrable μ f)]
    simp_rw [← integral_re_add_im (integrable (μs _) f)]
    refine Tendsto.add ?_ ?_
    · exact (RCLike.continuous_ofReal.tendsto _).comp (h (f.comp RCLike.re RCLike.lipschitzWith_re))
    · exact (Tendsto.comp (RCLike.continuous_ofReal.tendsto _)
        (h (f.comp RCLike.im RCLike.lipschitzWith_im))).mul_const _
  · specialize h ((RCLike.ofRealAm (K := 𝕜)).compLeftContinuousBounded ℝ
      RCLike.lipschitzWith_ofReal f)
    simp only [AlgHom.compLeftContinuousBounded_apply_apply, RCLike.ofRealAm_coe,
      Complex.coe_algebraMap, integral_ofReal] at h
    exact tendsto_ofReal_iff'.mp h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/FiniteMeasure/Variant798c310ef3dc6014f187bc732e6b8993013048984ae0da5a08e1b80f23f854c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variant798c310ef3dc6014f187bc732e6b8993013048984ae0da5a08e1b80f23f854c7.lean#L701).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `013855ee43b7e9d7dcc9303bc0854d86cc182fff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
