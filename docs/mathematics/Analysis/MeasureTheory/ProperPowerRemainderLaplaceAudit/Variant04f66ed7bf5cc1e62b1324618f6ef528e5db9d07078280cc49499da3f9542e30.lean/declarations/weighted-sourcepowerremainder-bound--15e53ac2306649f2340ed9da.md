# weighted_sourcePowerRemainder_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a796f3d-4a9e-7829-5eaa-6b6a2fa485a0",
  "kind": "theorem",
  "lexical_name": "weighted_sourcePowerRemainder_bound",
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
  "slug": "weighted-sourcepowerremainder-bound--15e53ac2306649f2340ed9da",
  "source": {
    "blob": "48dfb0cb8e392348d6c7937b6c19910172ee724d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 91,
    "path": "GRWTSK/Analysis/MeasureTheory/ProperPowerRemainderLaplaceAudit/Variant04f66ed7bf5cc1e62b1324618f6ef528e5db9d07078280cc49499da3f9542e30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15e53ac2306649f2340ed9dae0999ccb70b43cdc7f62f179acdf74e75ef01e53",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ProperPowerRemainderLaplaceAudit/Variant04f66ed7bf5cc1e62b1324618f6ef528e5db9d07078280cc49499da3f9542e30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a796f3d-4a9e-7829-5eaa-6b6a2fa485a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_sourcePowerRemainder_bound (σ A : ℝ) (hA : 1 ≤ A) :
    Real.exp (-σ * A) * A ^ 17 * sourceNormalization A * |sourcePowerRemainder A| ≤
      (84 * properPowerBudget) * (A ^ 15 * Real.exp (-σ * A)) := by
  have hA0 : 0 < A := by linarith
  calc
    _ = Real.exp (-σ * A) * ((A ^ 17 * sourceNormalization A) * |sourcePowerRemainder A|) := by ring
    _ ≤ Real.exp (-σ * A) * ((42 * A ^ 17) * ((2 * properPowerBudget) / A ^ 2)) :=
      mul_le_mul_of_nonneg_left (mul_le_mul (SourcePNTRateOne.actual_scale_le A hA)
        (sourcePowerRemainder_abs_le A hA) (abs_nonneg _) (by positivity)) (Real.exp_pos _).le
    _ = _ := by
      field_simp
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ProperPowerRemainderLaplaceAudit/Variant04f66ed7bf5cc1e62b1324618f6ef528e5db9d07078280cc49499da3f9542e30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ProperPowerRemainderLaplaceAudit/Variant04f66ed7bf5cc1e62b1324618f6ef528e5db9d07078280cc49499da3f9542e30.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48dfb0cb8e392348d6c7937b6c19910172ee724d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
