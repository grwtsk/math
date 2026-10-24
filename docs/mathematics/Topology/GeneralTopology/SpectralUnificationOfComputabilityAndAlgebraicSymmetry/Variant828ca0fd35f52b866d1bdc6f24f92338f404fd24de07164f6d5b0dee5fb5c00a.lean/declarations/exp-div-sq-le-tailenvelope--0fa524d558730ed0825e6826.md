# exp_div_sq_le_tailEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b28cd89-a354-c46e-e03f-d81092b54b31",
  "kind": "theorem",
  "lexical_name": "exp_div_sq_le_tailEnvelope",
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
  "slug": "exp-div-sq-le-tailenvelope--0fa524d558730ed0825e6826",
  "source": {
    "blob": "f4de82508eec3c948716c4442003d9b5b0bb99f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 76,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant828ca0fd35f52b866d1bdc6f24f92338f404fd24de07164f6d5b0dee5fb5c00a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fa524d558730ed0825e68264b600a7f2ed0f9da807704a00e1a778efcf12047",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant828ca0fd35f52b866d1bdc6f24f92338f404fd24de07164f6d5b0dee5fb5c00a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b28cd89-a354-c46e-e03f-d81092b54b31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_div_sq_le_tailEnvelope (A : ℝ) (hA : 1 ≤ A) :
    Real.exp A / A ^ 2 ≤ tailEnvelope A := by
  have hp : 0 < A := lt_of_lt_of_le zero_lt_one hA
  have hl : Real.log A + 1 ≤ A := by linarith [Real.log_le_sub_one_of_pos hp]
  have he : A ≤ Real.exp A := by linarith [Real.add_one_le_exp A]
  have hmain : Real.exp A ≤ Real.exp A * (A + 1) - A * (Real.log A + 1) := by
    nlinarith [mul_nonneg hp.le (sub_nonneg.mpr (hl.trans he))]
  unfold tailEnvelope
  calc
    _ ≤ (4160 / (3 * A ^ 2)) * Real.exp A := by
      have hsmall : 1 / A ^ 2 ≤ 4160 / (3 * A ^ 2) := by
        apply (div_le_div_iff₀ (sq_pos_of_pos hp) (by positivity)).2
        nlinarith [sq_nonneg A]
      simpa only [one_mul, div_mul_eq_mul_div] using
        mul_le_mul_of_nonneg_right hsmall (Real.exp_pos A).le
    _ ≤ _ := mul_le_mul_of_nonneg_left hmain (by positivity)

/-- After division by any fixed natural power, this particular norm envelope
still tends to positive infinity through real scales. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant828ca0fd35f52b866d1bdc6f24f92338f404fd24de07164f6d5b0dee5fb5c00a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant828ca0fd35f52b866d1bdc6f24f92338f404fd24de07164f6d5b0dee5fb5c00a.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4de82508eec3c948716c4442003d9b5b0bb99f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
