# pairedTailTest_second_deriv_moments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a96a394f-2b1d-c811-04e1-bbeb82946354",
  "kind": "theorem",
  "lexical_name": "pairedTailTest_second_deriv_moments",
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
  "slug": "pairedtailtest-second-deriv-moments--c20f52d73e9fd95200db9600",
  "source": {
    "blob": "4f7c939efd6276ff88cda3d4ac9cc74fc10af324",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 159,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalGreenReadout/Variant4cc3ca2d4bf214c1ea37419a51e4b819a606ef1ea2999fe5cc65e86c97dc8626.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c20f52d73e9fd95200db960077009c7e38fc2801e4ffd4be2ff2d5ba1eee6f91",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalGreenReadout/Variant4cc3ca2d4bf214c1ea37419a51e4b819a606ef1ea2999fe5cc65e86c97dc8626.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a96a394f-2b1d-c811-04e1-bbeb82946354`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedTailTest_second_deriv_moments {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2 * A, deriv (deriv (pairedTailTest A)) u) = 1 / 2 ∧
      (∫ u in 0..2 * A, u * deriv (deriv (pairedTailTest A)) u) = 0 := by
  have hD' := pairedTailTest_deriv_absolutelyContinuous hA
  have hmass := hD'.integral_deriv_eq_sub
  rw [pairedTailTest_deriv_at_upper hA, pairedTailTest_deriv_at_zero hA] at hmass
  have hid : AbsolutelyContinuousOnInterval (fun u : ℝ => u) 0 (2 * A) :=
    (contDiff_id : ContDiff ℝ 1 (fun u : ℝ => u)).contDiffOn.absolutelyContinuousOnInterval
  have hparts := hid.integral_mul_deriv_eq_deriv_mul hD'
  simp only [deriv_id'', one_mul, zero_mul, sub_zero] at hparts
  have hD : AbsolutelyContinuousOnInterval (pairedTailTest A) 0 (2 * A) :=
    (pairedTailTest_contDiff hA).contDiffOn.absolutelyContinuousOnInterval
  rw [pairedTailTest_deriv_at_upper hA, hD.integral_deriv_eq_sub,
    pairedTailTest_at_upper hA, pairedTailTest_at_zero hA] at hparts
  constructor <;> linarith

/-- The actual curvature cannot be nonnegative almost everywhere on the positive interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalGreenReadout/Variant4cc3ca2d4bf214c1ea37419a51e4b819a606ef1ea2999fe5cc65e86c97dc8626.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalGreenReadout/Variant4cc3ca2d4bf214c1ea37419a51e4b819a606ef1ea2999fe5cc65e86c97dc8626.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f7c939efd6276ff88cda3d4ac9cc74fc10af324` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
