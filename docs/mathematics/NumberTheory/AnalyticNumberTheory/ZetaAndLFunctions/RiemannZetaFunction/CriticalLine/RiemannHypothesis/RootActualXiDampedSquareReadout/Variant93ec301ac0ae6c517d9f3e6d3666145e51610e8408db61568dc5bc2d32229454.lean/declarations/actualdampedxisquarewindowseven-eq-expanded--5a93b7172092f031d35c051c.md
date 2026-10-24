# actualDampedXiSquareWindowSeven_eq_expanded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72c74c26-58c5-249e-85a4-4b2c9bb067d7",
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
  "slug": "actualdampedxisquarewindowseven-eq-expanded--5a93b7172092f031d35c051c",
  "source": {
    "blob": "75a3fa95f986354db3f9c550b4fbfdb858ca5471",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 81,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiDampedSquareReadout/Variant93ec301ac0ae6c517d9f3e6d3666145e51610e8408db61568dc5bc2d32229454.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a93b7172092f031d35c051c4ee1ba0c5be2afb6e73bd99ebf37fac9626aaf82",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiDampedSquareReadout/Variant93ec301ac0ae6c517d9f3e6d3666145e51610e8408db61568dc5bc2d32229454.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72c74c26-58c5-249e-85a4-4b2c9bb067d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–111.

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

/-- The signed primitive equals the joint actual square inventory minus its true main term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiDampedSquareReadout/Variant93ec301ac0ae6c517d9f3e6d3666145e51610e8408db61568dc5bc2d32229454.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiDampedSquareReadout/Variant93ec301ac0ae6c517d9f3e6d3666145e51610e8408db61568dc5bc2d32229454.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75a3fa95f986354db3f9c550b4fbfdb858ca5471` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
