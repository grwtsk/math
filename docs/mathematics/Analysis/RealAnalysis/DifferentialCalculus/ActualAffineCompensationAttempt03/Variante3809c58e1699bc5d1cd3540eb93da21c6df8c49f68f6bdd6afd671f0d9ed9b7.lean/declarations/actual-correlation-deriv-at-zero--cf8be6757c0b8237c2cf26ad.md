# actual_correlation_deriv_at_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:403e2baf-1155-c64a-1618-b0f4fb411f1c",
  "kind": "theorem",
  "lexical_name": "actual_correlation_deriv_at_zero",
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
  "slug": "actual-correlation-deriv-at-zero--cf8be6757c0b8237c2cf26ad",
  "source": {
    "blob": "8643b385cfe43c6a502512f9a39462541e52a035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 28,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualAffineCompensationAttempt03/Variante3809c58e1699bc5d1cd3540eb93da21c6df8c49f68f6bdd6afd671f0d9ed9b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf8be6757c0b8237c2cf26ad9d4f0a5053d6a75748d187af0913dd53b2c59c46",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualAffineCompensationAttempt03/Variante3809c58e1699bc5d1cd3540eb93da21c6df8c49f68f6bdd6afd671f0d9ed9b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:403e2baf-1155-c64a-1618-b0f4fb411f1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_correlation_deriv_at_zero {A : ℝ} (hA : 0 < A) :
    deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
  let f : ℝ → ℝ := sourceCorrelation explicitSecondDerivative A
  have hd : HasDerivAt f (deriv f 0) 0 :=
    ((sourceCorrelation_contDiff A hA).differentiable_one 0).hasDerivAt
  have hg : HasDerivAt (fun x : ℝ => -x) (-1) 0 := by
    simpa only [id_eq] using (hasDerivAt_id (0 : ℝ)).fun_neg
  have hd' : HasDerivAt f (deriv f 0) ((fun x : ℝ => -x) 0) := by
    simpa only [neg_zero] using hd
  have hn : HasDerivAt (fun x : ℝ => f (-x)) (-(deriv f 0)) 0 := by
    simpa only [Function.comp_def, mul_neg_one] using hd'.comp 0 hg
  have he : (fun x : ℝ => f (-x)) = f := funext (sourceCorrelation_even A)
  rw [he] at hn
  have hh := hn.unique hd
  change deriv f 0 = 0
  linarith

/-- Actual norm-one correlation, rather than a chosen scale, fixes g'(0). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualAffineCompensationAttempt03/Variante3809c58e1699bc5d1cd3540eb93da21c6df8c49f68f6bdd6afd671f0d9ed9b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualAffineCompensationAttempt03/Variante3809c58e1699bc5d1cd3540eb93da21c6df8c49f68f6bdd6afd671f0d9ed9b7.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8643b385cfe43c6a502512f9a39462541e52a035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
