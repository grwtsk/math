# mellin_endpoint_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fea9b8b7-bbde-133c-3fca-34253fd99317",
  "kind": "theorem",
  "lexical_name": "mellin_endpoint_norm_le",
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
  "slug": "mellin-endpoint-norm-le--a2f361cbee856373b05785f7",
  "source": {
    "blob": "047ca5885229cef251087a43f0c9e5d30a85bd86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 123,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEulerDerivativeVariation/Varianta352fd854fb356a162d3c1ced66b90cc7ac29abb655e912f266215784216df51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2f361cbee856373b05785f7e8aeae12f1e3da228a8d567ce17cc05733bf10d4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualEulerDerivativeVariation/Varianta352fd854fb356a162d3c1ced66b90cc7ac29abb655e912f266215784216df51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fea9b8b7-bbde-133c-3fca-34253fd99317`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mellin_endpoint_norm_le (A c : ℝ) (hA : 1 ≤ A) (hc : 1 < c) :
    ‖actualInitialPrimeMellin A ((c : ℂ) + (actualBumpMovingHeight A c : ℂ) * I)‖ ≤
      endpointConstant c * Real.exp (-((2 * c - 1) * A / 5)) / A ^ 9 := by
  have hz := actualBumpNormalization_lower A hA
  have hb := bumpMellinWeight_on_line_norm_le A c (actualBumpMovingHeight A c) hA hc
    (by rw [abs_of_pos (show 0 < actualBumpMovingHeight A c from Real.exp_pos _)]
        exact actualBumpMovingHeight_ge_one A c hA hc)
  rw [← actualInitialPrimeMellin_eq_bumpMellinWeight hA] at hb
  have hz0 : 0 < sourceNormalization A := source_normalization_pos A hA
  have hex : Real.exp ((2 * c - 1) * A) / (actualBumpMovingHeight A c) ^ 6 =
      Real.exp (-((2 * c - 1) * A / 5)) := by
    unfold actualBumpMovingHeight
    rw [← Real.exp_nat_mul, ← Real.exp_sub]
    congr 1
    ring
  rw [abs_of_pos (show 0 < actualBumpMovingHeight A c from Real.exp_pos _)] at hb
  calc
    _ ≤ (204288 : ℝ) ^ 2 / sourceNormalization A * (1 + c ^ 2) * (1 + (c - 1) ^ 2) *
        Real.exp ((2 * c - 1) * A) / (A ^ 9 * (actualBumpMovingHeight A c) ^ 6) := hb
    _ = ((204288 : ℝ) ^ 2 / sourceNormalization A * (1 + c ^ 2) * (1 + (c - 1) ^ 2)) *
        (Real.exp ((2 * c - 1) * A) / (actualBumpMovingHeight A c) ^ 6) / A ^ 9 := by ring
    _ = ((204288 : ℝ) ^ 2 / sourceNormalization A * (1 + c ^ 2) * (1 + (c - 1) ^ 2)) *
        Real.exp (-((2 * c - 1) * A / 5)) / A ^ 9 := by rw [hex]
    _ ≤ endpointConstant c * Real.exp (-((2 * c - 1) * A / 5)) / A ^ 9 := by
      unfold endpointConstant
      gcongr

/-- The actual derivative variation grows at the squared-transform scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEulerDerivativeVariation/Varianta352fd854fb356a162d3c1ced66b90cc7ac29abb655e912f266215784216df51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEulerDerivativeVariation/Varianta352fd854fb356a162d3c1ced66b90cc7ac29abb655e912f266215784216df51.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `047ca5885229cef251087a43f0c9e5d30a85bd86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
