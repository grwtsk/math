# factorial_mul_det_christoffel_finiteSignedMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6faf420-4c31-36e7-158a-cb8da22739df",
  "kind": "theorem",
  "lexical_name": "factorial_mul_det_christoffel_finiteSignedMoment",
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
  "slug": "factorial-mul-det-christoffel-finitesignedmoment--35ecb4cbd775d4dfb6ce2f87",
  "source": {
    "blob": "d995d63a8e91a338e89fcc9d60f7cd2cb0df0cfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 132,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantdc340ca0e5ce7f47587c7d9448d5c16853d615a8457522c7ea3f41cc23fd990b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35ecb4cbd775d4dfb6ce2f876261ba6f506cbb141ea76f61b0c164383baf99fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantdc340ca0e5ce7f47587c7d9448d5c16853d615a8457522c7ea3f41cc23fd990b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6faf420-4c31-36e7-158a-cb8da22739df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorial_mul_det_christoffel_finiteSignedMoment
    {k L : ℕ} (nodes weights : Fin L → ℝ) :
    (k.factorial : ℝ) *
        Matrix.det
          (thetaPhiChristoffelHankel k
            (finiteSignedMomentTape nodes weights)) =
      ∑ f : Fin k → Fin L,
        (∏ i : Fin k,
          weights (f i) * (nodes (f i) + 1)) *
          (finiteMomentVandermondeDet nodes f) ^ 2 := by
  rw [finiteSignedMoment_christoffelHankel_eq_mul]
  rw [cauchyBinet_all_functions]
  apply Finset.sum_congr rfl
  intro f hf
  rw [finiteMomentLeft_selected_det,
    finiteChristoffelMomentRight_selected_det]
  ring

/-- Fixed arithmetic support naturally selected by the theta derivative
operator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantdc340ca0e5ce7f47587c7d9448d5c16853d615a8457522c7ea3f41cc23fd990b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantdc340ca0e5ce7f47587c7d9448d5c16853d615a8457522c7ea3f41cc23fd990b.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d995d63a8e91a338e89fcc9d60f7cd2cb0df0cfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
