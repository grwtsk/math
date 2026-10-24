# full_complex_correlation_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bc7f693-caac-ace1-ddd3-ec301d01cb85",
  "kind": "theorem",
  "lexical_name": "full_complex_correlation_square",
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
  "slug": "full-complex-correlation-square--673e4142be858d3625d9d4f2",
  "source": {
    "blob": "229bad1834236abb1ac2d9baf54f17aa468f95c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 54,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Variant5f2d358e348140f70a163bdc8acf65179247e0e87d172413c8396e5d4f1e9b2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:673e4142be858d3625d9d4f2d0735f6cc97f7c640f810906933249a39fc95ae2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Variant5f2d358e348140f70a163bdc8acf65179247e0e87d172413c8396e5d4f1e9b2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bc7f693-caac-ace1-ddd3-ec301d01cb85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_complex_correlation_square {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    (∫ t : ℝ, (sourceCorrelation explicitSecondDerivative A t : ℂ)*
      Complex.exp (z*(t : ℂ))) = normalizedTransform A z ^ 2 := by
  let q : ℝ → ℝ := normalizedTest explicitSecondDerivative A
  let F : ℝ → ℂ := fun x => (q x : ℂ)*Complex.exp (z*(x : ℂ))
  have hF : Integrable F := normalized_integrand_integrable hA z
  have he (t : ℝ) : (sourceCorrelation explicitSecondDerivative A t : ℂ)*
      Complex.exp (z*(t : ℂ)) =
      (F ⋆[ContinuousLinearMap.mul ℂ ℂ] F) t := by
    unfold sourceCorrelation
    rw [← integral_complex_ofReal, ← integral_mul_const]
    rw [convolution]
    apply integral_congr_ae
    filter_upwards [] with x
    have heven := actual_normalized_even A hA (x-t)
    have he : Complex.exp (z*(t : ℂ)) =
        Complex.exp (z*(x : ℂ))*Complex.exp (z*((t-x : ℝ) : ℂ)) := by
      rw [← Complex.exp_add]
      congr 1
      push_cast
      ring
    dsimp [F,q]
    rw [show t-x=-(x-t) by ring,heven,he]
    push_cast
    ring
  simp_rw [he]
  rw [integral_convolution (ContinuousLinearMap.mul ℂ ℂ) hF hF]
  change normalizedTransform A z * normalizedTransform A z = _
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Variant5f2d358e348140f70a163bdc8acf65179247e0e87d172413c8396e5d4f1e9b2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Variant5f2d358e348140f70a163bdc8acf65179247e0e87d172413c8396e5d4f1e9b2a.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `229bad1834236abb1ac2d9baf54f17aa468f95c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
