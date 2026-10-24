# hasDerivAt_primitiveWeilLaplace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a8a9ab4bc74fd781cfbb3ce8374fb15fb9c44d48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4aaedda-0114-1f87-bfcb-41fea4b09b2c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd1bc513-f875-7617-c664-791a7bead2b4",
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
  "slug": "hasderivat-primitiveweillaplace--b921b7f075cf84ff0360389e",
  "source": {
    "blob": "a8a9ab4bc74fd781cfbb3ce8374fb15fb9c44d48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 159,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b921b7f075cf84ff0360389e19090530456ccb2561fb777293f713eef083877e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd1bc513-f875-7617-c664-791a7bead2b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–183.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8a9ab4bc74fd781cfbb3ce8374fb15fb9c44d48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
