# hasDerivAt_primitiveWeilLaplace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26e348df-405c-27e1-a697-f3a3236b9295",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_primitiveWeilLaplace",
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
  "slug": "hasderivat-primitiveweillaplace--805792a8067d3e1ade7988ad",
  "source": {
    "blob": "ab5aa734780717435e9ae40d09366b56e19e83a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 167,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:805792a8067d3e1ade7988adcb5aa215f35795aa78b2455bf983343e5b1ec5ce",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26e348df-405c-27e1-a697-f3a3236b9295`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_primitiveWeilLaplace
    (g : PrimitiveWeilTestFunction) (s₀ : ℂ) :
    HasDerivAt (primitiveWeilLaplace g)
      (∫ x : ℝ, primitiveWeilLaplaceDerivativeIntegrand g s₀ x) s₀ := by
  have h := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (μ := volume)
    (F := fun s x ↦ primitiveWeilLaplaceIntegrand g s x)
    (F' := fun s x ↦ primitiveWeilLaplaceDerivativeIntegrand g s x)
    (bound := primitiveWeilLaplaceDerivativeBound g s₀)
    (Metric.ball_mem_nhds s₀ (by norm_num : (0 : ℝ) < 1))
    (by
      filter_upwards with s
      exact (continuous_primitiveWeilLaplaceIntegrand g s).aestronglyMeasurable)
    (integrable_primitiveWeilLaplaceIntegrand g s₀)
    (continuous_primitiveWeilLaplaceDerivativeIntegrand g s₀).aestronglyMeasurable
    (ae_of_all _ fun x s hs ↦ primitiveWeilLaplaceDerivative_le g s₀ s x hs)
    (integrable_primitiveWeilLaplaceDerivativeBound g s₀)
    (ae_of_all _ fun x s _ ↦ hasDerivAt_primitiveWeilLaplaceIntegrand g s x)
  change HasDerivAt
    (fun s : ℂ ↦ ∫ x : ℝ, primitiveWeilLaplaceIntegrand g s x)
    (∫ x : ℝ, primitiveWeilLaplaceDerivativeIntegrand g s₀ x) s₀
  exact h.2

/-- Compact support makes the bilateral Laplace transform entire. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab5aa734780717435e9ae40d09366b56e19e83a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
