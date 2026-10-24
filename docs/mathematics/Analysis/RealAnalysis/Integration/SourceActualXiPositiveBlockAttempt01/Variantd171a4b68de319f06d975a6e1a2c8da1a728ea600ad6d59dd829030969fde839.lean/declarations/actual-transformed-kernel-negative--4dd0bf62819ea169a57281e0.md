# actual_transformed_kernel_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd602ded-7de8-1acb-78d3-c5ea98d77e8b",
  "kind": "theorem",
  "lexical_name": "actual_transformed_kernel_negative",
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
  "slug": "actual-transformed-kernel-negative--4dd0bf62819ea169a57281e0",
  "source": {
    "blob": "dd928f46ff726353b133f039e499555666e9aea9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlockAttempt01/Variantd171a4b68de319f06d975a6e1a2c8da1a728ea600ad6d59dd829030969fde839.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dd0bf62819ea169a57281e0d224719c6995ae95314b592a9572a6319573e9cb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlockAttempt01/Variantd171a4b68de319f06d975a6e1a2c8da1a728ea600ad6d59dd829030969fde839.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd602ded-7de8-1acb-78d3-c5ea98d77e8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_transformed_kernel_negative {A y : ℝ} (hA : 40 ≤ A)
    (hy : (13 / 2 : ℝ) ≤ y) (hy7 : y ≤ 7) :
    deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y) -
      sourceCorrelation explicitSecondDerivative A (Real.log y) / 2 ≤ -(1 / 4 : ℝ) := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hypos : 0 < y := by linarith
  have hl0 : 0 ≤ Real.log y := Real.log_nonneg (by linarith)
  have hl2 : Real.log y ≤ 2 :=
    (Real.log_le_log hypos hy7).trans log_seven_lt_two.le
  have hc := sourceCorrelation_sub_one_abs_le hA1 (Real.log y)
  rw [abs_of_nonneg hl0] at hc
  have hbound : 5 * Real.log y / A ≤ (1 / 4 : ℝ) :=
    (div_le_iff₀ hp).mpr (by linarith)
  have hcl : (3 / 4 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A (Real.log y) := by
    linarith [(abs_le.mp hc).1]
  have hd := sourceCorrelation_deriv_abs_le_five_div hA1 (Real.log y)
  have hdb : 5 / A ≤ (1 / 8 : ℝ) := (div_le_iff₀ hp).mpr (by linarith)
  linarith [(abs_le.mp hd).2]

/-- Both negative factors give a uniform positive density strictly before prime seven. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlockAttempt01/Variantd171a4b68de319f06d975a6e1a2c8da1a728ea600ad6d59dd829030969fde839.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlockAttempt01/Variantd171a4b68de319f06d975a6e1a2c8da1a728ea600ad6d59dd829030969fde839.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd928f46ff726353b133f039e499555666e9aea9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
