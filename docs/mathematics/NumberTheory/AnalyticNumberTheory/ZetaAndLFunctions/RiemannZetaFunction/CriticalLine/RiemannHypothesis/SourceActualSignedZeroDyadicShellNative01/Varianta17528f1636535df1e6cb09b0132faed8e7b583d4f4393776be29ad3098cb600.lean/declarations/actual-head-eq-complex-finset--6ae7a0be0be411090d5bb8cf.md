# actual_head_eq_complex_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46c75711-afbc-f592-020f-c8f5c752953d",
  "kind": "theorem",
  "lexical_name": "actual_head_eq_complex_finset",
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
  "slug": "actual-head-eq-complex-finset--6ae7a0be0be411090d5bb8cf",
  "source": {
    "blob": "1dfc2ec84eb86cc863ba0a288ac09cb7264ad05d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 72,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroDyadicShellNative01/Varianta17528f1636535df1e6cb09b0132faed8e7b583d4f4393776be29ad3098cb600.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ae7a0be0be411090d5bb8cf1857d4ad43d7246463043dca5d6d31192adccec9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroDyadicShellNative01/Varianta17528f1636535df1e6cb09b0132faed8e7b583d4f4393776be29ad3098cb600.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46c75711-afbc-f592-020f-c8f5c752953d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_head_eq_complex_finset (A R : ℝ) (Z : Finset ℂ)
    (hZ : (Z : Set ℂ) = {rho : ℂ | IsNontrivialZero rho ∧ -R < rho.im ∧ rho.im < R}) :
    actualZeroHeightHead A R = ∑ rho ∈ Z, (zeroMult rho : ℂ) *
      actualInitialPrimeMellin A rho := by
  classical
  let F := (actualZeroHeightHead_finite R).toFinset
  have hmem (rho : ℂ) : rho ∈ Z ↔ IsNontrivialZero rho ∧ |rho.im| < R := by
    rw [← Finset.mem_coe, hZ]
    simp only [Set.mem_ofPred_eq, abs_lt]
  unfold actualZeroHeightHead
  apply Finset.sum_bij (fun rho _ => (rho : ℂ))
  · intro rho hrho
    apply (hmem rho).mpr
    exact ⟨rho.2, by
      simpa only [Set.Finite.mem_toFinset, Set.mem_ofPred_eq] using hrho⟩
  · intro rho hrho eta heta he
    exact Subtype.val_injective he
  · intro rho hrho
    have hh := (hmem rho).mp hrho
    refine ⟨⟨rho, hh.1⟩, ?_, rfl⟩
    simpa only [Set.Finite.mem_toFinset, Set.mem_ofPred_eq] using hh.2
  · intro rho hrho
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroDyadicShellNative01/Varianta17528f1636535df1e6cb09b0132faed8e7b583d4f4393776be29ad3098cb600.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroDyadicShellNative01/Varianta17528f1636535df1e6cb09b0132faed8e7b583d4f4393776be29ad3098cb600.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dfc2ec84eb86cc863ba0a288ac09cb7264ad05d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
