# squareTailNegativeMean_le_baseline

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15e5d258-862e-8e43-4261-b08f8ebb25fb",
  "kind": "theorem",
  "lexical_name": "squareTailNegativeMean_le_baseline",
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
  "slug": "squaretailnegativemean-le-baseline--7658db0815549eca43b88ad2",
  "source": {
    "blob": "6cde87e7f5c4c5f4164e3e5cfa63857ef7993c98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 285,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variantbd7de0bfe991a531d460bcb7e7c466b9cd3549c3fe9acfe7622ff2ed4aa43591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7658db0815549eca43b88ad2686e296179de44b4a927dc9075b70667357f5017",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variantbd7de0bfe991a531d460bcb7e7c466b9cd3549c3fe9acfe7622ff2ed4aa43591.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15e5d258-862e-8e43-4261-b08f8ebb25fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareTailNegativeMean_le_baseline {A : ℝ} (hA : 1 ≤ A) :
    squareTailNegativeMean A ≤ squarePrefixBaseline := by
  have hp : 0 < A := by linarith
  have hi := (squareTail_intervalIntegrable hp).mul_continuousOn
    (negativeSlope_continuous hp).continuousOn
  have hb := (negativeSlope_intervalIntegrable hp).const_mul squarePrefixBaseline
  unfold squareTailNegativeMean
  apply (div_le_iff₀ (negativeMass_pos hA)).mpr
  calc
    _ ≤ ∫ u in 0..2*A, squarePrefixBaseline * negativeSlope A u :=
      intervalIntegral.integral_mono_on (by linarith) hi hb
        (fun u _ => mul_le_mul_of_nonneg_right (squareTail_le_baseline u)
          (negativeSlope_nonneg A u))
    _ = squarePrefixBaseline * negativeMass A := by
      rw [intervalIntegral.integral_const_mul]
      rfl

/-- Both phases retain the same literal arithmetic error after exact square-tail removal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variantbd7de0bfe991a531d460bcb7e7c466b9cd3549c3fe9acfe7622ff2ed4aa43591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variantbd7de0bfe991a531d460bcb7e7c466b9cd3549c3fe9acfe7622ff2ed4aa43591.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cde87e7f5c4c5f4164e3e5cfa63857ef7993c98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
