# mertensResidual_eq_initial_and_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e72daca5-052f-804a-a673-8629083d08e9",
  "kind": "theorem",
  "lexical_name": "mertensResidual_eq_initial_and_tail",
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
  "slug": "mertensresidual-eq-initial-and-tail--baa47f744a8e1baf1e83bfae",
  "source": {
    "blob": "8709e431bbb9fc8e6d865cb8e1aeda4e88ccc07a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 264,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf42390e52f10602cc541a20a0a0d5ed7708ae9d2ce974ef04fdc87fbb1fa18bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:baa47f744a8e1baf1e83bfae17c693f930653fb502a1880a15c45beda6a8bbbc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf42390e52f10602cc541a20a0a0d5ed7708ae9d2ce974ef04fdc87fbb1fa18bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e72daca5-052f-804a-a673-8629083d08e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_eq_initial_and_tail (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A =
      sourceLogKernel A 0 - sourceLogKernel A (Real.log 2) / Real.sqrt 2 -
        (1 - 1 / Real.sqrt 2) * sourceLogKernel A (Real.log 3) -
      ∫ s in Real.log 3..(2 * A),
        weightedMobiusPrimitive s * deriv (sourceLogKernel A) s := by
  have h3 : 0 ≤ Real.log 3 := Real.log_nonneg (by norm_num)
  have hu : Real.log 3 ≤ 2 * A := (log_three_lt_source_upper A hA).le
  have hf := weightedMobiusPrimitive_mul_deriv_integrable A hA
  have hi1 : IntervalIntegrable
      (fun s => weightedMobiusPrimitive s * deriv (sourceLogKernel A) s)
      volume 0 (Real.log 3) :=
    (intervalIntegrable_iff_integrableOn_Icc_of_le h3).2
      (hf.mono_set (Icc_subset_Icc le_rfl hu))
  have hi2 : IntervalIntegrable
      (fun s => weightedMobiusPrimitive s * deriv (sourceLogKernel A) s)
      volume (Real.log 3) (2 * A) :=
    (intervalIntegrable_iff_integrableOn_Icc_of_le hu).2
      (hf.mono_set (Icc_subset_Icc h3 le_rfl))
  rw [mertensResidual_eq_weighted_log_pairing A hA,
    ← intervalIntegral.integral_add_adjacent_intervals hi1 hi2]
  have he := source_initial_pairing_identity A hA
  linarith

/-- The explicit signed initial arithmetic correction to the remaining tail
is bounded by a constant times 1/A, uniformly for all real A ≥ 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf42390e52f10602cc541a20a0a0d5ed7708ae9d2ce974ef04fdc87fbb1fa18bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf42390e52f10602cc541a20a0a0d5ed7708ae9d2ce974ef04fdc87fbb1fa18bd.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8709e431bbb9fc8e6d865cb8e1aeda4e88ccc07a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
