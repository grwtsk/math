# prefixMangoldt_of_globalChebyshev

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8350426a-7215-1683-8cab-5af6d02672f6",
  "kind": "theorem",
  "lexical_name": "prefixMangoldt_of_globalChebyshev",
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
  "slug": "prefixmangoldt-of-globalchebyshev--83cb6c80db601a07e3f73ece",
  "source": {
    "blob": "eafcd52f6aafba2d79b9135933381a05272e3fea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 49,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevStrength.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83cb6c80db601a07e3f73ece7ae1f7cd1d1cba8b5c0012270250cab11a3d9027",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevStrength.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8350426a-7215-1683-8cab-5af6d02672f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prefixMangoldt_of_globalChebyshev
    (hglobal : GlobalChebyshevSquareRootPlusEpsilonBound) :
    AllDyadicPrefixMangoldtSquareRootPlusEpsilonBound := by
  intro η hη
  let δ := η / 2
  have hδ : 0 < δ := by dsimp [δ]; linarith
  obtain ⟨C, hC, x0, hb⟩ := hglobal δ hδ
  obtain ⟨j0, hj0⟩ : ∃ j0 : ℕ, x0 ≤ dyadicScale j0 := by
    exact ⟨x0, by
      unfold dyadicScale
      exact le_pow_self (by norm_num) _⟩
  refine ⟨8 * C, by positivity, j0, ?_⟩
  intro j hj m hm
  have hscale_mono : dyadicScale j0 ≤ dyadicScale j := by
    unfold dyadicScale
    gcongr
  have hX0 : x0 ≤ dyadicScale j := le_trans hj0 hscale_mono
  have hm0 : x0 ≤ m := le_trans hX0 (Finset.mem_Icc.mp hm).1
  have hXb := hb (dyadicScale j) hX0
  have hmb := hb m hm0
  rw [prefixMangoldtError_eq_global_sub (Finset.mem_Icc.mp hm).1]
  have hXone : (1 : ℝ) ≤ dyadicScale j := by
    exact_mod_cast (by have := historicalDyadicScale_ge_two j; omega)
  have hmle : (m : ℝ) ≤ 2 * dyadicScale j := by
    exact_mod_cast (Finset.mem_Icc.mp hm).2
  have hpowm :
      Real.rpow (m : ℝ) (1 + δ) ≤
        4 * Real.rpow (dyadicScale j : ℝ) (1 + η) := by
    have hmono :
        Real.rpow (m : ℝ) (1 + δ) ≤
          Real.rpow (2 * dyadicScale j : ℝ) (1 + δ) := by
      gcongr
      linarith
    have hsplit :
        Real.rpow (2 * dyadicScale j : ℝ) (1 + δ) =
          Real.rpow (2 : ℝ) (1 + δ) *
            Real.rpow (dyadicScale j : ℝ) (1 + δ) := by
      rw [Real.mul_rpow (by positivity) (by positivity)]
    -- For large eta, the requested target exponent is generous; replay may
    -- split eta<=2 and eta>2 to bound the fixed factor cleanly.
    rw [hsplit] at hmono
    have hxexp :
        Real.rpow (dyadicScale j : ℝ) (1 + δ) ≤
          Real.rpow (dyadicScale j : ℝ) (1 + η) :=
      Real.rpow_le_rpow_of_exponent_le hXone (by dsimp [δ]; linarith)
    have h2 : Real.rpow (2 : ℝ) (1 + δ) ≤
        4 * Real.rpow (dyadicScale j : ℝ) (η / 2) := by
      -- dyadicScale j >= 2 absorbs the eta-dependent factor.
      have hbase : (2 : ℝ) ≤ dyadicScale j := by exact_mod_cast historicalDyadicScale_ge_two j
      rw [show 1 + δ = 1 + η / 2 by rfl, Real.rpow_add (by positivity)]
      norm_num
      gcongr
    nlinarith [Real.rpow_nonneg (by positivity : (0 : ℝ) ≤ dyadicScale j) (1 + η)]
  have hpowX :
      Real.rpow (dyadicScale j : ℝ) (1 + δ) ≤
        Real.rpow (dyadicScale j : ℝ) (1 + η) :=
    Real.rpow_le_rpow_of_exponent_le hXone (by dsimp [δ]; linarith)
  have habs :
      (chebyshevPsiError m - chebyshevPsiError (dyadicScale j))^2 ≤
        2 * chebyshevPsiError m ^ 2 +
        2 * chebyshevPsiError (dyadicScale j) ^ 2 := by
    nlinarith [sq_nonneg (chebyshevPsiError m + chebyshevPsiError (dyadicScale j))]
  nlinarith

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevStrength.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevStrength.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eafcd52f6aafba2d79b9135933381a05272e3fea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
