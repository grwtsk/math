# actualMixed_rectangle_exp_prefactor_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95356c86-1a63-d56f-f835-e52bf9b406e3",
  "kind": "theorem",
  "lexical_name": "actualMixed_rectangle_exp_prefactor_lower",
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
  "slug": "actualmixed-rectangle-exp-prefactor-lower--110cc9b5ce2ed337c8313209",
  "source": {
    "blob": "256c8088a02d235ad31384637e40f1a1520a34dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualDoubleMixedStrictWindowChallengeSourceNative01/Variant0fa1707c905a11fe0ca76631e6e80e40bf2f163770ec718a84acec03b15a7a79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:110cc9b5ce2ed337c8313209877cb138a2aa3d7ad11687640aabbdf631477fd2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualDoubleMixedStrictWindowChallengeSourceNative01/Variant0fa1707c905a11fe0ca76631e6e80e40bf2f163770ec718a84acec03b15a7a79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95356c86-1a63-d56f-f835-e52bf9b406e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMixed_rectangle_exp_prefactor_lower {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : Real.log (vaughanCutoff A : ℝ) ≤ t)
    (hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ u)
    (hu2 : u ≤ ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    (1 / 2 : ℝ) ≤ Real.exp (t / 2) * Real.exp (-Real.log u / 2) := by
  have hU : (1 : ℝ) ≤ (vaughanCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_pos A (by linarith : 1 ≤ A)
  have hu0 : 0 < u := by push_cast at hu; linarith
  have hU0 : 0 < (vaughanCutoff A : ℝ) := by linarith
  have hup : u ≤ 3 * (vaughanCutoff A : ℝ) := by push_cast at hu2; linarith
  have het : (vaughanCutoff A : ℝ) ≤ Real.exp t := by
    simpa only [Real.exp_log hU0] using Real.exp_le_exp.mpr ht
  have heq : (Real.exp (t / 2) * Real.exp (-Real.log u / 2)) ^ 2 =
      Real.exp t / u := by
    rw [← Real.exp_add, ← Real.exp_nat_mul]
    have ha : (2 : ℝ) * (t / 2 + -Real.log u / 2) = t - Real.log u := by ring
    rw [ha, Real.exp_sub, Real.exp_log hu0]
  have hepos : 0 < Real.exp (t / 2) * Real.exp (-Real.log u / 2) := by positivity
  have he2 : (1 / 4 : ℝ) ≤ Real.exp t / u := by
    apply (le_div_iff₀ hu0).mpr
    linarith
  rw [← heq] at he2
  nlinarith

/-- A genuine second logarithmic mixed derivative is positive on the whole strict rectangle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualDoubleMixedStrictWindowChallengeSourceNative01/Variant0fa1707c905a11fe0ca76631e6e80e40bf2f163770ec718a84acec03b15a7a79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualDoubleMixedStrictWindowChallengeSourceNative01/Variant0fa1707c905a11fe0ca76631e6e80e40bf2f163770ec718a84acec03b15a7a79.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `256c8088a02d235ad31384637e40f1a1520a34dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
