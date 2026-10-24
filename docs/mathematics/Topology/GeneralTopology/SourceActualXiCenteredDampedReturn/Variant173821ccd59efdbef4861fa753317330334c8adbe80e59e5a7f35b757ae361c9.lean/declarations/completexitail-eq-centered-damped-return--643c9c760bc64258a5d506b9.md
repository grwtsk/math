# completeXiTail_eq_centered_damped_return

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3dd63f18-6fbe-0b3c-6ca0-b6458b1712ce",
  "kind": "theorem",
  "lexical_name": "completeXiTail_eq_centered_damped_return",
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
  "slug": "completexitail-eq-centered-damped-return--643c9c760bc64258a5d506b9",
  "source": {
    "blob": "681086a096fbfe4e36fcfc65a3e06d97b8ca6eb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 68,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualXiCenteredDampedReturn/Variant173821ccd59efdbef4861fa753317330334c8adbe80e59e5a7f35b757ae361c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:643c9c760bc64258a5d506b9497e25a6ca317650d6c10dc2bb023d1d798b25bf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualXiCenteredDampedReturn/Variant173821ccd59efdbef4861fa753317330334c8adbe80e59e5a7f35b757ae361c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dd63f18-6fbe-0b3c-6ca0-b6458b1712ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeXiTail_eq_centered_damped_return {A : ℝ} (hA : 91 ≤ A) (q : ℝ) :
    completeXiTail A = actualCenteredDampedXiReturn A q -
      q * actualDampedXiReturnTest A (Real.log 7) := by
  have hlb : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  have hd : IntervalIntegrable (actualDampedXiReturnDensity A) volume
      (Real.log 7) (2 * A) :=
    (returnDensity_continuous (by linarith : 0 < A)).intervalIntegrable _ _
  have hj : IntervalIntegrable (fun t => actualDampedXiFinitePrimitive t *
      actualDampedXiReturnDensity A t) volume (Real.log 7) (2 * A) :=
    by
      have hi : IntervalIntegrable actualDampedXiFinitePrimitive volume
          (Real.log 7) (2 * A) :=
        (actualDampedXiFinitePrimitive_absolutelyContinuous hlb).continuousOn.intervalIntegrable
      exact hi.mul_continuousOn
        (returnDensity_continuous (by linarith : 0 < A)).continuousOn
  have he : (fun t => (actualDampedXiFinitePrimitive t - q) *
      actualDampedXiReturnDensity A t) =
      (fun t => actualDampedXiFinitePrimitive t * actualDampedXiReturnDensity A t) -
      (fun t => q * actualDampedXiReturnDensity A t) := by
    funext t; dsimp only [Pi.sub_apply]; ring
  unfold actualCenteredDampedXiReturn
  rw [he]
  change completeXiTail A = (∫ t in Real.log 7..2 * A,
    actualDampedXiFinitePrimitive t * actualDampedXiReturnDensity A t -
      q * actualDampedXiReturnDensity A t) - q * actualDampedXiReturnTest A (Real.log 7)
  rw [intervalIntegral.integral_sub hj (hd.const_mul q),
    intervalIntegral.integral_const_mul, actualDampedXiReturnDensity_integral_eq_neg_lower hA,
    completeXiTail_eq_damped_primitive_return hA]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualXiCenteredDampedReturn/Variant173821ccd59efdbef4861fa753317330334c8adbe80e59e5a7f35b757ae361c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualXiCenteredDampedReturn/Variant173821ccd59efdbef4861fa753317330334c8adbe80e59e5a7f35b757ae361c9.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `681086a096fbfe4e36fcfc65a3e06d97b8ca6eb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
