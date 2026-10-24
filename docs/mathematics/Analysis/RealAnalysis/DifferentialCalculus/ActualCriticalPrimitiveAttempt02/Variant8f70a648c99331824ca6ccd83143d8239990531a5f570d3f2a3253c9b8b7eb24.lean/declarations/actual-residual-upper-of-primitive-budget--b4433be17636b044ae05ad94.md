# actual_residual_upper_of_primitive_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e05f49e-c57b-ac50-6bc6-52763a92b090",
  "kind": "theorem",
  "lexical_name": "actual_residual_upper_of_primitive_budget",
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
  "slug": "actual-residual-upper-of-primitive-budget--b4433be17636b044ae05ad94",
  "source": {
    "blob": "2b2d94ef4752a1861b1fb7d72f1442110ea5a3d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 219,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalPrimitiveAttempt02/Variant8f70a648c99331824ca6ccd83143d8239990531a5f570d3f2a3253c9b8b7eb24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4433be17636b044ae05ad94162842d969fa92456b19484af9d340513b14eeda",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalPrimitiveAttempt02/Variant8f70a648c99331824ca6ccd83143d8239990531a5f570d3f2a3253c9b8b7eb24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e05f49e-c57b-ac50-6bc6-52763a92b090`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_residual_upper_of_primitive_budget (M : ℝ) (hM : 0 ≤ M)
    (hF : ∀ t : ℝ, 0 ≤ t → |criticalPrimitive t| ≤ M)
    (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A ≤ 2 - Real.eulerMascheroniConstant +
      M * (130 / (3 * A) + Real.sqrt (65 / 3 : ℝ)) := by
  rw [actual_residual_primitive_reconstruction A hA]
  have hw := (abs_le.mp (actual_primitive_work_bound M hM hF A hA)).2
  have hc := (abs_le.mp (criticalContinuousMoment_abs_le_two A hA)).2
  linarith

/-- The exact source residual budget outputs the requested explicit gap
constant whenever the independently named correction has its lower bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalPrimitiveAttempt02/Variant8f70a648c99331824ca6ccd83143d8239990531a5f570d3f2a3253c9b8b7eb24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalPrimitiveAttempt02/Variant8f70a648c99331824ca6ccd83143d8239990531a5f570d3f2a3253c9b8b7eb24.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b2d94ef4752a1861b1fb7d72f1442110ea5a3d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
