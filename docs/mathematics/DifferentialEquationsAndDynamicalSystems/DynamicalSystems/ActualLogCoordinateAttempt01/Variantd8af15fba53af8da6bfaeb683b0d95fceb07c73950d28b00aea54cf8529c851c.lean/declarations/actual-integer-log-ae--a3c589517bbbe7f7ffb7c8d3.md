# actual_integer_log_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5b0be38-5958-b600-4434-7c0bb2fcb1a4",
  "kind": "theorem",
  "lexical_name": "actual_integer_log_ae",
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
  "slug": "actual-integer-log-ae--a3c589517bbbe7f7ffb7c8d3",
  "source": {
    "blob": "3cc4ef73c0797d51d8f05a83cf1cd591293e7991",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 44,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantd8af15fba53af8da6bfaeb683b0d95fceb07c73950d28b00aea54cf8529c851c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3c589517bbbe7f7ffb7c8d38053adaa6245283cb4cf178f62531b2a0547fde1",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantd8af15fba53af8da6bfaeb683b0d95fceb07c73950d28b00aea54cf8529c851c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5b0be38-5958-b600-4434-7c0bb2fcb1a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_integer_log_ae (A : ℝ) (hA : 1 ≤ A) (n : {n : ℕ // 0 < n}) :
    logMap (integerOrbit A hA n) =ᵐ[volume]
      (fun u => actualLogOperator A (u+Real.log (n.val:ℝ))) := by
  rw [actual_integer_log]
  filter_upwards [translate_ae (Real.log (n.val:ℝ)) (actualLogL2 A hA),
    (measurePreserving_add_right volume (Real.log (n.val:ℝ))).quasiMeasurePreserving.ae_eq_comp
      (actualLogL2_ae A hA)] with u hu hv
  exact hu.trans hv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantd8af15fba53af8da6bfaeb683b0d95fceb07c73950d28b00aea54cf8529c851c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantd8af15fba53af8da6bfaeb683b0d95fceb07c73950d28b00aea54cf8529c851c.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cc4ef73c0797d51d8f05a83cf1cd591293e7991` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
