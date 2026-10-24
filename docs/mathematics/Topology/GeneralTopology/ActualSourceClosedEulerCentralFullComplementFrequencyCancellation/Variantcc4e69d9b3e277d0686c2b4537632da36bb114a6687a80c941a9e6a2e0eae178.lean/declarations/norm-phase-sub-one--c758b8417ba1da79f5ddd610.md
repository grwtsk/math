# norm_phase_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71c1c8cb-b214-17a6-445b-e8f4d07c9ae2",
  "kind": "theorem",
  "lexical_name": "norm_phase_sub_one",
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
  "slug": "norm-phase-sub-one--c758b8417ba1da79f5ddd610",
  "source": {
    "blob": "644467b0351edd4877dd7ace9085fe1618023415",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 44,
    "path": "GRWTSK/Topology/GeneralTopology/ActualSourceClosedEulerCentralFullComplementFrequencyCancellation/Variantcc4e69d9b3e277d0686c2b4537632da36bb114a6687a80c941a9e6a2e0eae178.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c758b8417ba1da79f5ddd6105e16eb3794bd13ebe1c519f3764b1ca759c8e983",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualSourceClosedEulerCentralFullComplementFrequencyCancellation/Variantcc4e69d9b3e277d0686c2b4537632da36bb114a6687a80c941a9e6a2e0eae178.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71c1c8cb-b214-17a6-445b-e8f4d07c9ae2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem norm_phase_sub_one (y : ℝ) :
    ‖Complex.exp (I * (y : ℂ)) - 1‖ ≤ |y| := by
  rw [Complex.norm_exp_I_mul_ofReal_sub_one, Real.norm_eq_abs, abs_mul]
  norm_num
  have hh := Real.abs_sin_le_abs (x := y / 2)
  have h := mul_le_mul_of_nonneg_left hh (by norm_num : (0 : ℝ) ≤ 2)
  rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at h
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualSourceClosedEulerCentralFullComplementFrequencyCancellation/Variantcc4e69d9b3e277d0686c2b4537632da36bb114a6687a80c941a9e6a2e0eae178.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualSourceClosedEulerCentralFullComplementFrequencyCancellation/Variantcc4e69d9b3e277d0686c2b4537632da36bb114a6687a80c941a9e6a2e0eae178.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `644467b0351edd4877dd7ace9085fe1618023415` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
