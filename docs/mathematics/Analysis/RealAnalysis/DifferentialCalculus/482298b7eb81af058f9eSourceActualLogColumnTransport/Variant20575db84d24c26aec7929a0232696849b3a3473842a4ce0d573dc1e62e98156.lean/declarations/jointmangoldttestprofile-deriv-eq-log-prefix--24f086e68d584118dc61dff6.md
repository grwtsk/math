# jointMangoldtTestProfile_deriv_eq_log_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3e8f92d-0cbb-e31f-851e-ebe869c2bf35",
  "kind": "theorem",
  "lexical_name": "jointMangoldtTestProfile_deriv_eq_log_prefix",
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
  "slug": "jointmangoldttestprofile-deriv-eq-log-prefix--24f086e68d584118dc61dff6",
  "source": {
    "blob": "2e07caa79af822ac0c96df4b132a6dcc58929e1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 223,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant20575db84d24c26aec7929a0232696849b3a3473842a4ce0d573dc1e62e98156.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24f086e68d584118dc61dff68617c7cf546dfe98619c48c4fb3ddf494ce78f3e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant20575db84d24c26aec7929a0232696849b3a3473842a4ce0d573dc1e62e98156.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3e8f92d-0cbb-e31f-851e-ebe869c2bf35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointMangoldtTestProfile_deriv_eq_log_prefix {A : ℝ} (hA : 0 < A)
    (hK : vaughanCutoff A + 1 ≤ sourceKernelCutoff A / (vaughanCutoff A + 1)) (t : ℝ) :
    deriv (jointMangoldtTestProfile A) t =
      -(∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
        actualLogColumnPrefix A s * actualLogMixedDensity A t s) := by
  let U := vaughanCutoff A
  let K := sourceKernelCutoff A / (U + 1)
  let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
  have hpos {k : ℕ} (hk : k ∈ Finset.Ico (U + 1) K) : 1 ≤ k := by
    have := (Finset.mem_Ico.mp hk).1
    omega
  have hf : jointMangoldtTestProfile A = fun x =>
      ∑ k ∈ Finset.Ico (U + 1) K,
        B k * (actualLogColumnSource A x (Real.log (k : ℝ)) -
          actualLogColumnSource A x (Real.log ((k : ℝ) + 1))) := by
    funext x
    unfold jointMangoldtTestProfile
    dsimp only
    apply Finset.sum_congr rfl
    intro k hk
    have hk1 := hpos hk
    have hk0 : 0 < (k : ℝ) := by exact_mod_cast (by omega : 0 < k)
    rw [actualLogColumnSource_at_log A x (k : ℝ) hk0,
      actualLogColumnSource_at_log A x ((k : ℝ) + 1) (by positivity)]
    simp only [B, U, Nat.cast_add, Nat.cast_one]
  have hd : HasDerivAt (fun x => ∑ k ∈ Finset.Ico (U + 1) K,
      B k * (actualLogColumnSource A x (Real.log (k : ℝ)) -
        actualLogColumnSource A x (Real.log ((k : ℝ) + 1))))
      (∑ k ∈ Finset.Ico (U + 1) K,
        B k * (logTimeColumnDeriv A t (Real.log (k : ℝ)) -
          logTimeColumnDeriv A t (Real.log ((k : ℝ) + 1)))) t := by
    apply HasDerivAt.fun_sum
    intro k _
    exact ((log_source_time_hasDerivAt hA t _).sub
      (log_source_time_hasDerivAt hA t _)).const_mul (B k)
  rw [hf, hd.deriv]
  calc
    _ = -(∑ k ∈ Finset.Ico (U + 1) K, B k *
        ∫ s in Real.log (k : ℝ)..Real.log ((k : ℝ) + 1), actualLogMixedDensity A t s) := by
      rw [← Finset.sum_neg_distrib]
      apply Finset.sum_congr rfl
      intro k hk
      rw [timeColumn_sub_eq_neg_log_cell hA t (hpos hk)]
      ring
    _ = _ := by
      rw [actual_finite_log_prefix_transport A K hK
        (actualLogMixedDensity A t) (actualLogMixedDensity_continuous hA t)]
      rfl

/-- Transport the literal original work and closed inventories without changing compensation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant20575db84d24c26aec7929a0232696849b3a3473842a4ce0d573dc1e62e98156.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant20575db84d24c26aec7929a0232696849b3a3473842a4ce0d573dc1e62e98156.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e07caa79af822ac0c96df4b132a6dcc58929e1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
