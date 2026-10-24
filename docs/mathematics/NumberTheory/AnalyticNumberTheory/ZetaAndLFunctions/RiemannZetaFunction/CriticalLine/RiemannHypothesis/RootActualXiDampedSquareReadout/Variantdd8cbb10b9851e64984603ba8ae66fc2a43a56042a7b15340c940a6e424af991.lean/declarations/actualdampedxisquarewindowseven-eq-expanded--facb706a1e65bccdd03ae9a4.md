# actualDampedXiSquareWindowSeven_eq_expanded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5690a9cb-a1ce-e020-a51e-e491d92bb9a3",
  "kind": "theorem",
  "lexical_name": "actualDampedXiSquareWindowSeven_eq_expanded",
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
  "slug": "actualdampedxisquarewindowseven-eq-expanded--facb706a1e65bccdd03ae9a4",
  "source": {
    "blob": "7e0869b655ba6dab3e6128983b9890010b40a9c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiDampedSquareReadout/Variantdd8cbb10b9851e64984603ba8ae66fc2a43a56042a7b15340c940a6e424af991.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:facb706a1e65bccdd03ae9a416426539799cfd0942d828e3741d2ce6c10d8016",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiDampedSquareReadout/Variantdd8cbb10b9851e64984603ba8ae66fc2a43a56042a7b15340c940a6e424af991.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5690a9cb-a1ce-e020-a51e-e491d92bb9a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDampedXiSquareWindowSeven_eq_expanded {Y : ℝ} (hY : 7 ≤ Y) :
    actualDampedXiSquareWindowSeven Y =
      (∑ n ∈ Finset.Ioc 7 (Nat.floor Y), (vonMangoldt n : ℝ) / (n : ℝ)) -
        2 * actualMangoldtHalfWindowSeven Y / Real.sqrt Y +
          (Chebyshev.psi Y - Chebyshev.psi 7) / Y := by
  have hp : 0 < Y := by linarith
  have hy := Real.sq_sqrt hp.le
  have hsy : Real.sqrt Y ≠ 0 := (Real.sqrt_pos.mpr hp).ne'
  have hterm (n : ℕ) (hn : n ∈ Finset.Ioc 7 (Nat.floor Y)) :
      (vonMangoldt n : ℝ) * actualDampedXiSquareKernel Y n =
        (vonMangoldt n : ℝ) / (n : ℝ) -
          2 * ((vonMangoldt n : ℝ) / Real.sqrt (n : ℝ)) / Real.sqrt Y +
            (vonMangoldt n : ℝ) / Y := by
    have hn0 : 0 < (n : ℝ) := by
      have hnat : 7 < n := (Finset.mem_Ioc.mp hn).1
      exact_mod_cast (show 0 < n by omega)
    have hsn : Real.sqrt (n : ℝ) ≠ 0 := (Real.sqrt_pos.mpr hn0).ne'
    have hns := Real.sq_sqrt hn0.le
    unfold actualDampedXiSquareKernel
    field_simp
    ring_nf
    simp only [hns, hy]
    ring
  unfold actualDampedXiSquareWindowSeven
  rw [Finset.sum_congr rfl hterm]
  simp only [Finset.sum_add_distrib, Finset.sum_sub_distrib,
    ← Finset.sum_div, ← Finset.mul_sum]
  rw [psi_window hY]
  rfl

/-- The original signed primitive equals the joint actual square inventory minus its true main term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiDampedSquareReadout/Variantdd8cbb10b9851e64984603ba8ae66fc2a43a56042a7b15340c940a6e424af991.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiDampedSquareReadout/Variantdd8cbb10b9851e64984603ba8ae66fc2a43a56042a7b15340c940a6e424af991.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e0869b655ba6dab3e6128983b9890010b40a9c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
