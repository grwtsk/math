# actualRieszLaplaceAtoms_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b94f5d0f-55f1-1a93-2e32-4161db7ec6d4",
  "kind": "theorem",
  "lexical_name": "actualRieszLaplaceAtoms_tsum",
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
  "slug": "actualrieszlaplaceatoms-tsum--ea64264d27a89b0070c39354",
  "source": {
    "blob": "8f62dbd16ba49afad2ca876950dd5da5fa10d2d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 272,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea64264d27a89b0070c393541baddf26c18f9fa9e1aedb296385838313203e10",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b94f5d0f-55f1-1a93-2e32-4161db7ec6d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRieszLaplaceAtoms_tsum (z : ℂ) {t : ℝ} (ht : 0 ≤ t) :
    (∑' n : ℕ, actualRieszLaplaceAtom z n t) =
      ((actualMangoldtRieszPrimitive t + actualRieszContinuousRamp t : ℝ) : ℂ) *
        Complex.exp (-z * (t : ℂ)) := by
  classical
  have hzero : ∀ n : ℕ, n ∉ primePowerInventory t → actualRieszLaplaceAtom z n t = 0 := by
    intro n hn
    by_cases hn2 : 2 ≤ n
    · have hn0 : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
      have hgt : Nat.floor (Real.exp t) < n := by
        simpa only [primePowerInventory, Finset.mem_Icc, hn2, true_and, not_le] using hn
      have hlog : t < Real.log (n : ℝ) := by
        apply (Real.lt_log_iff_exp_lt hn0).2
        exact (Nat.floor_lt (Real.exp_pos t).le).1 hgt
      simp [actualRieszLaplaceAtom, max_eq_left (by linarith : t - Real.log n ≤ 0)]
    · have hn01 : n = 0 ∨ n = 1 := by omega
      rcases hn01 with rfl | rfl <;> simp [actualRieszLaplaceAtom]
  rw [tsum_eq_sum hzero]
  rw [actualMangoldtRieszPrimitive_eq_fixed_ramps (le_refl t)]
  simp only [sub_add_cancel, Complex.ofReal_sum, Complex.ofReal_mul]
  rw [Finset.sum_mul]
  rfl

end FormalResearch.RiemannHypothesis.SourceActualRieszInitialLaplace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f62dbd16ba49afad2ca876950dd5da5fa10d2d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
