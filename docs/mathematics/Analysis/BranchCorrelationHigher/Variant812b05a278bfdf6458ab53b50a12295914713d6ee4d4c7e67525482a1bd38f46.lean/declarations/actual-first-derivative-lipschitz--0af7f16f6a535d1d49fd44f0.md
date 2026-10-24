# actual_first_derivative_lipschitz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f277059-3ebe-12f9-6ce9-c4dd5e57488e",
  "kind": "theorem",
  "lexical_name": "actual_first_derivative_lipschitz",
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
  "slug": "actual-first-derivative-lipschitz--0af7f16f6a535d1d49fd44f0",
  "source": {
    "blob": "522b2da6562fc2afa49f5518ddddb0d62e52012c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 32,
    "path": "GRWTSK/Analysis/BranchCorrelationHigher/Variant812b05a278bfdf6458ab53b50a12295914713d6ee4d4c7e67525482a1bd38f46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0af7f16f6a535d1d49fd44f0e55e5b480c02ad29a2bd6c694f2c9eef19fef4a8",
  "verification": {
    "reference": "docs/verification/Analysis/BranchCorrelationHigher/Variant812b05a278bfdf6458ab53b50a12295914713d6ee4d4c7e67525482a1bd38f46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f277059-3ebe-12f9-6ce9-c4dd5e57488e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_first_derivative_lipschitz {A : ℝ} (hA : 0 < A) :
    ∃ K : NNReal, LipschitzWith K (deriv (normalizedTest explicitSecondDerivative A)) := by
  have hab : -A ≤ A := by linarith
  have hc : Continuous (normalizedSecondInterior A) := by
    change Continuous (fun x : ℝ ↦ normalizedSecondInterior A x)
    dsimp [normalizedSecondInterior, fourthInterior, unitFourth, secondInterior]
    fun_prop
  obtain ⟨B, hB⟩ := isCompact_Icc.exists_bound_of_continuousOn hc.continuousOn
  let K : NNReal := ⟨max B 0, le_max_right _ _⟩
  have hl : LipschitzOnWith K (normalizedInteriorDerivative A) (Icc (-A) A) := by
    apply (convex_Icc (-A) A).lipschitzOnWith_of_nnnorm_hasDerivWithin_le
      (fun x _ ↦ (normalizedInteriorDerivative_hasDerivAt A x).hasDerivWithinAt)
    intro x hx
    exact_mod_cast (hB x hx).trans (le_max_left B 0)
  have heq : deriv (normalizedTest explicitSecondDerivative A) =
      fun x ↦ normalizedInteriorDerivative A (projIcc (-A) A hab x) := by
    rw [actual_first_derivative_eq_indicator hA]
    funext x
    by_cases hx : x ∈ Icc (-A) A
    · rw [indicator_of_mem hx, projIcc_of_mem hab hx]
    · rw [indicator_of_notMem hx]
      have houtside : x < -A ∨ A < x := by simpa only [mem_Icc, not_and_or, not_le] using hx
      rcases houtside with hx | hx
      · rw [projIcc_of_le_left hab hx.le]
        exact (normalizedInterior_frontier A hA (-A)
          (by rw [frontier_Icc hab]; simp)).2.symm
      · rw [projIcc_of_right_le hab hx.le]
        exact (normalizedInterior_frontier A hA A
          (by rw [frontier_Icc hab]; simp)).2.symm
  refine ⟨K, ?_⟩
  rw [heq]
  apply LipschitzWith.of_dist_le_mul
  intro x y
  have hp : dist (projIcc (-A) A hab x : ℝ) (projIcc (-A) A hab y : ℝ) ≤ dist x y := by
    simpa only [NNReal.coe_one, one_mul, Subtype.dist_eq] using
      (LipschitzWith.projIcc hab).dist_le_mul x y
  exact (hl.dist_le_mul _ (projIcc (-A) A hab x).property
    _ (projIcc (-A) A hab y).property).trans
      (mul_le_mul_of_nonneg_left hp K.coe_nonneg)

/-- At every point off the seams, the representative is the actual derivative of q'. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchCorrelationHigher/Variant812b05a278bfdf6458ab53b50a12295914713d6ee4d4c7e67525482a1bd38f46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchCorrelationHigher/Variant812b05a278bfdf6458ab53b50a12295914713d6ee4d4c7e67525482a1bd38f46.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `522b2da6562fc2afa49f5518ddddb0d62e52012c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
