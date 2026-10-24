# primitiveTransform_eq_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de15f11c-3b50-5d03-c550-acced4c3094e",
  "kind": "theorem",
  "lexical_name": "primitiveTransform_eq_interval",
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
  "slug": "primitivetransform-eq-interval--e8f638204c27960971eceff2",
  "source": {
    "blob": "c664003b67cd540158cf621d825ff9721e8ea6c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 36,
    "path": "GRWTSK/Topology/GeneralTopology/ActualMellinFilterAttempt05/Variantc8cb51b69cc8e0c92f2e02f6348d1186fca6e3e8427bf9695b2c062cc5e88e2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8f638204c27960971eceff25990ede517f5b8442616d2812771dccf62899eba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualMellinFilterAttempt05/Variantc8cb51b69cc8e0c92f2e02f6348d1186fca6e3e8427bf9695b2c062cc5e88e2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de15f11c-3b50-5d03-c550-acced4c3094e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitiveTransform_eq_interval {A : ℝ} (hA : 0 < A) (z : ℂ) :
    primitiveTransform A z =
      ∫ x in -A..A, (bumpInterior A x : ℂ)*Complex.exp (z*(x : ℂ)) := by
  have he : (fun x : ℝ => (scaledBump A x : ℂ)*Complex.exp (z*(x : ℂ))) =
      (Icc (-A) A).indicator (fun x : ℝ => (bumpInterior A x : ℂ)*
        Complex.exp (z*(x : ℂ))) := by
    funext x
    rw [scaledBump_eq_indicator A hA]
    by_cases hx : x ∈ Icc (-A) A <;> simp [hx]
  unfold primitiveTransform compactLaplace
  rw [he,integral_indicator measurableSet_Icc,integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (show -A ≤ A by linarith)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualMellinFilterAttempt05/Variantc8cb51b69cc8e0c92f2e02f6348d1186fca6e3e8427bf9695b2c062cc5e88e2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualMellinFilterAttempt05/Variantc8cb51b69cc8e0c92f2e02f6348d1186fca6e3e8427bf9695b2c062cc5e88e2d.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c664003b67cd540158cf621d825ff9721e8ea6c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
