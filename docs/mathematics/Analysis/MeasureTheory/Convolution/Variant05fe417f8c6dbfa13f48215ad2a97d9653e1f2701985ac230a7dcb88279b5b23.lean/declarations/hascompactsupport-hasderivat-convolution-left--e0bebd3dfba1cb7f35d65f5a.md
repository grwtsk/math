# HasCompactSupport.hasDerivAt_convolution_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2ce8163-a980-593a-3cc5-e17665823609",
  "kind": "theorem",
  "lexical_name": "HasCompactSupport.hasDerivAt_convolution_left",
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
  "slug": "hascompactsupport-hasderivat-convolution-left--e0bebd3dfba1cb7f35d65f5a",
  "source": {
    "blob": "4a985c84eb8940462e2fb30431e25d9e19d34b38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1213,
    "line": 1192,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0bebd3dfba1cb7f35d65f5a950dcde8abe2bc0c5ffe1d10eec3ee71e25900ab",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2ce8163-a980-593a-3cc5-e17665823609`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1192–1213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasCompactSupport.hasDerivAt_convolution_left [IsNegInvariant μ]
    (hcf : HasCompactSupport f₀) (hf : ContDiff 𝕜 1 f₀) (hg : LocallyIntegrable g₀ μ) (x₀ : 𝕜) :
    HasDerivAt (f₀ ⋆[L, μ] g₀) ((deriv f₀ ⋆[L, μ] g₀) x₀) x₀ := by
  simp (config := { singlePass := true }) only [← convolution_flip]
  exact hcf.hasDerivAt_convolution_right L.flip hg hf x₀
#align has_compact_support.has_deriv_at_convolution_left HasCompactSupport.hasDerivAt_convolution_left

end Real

section WithParam

variable [IsROrC 𝕜] [NormedSpace 𝕜 E] [NormedSpace 𝕜 E'] [NormedSpace 𝕜 E''] [NormedSpace ℝ F]
  [NormedSpace 𝕜 F] [CompleteSpace F] [MeasurableSpace G] [NormedAddCommGroup G] [BorelSpace G]
  [NormedSpace 𝕜 G] [NormedAddCommGroup P] [NormedSpace 𝕜 P] {μ : MeasureTheory.Measure G}
  (L : E →L[𝕜] E' →L[𝕜] F)

-- porting note: the lemma is slow, added `set_option maxHeartbeats 300000 in`
set_option maxHeartbeats 300000 in
/-- The derivative of the convolution `f * g` is given by `f * Dg`, when `f` is locally integrable
and `g` is `C^1` and compactly supported. Version where `g` depends on an additional parameter in an
open subset `s` of a parameter space `P` (and the compact support `k` is independent of the
parameter in `s`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean#L1192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a985c84eb8940462e2fb30431e25d9e19d34b38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
