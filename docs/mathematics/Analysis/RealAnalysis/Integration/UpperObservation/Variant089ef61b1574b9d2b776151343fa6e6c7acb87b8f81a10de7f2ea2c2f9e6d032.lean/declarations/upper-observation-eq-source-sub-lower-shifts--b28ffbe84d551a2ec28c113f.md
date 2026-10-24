# upper_observation_eq_source_sub_lower_shifts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff21b8a9-527e-3a46-ed75-ddd51f7f35b9",
  "kind": "theorem",
  "lexical_name": "upper_observation_eq_source_sub_lower_shifts",
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
  "slug": "upper-observation-eq-source-sub-lower-shifts--b28ffbe84d551a2ec28c113f",
  "source": {
    "blob": "3d2cec1e309de74de028b495c9b5e185250e2040",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 105,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperObservation/Variant089ef61b1574b9d2b776151343fa6e6c7acb87b8f81a10de7f2ea2c2f9e6d032.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b28ffbe84d551a2ec28c113f200bafcd1199672e9e14f646007bdd355621a832",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UpperObservation/Variant089ef61b1574b9d2b776151343fa6e6c7acb87b8f81a10de7f2ea2c2f9e6d032.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff21b8a9-527e-3a46-ed75-ddd51f7f35b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upper_observation_eq_source_sub_lower_shifts (A x : ℝ)
    (hA : 1 ≤ A) (hx : 0 ≤ x) :
    finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x =
      normalizedTest explicitSecondDerivative A x -
        ∑ k ∈ Icc 1 ⌊Real.exp A⌋₊, (1 / Real.sqrt (k : ℝ)) *
          finiteObservation A (Icc 1 (⌊Real.exp A⌋₊ / 2)) (x + Real.log k) := by
  let N := ⌊Real.exp A⌋₊
  have hsplit (y : ℝ) : finiteObservation A (Icc 1 N) y =
      finiteObservation A (Icc 1 (N / 2)) y +
        finiteObservation A (Ioc (N / 2) N) y :=
    UpperRowInversion.positive_sum_split N (N / 2) _ (Nat.div_le_self _ _)
  have hupper : (∑ k ∈ Icc 1 N, (1 / Real.sqrt (k : ℝ)) *
      finiteObservation A (Ioc (N / 2) N) (x + Real.log k)) =
      finiteObservation A (Ioc (N / 2) N) x := by
    rw [sum_eq_single 1]
    · simp
    · intro k hk hk1
      rw [upper_observation_shift_zero A x k hA hx (by
        have := (mem_Icc.mp hk).1; omega), mul_zero]
    · intro h1
      exfalso
      apply h1
      apply mem_Icc.mpr
      refine ⟨le_rfl, ?_⟩
      apply (Nat.le_floor_iff (Real.exp_pos A).le).mpr
      simpa using Real.one_le_exp_iff.mpr (by linarith : 0 ≤ A)
  have hinv := finite_observation_inversion A x hA hx
  change (∑ k ∈ Icc 1 N, (1 / Real.sqrt (k : ℝ)) *
    finiteObservation A (Icc 1 N) (x + Real.log k)) = _ at hinv
  simp_rw [hsplit, mul_add] at hinv
  rw [sum_add_distrib, hupper] at hinv
  linarith

/-- Finite actual shifts preserve continuity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UpperObservation/Variant089ef61b1574b9d2b776151343fa6e6c7acb87b8f81a10de7f2ea2c2f9e6d032.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UpperObservation/Variant089ef61b1574b9d2b776151343fa6e6c7acb87b8f81a10de7f2ea2c2f9e6d032.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d2cec1e309de74de028b495c9b5e185250e2040` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
