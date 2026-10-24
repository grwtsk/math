# compact_autocorrelation_deriv_eq_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34f8aeb5-fe88-77c7-c38d-f83cd4d4114e",
  "kind": "theorem",
  "lexical_name": "compact_autocorrelation_deriv_eq_convolution",
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
  "slug": "compact-autocorrelation-deriv-eq-convolution--6bf9271ad6bfd2ba0d0bee07",
  "source": {
    "blob": "9acebdcb4c795318facfd5b7c85b0103d01b7975",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 32,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveCorrelationCurvature/Variante165596581658ad9adf0d952279f6f6bc58cfac275a1cb90dee1c060bf7e26e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bf9271ad6bfd2ba0d0bee07067dfdeb5fcbd3429df25b9eda4880c6a2d9b0b1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveCorrelationCurvature/Variante165596581658ad9adf0d952279f6f6bc58cfac275a1cb90dee1c060bf7e26e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34f8aeb5-fe88-77c7-c38d-f83cd4d4114e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem compact_autocorrelation_deriv_eq_convolution {f : ℝ → ℝ}
    (hf : ContDiff ℝ 1 f) (hs : HasCompactSupport f) :
    deriv (fun s : ℝ => ∫ x : ℝ, f x * f (x - s)) =
      (deriv f ⋆ fun x : ℝ => f (-x)) := by
  have hr : HasCompactSupport (fun x : ℝ => f (-x)) :=
    hs.comp_homeomorph (Homeomorph.neg ℝ)
  have hir : Integrable (fun x : ℝ => f (-x)) :=
    (hf.continuous.comp continuous_neg).integrable_of_hasCompactSupport hr
  have hc : (fun s : ℝ => ∫ x : ℝ, f x * f (x - s)) =
      (f ⋆ fun x : ℝ => f (-x)) := by
    funext s
    simp only [convolution, ContinuousLinearMap.lsmul_apply, smul_eq_mul, neg_sub]
  rw [hc]
  funext s
  exact (hs.hasDerivAt_convolution_left (ContinuousLinearMap.lsmul ℝ ℝ)
    hf hir.locallyIntegrable s).deriv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveCorrelationCurvature/Variante165596581658ad9adf0d952279f6f6bc58cfac275a1cb90dee1c060bf7e26e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveCorrelationCurvature/Variante165596581658ad9adf0d952279f6f6bc58cfac275a1cb90dee1c060bf7e26e3.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9acebdcb4c795318facfd5b7c85b0103d01b7975` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
