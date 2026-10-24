# actualCutoff_log_sq_le_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f19c30f5-b8ac-225b-7f66-6f54632cf29f",
  "kind": "theorem",
  "lexical_name": "actualCutoff_log_sq_le_sqrt",
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
  "slug": "actualcutoff-log-sq-le-sqrt--204dee07f240a08b9dd4996c",
  "source": {
    "blob": "3310621f7e849da404f8e35fddffac50ae46b445",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 183,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1067b8a8638e282fd880ActualSharpEarlyBaseline/Variant148610aa52b93468f9f3a5e1c80b8fb0daf2c8d229fda3dd88a8e3827a62822d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:204dee07f240a08b9dd4996cf2c581c78c10ad4d169e61c1da2bf066a1a10c64",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/1067b8a8638e282fd880ActualSharpEarlyBaseline/Variant148610aa52b93468f9f3a5e1c80b8fb0daf2c8d229fda3dd88a8e3827a62822d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f19c30f5-b8ac-225b-7f66-6f54632cf29f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCutoff_log_sq_le_sqrt {A : ℝ} (hA : 1 ≤ A) :
    (Real.log (vaughanCutoff A : ℝ)) ^ 2 ≤ 64 * Real.sqrt A := by
  have hp : 0 < A := by linarith
  have hU : (1 : ℝ) ≤ (vaughanCutoff A : ℝ) := (actual_cutoff_order A hA).1
  have hU0 : (0 : ℝ) < (vaughanCutoff A : ℝ) := by linarith
  have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have ht0 : 0 ≤ Real.log (vaughanCutoff A : ℝ) := Real.log_nonneg hU
  have ht := Real.log_le_log hU0 hf
  rw [Real.log_pow] at ht
  norm_num at ht
  have hs0 : 0 < Real.sqrt A := Real.sqrt_pos.2 hp
  have hss0 : 0 < Real.sqrt (Real.sqrt A) := Real.sqrt_pos.2 hs0
  have hl := Real.log_le_sub_one_of_pos hss0
  rw [Real.log_sqrt hs0.le, Real.log_sqrt hp.le] at hl
  have hts : Real.log (vaughanCutoff A : ℝ) ≤ 8 * Real.sqrt (Real.sqrt A) := by
    linarith
  have hm := mul_self_le_mul_self ht0 hts
  have hsq := Real.sq_sqrt hs0.le
  nlinarith

/-- The actual floor changes its square-root scale by at most one half at these real scales. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/1067b8a8638e282fd880ActualSharpEarlyBaseline/Variant148610aa52b93468f9f3a5e1c80b8fb0daf2c8d229fda3dd88a8e3827a62822d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1067b8a8638e282fd880ActualSharpEarlyBaseline/Variant148610aa52b93468f9f3a5e1c80b8fb0daf2c8d229fda3dd88a8e3827a62822d.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3310621f7e849da404f8e35fddffac50ae46b445` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
