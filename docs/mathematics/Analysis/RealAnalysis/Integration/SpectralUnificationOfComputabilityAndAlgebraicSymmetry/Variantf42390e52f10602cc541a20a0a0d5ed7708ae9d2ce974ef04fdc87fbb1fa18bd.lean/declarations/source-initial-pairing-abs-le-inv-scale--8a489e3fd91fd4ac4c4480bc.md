# source_initial_pairing_abs_le_inv_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:605fa450-68aa-ee49-1354-c4a45d72da91",
  "kind": "theorem",
  "lexical_name": "source_initial_pairing_abs_le_inv_scale",
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
  "slug": "source-initial-pairing-abs-le-inv-scale--8a489e3fd91fd4ac4c4480bc",
  "source": {
    "blob": "8709e431bbb9fc8e6d865cb8e1aeda4e88ccc07a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 237,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf42390e52f10602cc541a20a0a0d5ed7708ae9d2ce974ef04fdc87fbb1fa18bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a489e3fd91fd4ac4c4480bc488d673b1b829a11044a55f13cfcdb2133f80db6",
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

Occurrence: `result:605fa450-68aa-ee49-1354-c4a45d72da91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_initial_pairing_abs_le_inv_scale (A : ℝ) (hA : 1 ≤ A) :
    |-(∫ s in (0 : ℝ)..Real.log 3,
      weightedMobiusPrimitive s * deriv (sourceLogKernel A) s)| ≤
      (Real.log 2 + (1 - 1 / Real.sqrt 2) * (Real.log 3 - Real.log 2)) *
        (380 / (3 * A)) := by
  have hAp : 0 < A := by linarith
  have hdiv : 260 / (3 * A ^ 2) ≤ 260 / (3 * A) :=
    div_le_div_of_nonneg_left (by norm_num) (by positivity) (by nlinarith)
  have hbound : 40 / A + 260 / (3 * A ^ 2) ≤ 380 / (3 * A) := by
    calc
      _ ≤ 40 / A + 260 / (3 * A) := add_le_add le_rfl hdiv
      _ = _ := by ring
  have h2 : 0 ≤ Real.log 2 := Real.log_nonneg (by norm_num)
  have h23 : 0 ≤ Real.log 3 - Real.log 2 :=
    sub_nonneg.mpr (Real.log_le_log (by norm_num) (by norm_num))
  have hw : 0 ≤ Real.log 2 + (1 - 1 / Real.sqrt 2) * (Real.log 3 - Real.log 2) :=
    add_nonneg h2 (mul_nonneg first_prime_block_weight_pos.le h23)
  exact (source_initial_pairing_abs_le A hA).trans (mul_le_mul_of_nonneg_left hbound hw)

/-- The first two arithmetic blocks fit inside every admitted source interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf42390e52f10602cc541a20a0a0d5ed7708ae9d2ce974ef04fdc87fbb1fa18bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf42390e52f10602cc541a20a0a0d5ed7708ae9d2ce974ef04fdc87fbb1fa18bd.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8709e431bbb9fc8e6d865cb8e1aeda4e88ccc07a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
