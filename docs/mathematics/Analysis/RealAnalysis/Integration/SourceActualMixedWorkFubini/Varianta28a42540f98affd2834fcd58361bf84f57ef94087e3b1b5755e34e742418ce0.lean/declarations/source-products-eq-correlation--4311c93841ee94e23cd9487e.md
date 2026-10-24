# source_products_eq_correlation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e31024b-8144-9c7d-031c-9ab0243b9519",
  "kind": "theorem",
  "lexical_name": "source_products_eq_correlation",
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
  "slug": "source-products-eq-correlation--4311c93841ee94e23cd9487e",
  "source": {
    "blob": "7de443f0c6a393064d6ace4f6cc949e86af27d94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 356,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Varianta28a42540f98affd2834fcd58361bf84f57ef94087e3b1b5755e34e742418ce0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4311c93841ee94e23cd9487e8d821b38a0d5551147b0af1f52df125a8a71759e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Varianta28a42540f98affd2834fcd58361bf84f57ef94087e3b1b5755e34e742418ce0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e31024b-8144-9c7d-031c-9ab0243b9519`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem source_products_eq_correlation (A t u : ℝ) :
    (∫ v : ℝ, normalizedTest explicitSecondDerivative A (v - t) *
      normalizedTest explicitSecondDerivative A (v + Real.log u)) =
      sourceCorrelation explicitSecondDerivative A (t + Real.log u) := by
  unfold sourceCorrelation
  calc
    _ = ∫ v : ℝ, normalizedTest explicitSecondDerivative A (v + Real.log u) *
        normalizedTest explicitSecondDerivative A
          (v + Real.log u - (t + Real.log u)) := by
      apply integral_congr_ae
      filter_upwards [] with v
      rw [show v + Real.log u - (t + Real.log u) = v - t by ring, mul_comm]
    _ = _ := integral_add_right_eq_self
      (fun v : ℝ => normalizedTest explicitSecondDerivative A v *
        normalizedTest explicitSecondDerivative A (v - (t + Real.log u))) (Real.log u)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Varianta28a42540f98affd2834fcd58361bf84f57ef94087e3b1b5755e34e742418ce0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Varianta28a42540f98affd2834fcd58361bf84f57ef94087e3b1b5755e34e742418ce0.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7de443f0c6a393064d6ace4f6cc949e86af27d94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
