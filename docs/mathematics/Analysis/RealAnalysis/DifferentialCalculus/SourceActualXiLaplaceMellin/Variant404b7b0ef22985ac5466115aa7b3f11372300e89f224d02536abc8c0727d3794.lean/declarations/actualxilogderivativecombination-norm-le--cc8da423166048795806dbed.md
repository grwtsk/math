# actualXiLogDerivativeCombination_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7448811-ecf7-b219-da1a-63af426820df",
  "kind": "theorem",
  "lexical_name": "actualXiLogDerivativeCombination_norm_le",
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
  "slug": "actualxilogderivativecombination-norm-le--cc8da423166048795806dbed",
  "source": {
    "blob": "f96ff651f9962615462a9d840d9ddf59fa1f7a45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 225,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiLaplaceMellin/Variant404b7b0ef22985ac5466115aa7b3f11372300e89f224d02536abc8c0727d3794.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc8da423166048795806dbed00c0df78f242b5b8e23d404ec2abee77397f99a0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiLaplaceMellin/Variant404b7b0ef22985ac5466115aa7b3f11372300e89f224d02536abc8c0727d3794.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7448811-ecf7-b219-da1a-63af426820df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiLogDerivativeCombination_norm_le {z : ℂ} (hz : 1 / 2 < z.re) :
    ‖-deriv riemannZeta (z + 1 / 2) / riemannZeta (z + 1 / 2) -
        actualClosedMangoldtMellinHeadSeven (z + 1 / 2) +
          ((Chebyshev.psi 7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) : ℝ) : ℂ) *
            (7 : ℂ) ^ (-(z + 1 / 2)) -
              (z + 1 / 2) * (7 : ℂ) ^ (1 - (z + 1 / 2)) / ((z + 1 / 2) - 1)‖ ≤
      ‖z + 1 / 2‖ * ‖z‖ * (2 * actualXiExponentialEnvelopeConstant *
        Real.exp (-(z.re - 1 / 2) * Real.log 7) / (z.re - 1 / 2)) := by
  rw [← actualXiComplexLaplace_mul_eq_logDerivative hz, norm_mul, norm_mul, ← mul_assoc]
  exact mul_le_mul_of_nonneg_left (actualXiComplexLaplace_norm_le hz)
    (mul_nonneg (norm_nonneg _) (norm_nonneg _))

end
end FormalResearch.RiemannHypothesis.SourceActualXiLaplaceMellin
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiLaplaceMellin/Variant404b7b0ef22985ac5466115aa7b3f11372300e89f224d02536abc8c0727d3794.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiLaplaceMellin/Variant404b7b0ef22985ac5466115aa7b3f11372300e89f224d02536abc8c0727d3794.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f96ff651f9962615462a9d840d9ddf59fa1f7a45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
