# actualMixed_firstColumn_density_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad61ac99-bc32-200e-0597-bb0c4f6769c8",
  "kind": "theorem",
  "lexical_name": "actualMixed_firstColumn_density_upper",
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
  "slug": "actualmixed-firstcolumn-density-upper--3051855f2706a3e8f47a3ed0",
  "source": {
    "blob": "9bd36cc6d81eebac5e62582c2b8b1f75f3a142cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 138,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/E24168cf3bf9b367acd3ActualMixedKernelFirstColumnChallenge/Variant982dc5ce6926b230ce194f309752fd493e93914e2c12508c3d1690a2a12f7fb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3051855f2706a3e8f47a3ed0e09e415e83c697adb824c13e1127b77bac8bc9bd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/E24168cf3bf9b367acd3ActualMixedKernelFirstColumnChallenge/Variant982dc5ce6926b230ce194f309752fd493e93914e2c12508c3d1690a2a12f7fb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad61ac99-bc32-200e-0597-bb0c4f6769c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMixed_firstColumn_density_upper {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : Real.log (vaughanCutoff A : ℝ) ≤ t)
    (ht1 : t ≤ Real.log (vaughanCutoff A : ℝ) + 1)
    (hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ u)
    (hu2 : u ≤ ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    actualMixedColumnDensity A t u ≤ -(Real.exp (t / 2) / (u * Real.sqrt u)) / 5 := by
  have hu0 : 0 < u := by
    have hp : 0 < ((vaughanCutoff A + 1 : ℕ) : ℝ) := by positivity
    linarith
  have hm := mul_le_mul_of_nonneg_left
    (actualMixed_firstColumn_coefficient_upper hA ht ht1 hu hu2)
    (le_of_lt (div_pos (Real.exp_pos (t / 2)) (mul_pos hu0 (Real.sqrt_pos.mpr hu0))))
  unfold actualMixedColumnDensity
  linarith

end
end RH16IndependentChallengeNext
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/E24168cf3bf9b367acd3ActualMixedKernelFirstColumnChallenge/Variant982dc5ce6926b230ce194f309752fd493e93914e2c12508c3d1690a2a12f7fb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/E24168cf3bf9b367acd3ActualMixedKernelFirstColumnChallenge/Variant982dc5ce6926b230ce194f309752fd493e93914e2c12508c3d1690a2a12f7fb4.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bd36cc6d81eebac5e62582c2b8b1f75f3a142cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
