# coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf1fb947-fc6c-e3f8-9ee0-181f70614473",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_cutoff",
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
  "slug": "coregrowingshiftendpointfinitecyclicinterval-norm-le-cutoff--5f48ef5ee998de936d92e016",
  "source": {
    "blob": "83e06ededa83a4e32e767f38cbc054da38dadd23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 108,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicIntervalBridge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f48ef5ee998de936d92e016713fe75ab71cda29b4ec9591ad48b0243a79a7b8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicIntervalBridge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf1fb947-fc6c-e3f8-9ee0-181f70614473`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_cutoff
    (j A B L : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j)
    (hA : 1 ≤ A)
    (hLt : L < coreGrowingShiftEndpointFiniteCyclicDistance j t) :
    ‖coreGrowingShiftEndpointFiniteCyclicIntervalSum j A B t‖ ≤
      (coreGrowingShiftEndpointFiniteCyclicModulus j : ℝ) /
        (2 * ((L + 1 : ℕ) : ℝ)) := by
  have ht : t ≠ 0 := by
    intro ht0
    subst t
    simp [coreGrowingShiftEndpointFiniteCyclicDistance] at hLt
  calc
    ‖coreGrowingShiftEndpointFiniteCyclicIntervalSum j A B t‖ ≤
        2 * ‖(coreGrowingShiftEndpointFiniteCyclicMultiplier j t)⁻¹‖ :=
      coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_invMultiplier
        j A B t hA ht
    _ ≤ 2 *
        ((coreGrowingShiftEndpointFiniteCyclicModulus j : ℝ) /
          (4 * ((L + 1 : ℕ) : ℝ))) := by
      exact mul_le_mul_of_nonneg_left
        (coreGrowingShiftEndpointFiniteCyclicMultiplier_inv_norm_le_cutoff
          (j := j) (L := L) (t := t) hLt)
        (by norm_num)
    _ = (coreGrowingShiftEndpointFiniteCyclicModulus j : ℝ) /
        (2 * ((L + 1 : ℕ) : ℝ)) := by
      field_simp
      ring

/-- At the zero frequency the endpoint interval sum is exactly its
cardinality, so no inverse-multiplier estimate may include this mode. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicIntervalBridge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicIntervalBridge.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83e06ededa83a4e32e767f38cbc054da38dadd23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
