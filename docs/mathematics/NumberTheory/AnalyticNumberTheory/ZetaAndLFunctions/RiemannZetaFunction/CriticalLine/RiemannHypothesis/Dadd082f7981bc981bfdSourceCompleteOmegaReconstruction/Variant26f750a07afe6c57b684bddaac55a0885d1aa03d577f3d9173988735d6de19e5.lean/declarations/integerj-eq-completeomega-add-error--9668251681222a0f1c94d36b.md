# integerJ_eq_completeOmega_add_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c07f2fd-f0f2-bff5-c844-d50f979f8506",
  "kind": "theorem",
  "lexical_name": "integerJ_eq_completeOmega_add_error",
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
  "slug": "integerj-eq-completeomega-add-error--9668251681222a0f1c94d36b",
  "source": {
    "blob": "a01b319ed3a75414e6cf6177cbfcb6f019ed6029",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 81,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Dadd082f7981bc981bfdSourceCompleteOmegaReconstruction/Variant26f750a07afe6c57b684bddaac55a0885d1aa03d577f3d9173988735d6de19e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9668251681222a0f1c94d36b11351212fa780ed5ba0f9359d19ff620cd097393",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Dadd082f7981bc981bfdSourceCompleteOmegaReconstruction/Variant26f750a07afe6c57b684bddaac55a0885d1aa03d577f3d9173988735d6de19e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c07f2fd-f0f2-bff5-c844-d50f979f8506`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integerJ_eq_completeOmega_add_error (A : ℝ) (hA : 91 ≤ A) :
    integerJ A = completeOmega A + completeOmegaError A := by
  have hr := mertensResidual_eq_completeOmega_add_baseline_add_error A hA
  have hb := residual_sub_integerJ_eq_plain (by linarith : 1 ≤ A)
  linarith

/-- Quantitative complete reconstruction error, without estimating its signed principal term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Dadd082f7981bc981bfdSourceCompleteOmegaReconstruction/Variant26f750a07afe6c57b684bddaac55a0885d1aa03d577f3d9173988735d6de19e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Dadd082f7981bc981bfdSourceCompleteOmegaReconstruction/Variant26f750a07afe6c57b684bddaac55a0885d1aa03d577f3d9173988735d6de19e5.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a01b319ed3a75414e6cf6177cbfcb6f019ed6029` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
