# causalSourceTail_square_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:369a6db0-accf-537f-b1f5-c7c0cfd3fc49",
  "kind": "theorem",
  "lexical_name": "causalSourceTail_square_integral",
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
  "slug": "causalsourcetail-square-integral--1e6d78a77081e2746e70f4ea",
  "source": {
    "blob": "37e03688cb4d9fa6cfcea6a16396cadafe82e43d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 395,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant03e98f11d9dde7c85a54a2eff70695698d42a5646b02565e4c5702482bcea529.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e6d78a77081e2746e70f4ea737560569fe74060c30881fc5b13af29e21e5245",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant03e98f11d9dde7c85a54a2eff70695698d42a5646b02565e4c5702482bcea529.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:369a6db0-accf-537f-b1f5-c7c0cfd3fc49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem causalSourceTail_square_integral {A : ℝ} (hA : 0 < A) :
    (∫ x : ℝ, causalSourceTail A x ^ 2) =
      (131072 / 45045 : ℝ) / (A ^ 2 * sourceNormalization A) +
        (65536 / 109395 : ℝ) / (4 * sourceNormalization A) := by
  have h0 := (normalizedPrimitiveBump_square_integrable hA).1
  have h1 := (normalizedPrimitiveBump_square_integrable hA).2
  have hm : Integrable (fun x ↦
      deriv (normalizedPrimitiveBump A) x * normalizedPrimitiveBump A x) :=
    ((normalizedPrimitiveBump_contDiff hA).continuous_deriv (by norm_num)).mul
      (normalizedPrimitiveBump_contDiff hA).continuous
      |>.integrable_of_hasCompactSupport
        (normalizedPrimitiveBump_deriv_hasCompactSupport hA).mul_right
  have hexpand : (fun x : ℝ ↦ causalSourceTail A x ^ 2) = fun x ↦
      deriv (normalizedPrimitiveBump A) x ^ 2 +
        deriv (normalizedPrimitiveBump A) x * normalizedPrimitiveBump A x +
          normalizedPrimitiveBump A x ^ 2 / 4 := by
    funext x
    rw [causalSourceTail_eq hA x]
    ring
  rw [hexpand, integral_add
      (f := fun x ↦ deriv (normalizedPrimitiveBump A) x ^ 2 +
        deriv (normalizedPrimitiveBump A) x * normalizedPrimitiveBump A x)
      (g := fun x ↦ normalizedPrimitiveBump A x ^ 2 / 4) (h1.add hm) (h0.div_const 4),
    integral_add (f := fun x ↦ deriv (normalizedPrimitiveBump A) x ^ 2)
      (g := fun x ↦ deriv (normalizedPrimitiveBump A) x * normalizedPrimitiveBump A x) h1 hm,
    integral_div, normalizedPrimitiveBump_mixed_integral_zero hA,
    normalizedPrimitiveBump_square_integral hA, normalizedPrimitiveBump_deriv_square_integral hA]
  ring

/-- The causal ODE and compact integration by parts give its exact source pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant03e98f11d9dde7c85a54a2eff70695698d42a5646b02565e4c5702482bcea529.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant03e98f11d9dde7c85a54a2eff70695698d42a5646b02565e4c5702482bcea529.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37e03688cb4d9fa6cfcea6a16396cadafe82e43d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
