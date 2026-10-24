# tendstoInDistribution_iff_forall_integral_rclike_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddd7aa92-ee87-1e6a-0c8b-1d9adebb5603",
  "kind": "theorem",
  "lexical_name": "tendstoInDistribution_iff_forall_integral_rclike_tendsto",
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
  "slug": "tendstoindistribution-iff-forall-integral-rclike-tendsto--3c47b6ca8a3753daa1ca69c0",
  "source": {
    "blob": "a1d2e9c667e753dfbcc5ade3cb0276aa30808ded",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 80,
    "path": "GRWTSK/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c47b6ca8a3753daa1ca69c0696a030de4f91afa48303161f3ec02f09c0af99d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddd7aa92-ee87-1e6a-0c8b-1d9adebb5603`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoInDistribution_iff_forall_integral_rclike_tendsto
    (𝕜 : Type*) [RCLike 𝕜] [OpensMeasurableSpace E]
    (hX : ∀ i, AEMeasurable (X i) (μ i)) (hZ : AEMeasurable Z μ') :
    TendstoInDistribution X l Z μ μ' ↔
      ∀ f : E →ᵇ 𝕜, Tendsto (fun i ↦ ∫ ω, f (X i ω) ∂(μ i)) l (𝓝 (∫ ω, f (Z ω) ∂μ')) := by
  have h_map (i) (f : E →ᵇ 𝕜) :
      ∫ x, f x ∂(μ i).map (X i) = ∫ ω, f (X i ω) ∂(μ i) := integral_map (hX i) (by fun_prop)
  have h_map' (f : E →ᵇ 𝕜) :
      ∫ x, f x ∂μ'.map Z = ∫ ω, f (Z ω) ∂μ' := integral_map hZ (by fun_prop)
  refine ⟨fun h f ↦ ?_, fun h ↦ ⟨hX, hZ, ?_⟩⟩
  · have hf := (ProbabilityMeasure.tendsto_iff_forall_integral_rclike_tendsto 𝕜).mp h.tendsto f
    simpa [h_map, h_map'] using hf
  · apply (ProbabilityMeasure.tendsto_iff_forall_integral_rclike_tendsto (Ω := E) 𝕜).mpr
    intro f
    simpa [h_map, h_map'] using h f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1d2e9c667e753dfbcc5ade3cb0276aa30808ded` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
