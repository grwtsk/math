# expanded_sum_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2462d54-9a3a-bc05-74fe-b5abfa72e021",
  "kind": "theorem",
  "lexical_name": "expanded_sum_norm_le",
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
  "slug": "expanded-sum-norm-le--7ce4944162645467fee33db1",
  "source": {
    "blob": "5642226a22f8e4aed7932e83090b4a56b70167d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 567,
    "line": 529,
    "path": "GRWTSK/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ce4944162645467fee33db1d09f2f1b6d62d2c78ea603417b7316daa1cd14e1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2462d54-9a3a-bc05-74fe-b5abfa72e021`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–567.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expanded_sum_norm_le
    (A : ℝ) (hA : 1 ≤ A) :
    ‖∑' o : ZeroOccurrence,
        expandedSummand A (shiftedValue o)‖ ≤
      growthConstant * (1 + A ^ 8) * Real.exp A := by
  let C : ℝ :=
    growthFactor * (1 + A ^ 8) * Real.exp A
  have hC : 0 ≤ C := by
    dsimp [C]
    positivity
  have hmajor :
      Summable
        (fun o : ZeroOccurrence ↦ C * modeWeight o) :=
    modeWeight_summable.mul_left C
  have hnorm :
      Summable
        (fun o : ZeroOccurrence ↦
          ‖expandedSummand A (shiftedValue o)‖) := by
    apply Summable.of_nonneg_of_le
      (fun _ ↦ norm_nonneg _)
      (fun o ↦ by
        simpa [C] using expandedSummand_norm_le A hA o)
      hmajor
  calc
    _ ≤ ∑' o : ZeroOccurrence,
        ‖expandedSummand A (shiftedValue o)‖ :=
      norm_tsum_le_tsum_norm hnorm
    _ ≤ ∑' o : ZeroOccurrence, C * modeWeight o :=
      hnorm.tsum_le_tsum
        (fun o ↦ by
          simpa [C] using expandedSummand_norm_le A hA o)
        hmajor
    _ = C * ∑' o : ZeroOccurrence, modeWeight o := by
      rw [modeWeight_summable.tsum_mul_left]
    _ = growthConstant * (1 + A ^ 8) * Real.exp A := by
      unfold C growthConstant
      ring

/-- RH-0010 equation (18), now derived from the actual B3.2 source identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Expansion/Variant72407b5f41e0dd9c2196c3d6c1c82a2fc9865793f2b8b17abd4fc0e65c953a0d.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5642226a22f8e4aed7932e83090b4a56b70167d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
