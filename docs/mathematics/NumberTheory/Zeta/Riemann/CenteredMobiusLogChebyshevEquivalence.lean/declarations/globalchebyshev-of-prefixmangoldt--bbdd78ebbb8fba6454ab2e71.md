# globalChebyshev_of_prefixMangoldt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d91e046-f25a-12fa-150f-6029099f02a2",
  "kind": "theorem",
  "lexical_name": "globalChebyshev_of_prefixMangoldt",
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
  "slug": "globalchebyshev-of-prefixmangoldt--bbdd78ebbb8fba6454ab2e71",
  "source": {
    "blob": "939a53e9b72f6e84ba164b696c6174c8a5128fa1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 31,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevEquivalence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbdd78ebbb8fba6454ab2e719cae059800cfbba5e568fd0607636136d099df0b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevEquivalence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d91e046-f25a-12fa-150f-6029099f02a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem globalChebyshev_of_prefixMangoldt
    (hprefix : AllDyadicPrefixMangoldtSquareRootPlusEpsilonBound) :
    GlobalChebyshevSquareRootPlusEpsilonBound := by
  intro η hη
  let δ := η / 2
  have hδ : 0 < δ := by dsimp [δ]; linarith
  obtain ⟨Cd, hCd, jd, hd⟩ :=
    abs_dyadicChebyshevError_le_of_prefix hprefix hδ
  obtain ⟨Cp, hCp, jp, hp⟩ := hprefix δ hδ
  let x0 := max 2 (dyadicScale (max jd jp))
  refine ⟨8 * (Cd^2 + Cp), by positivity, x0, ?_⟩
  intro x hx
  have hx1 : 1 ≤ x := by
    exact le_trans (by norm_num) (le_trans (le_max_left _ _) hx)
  obtain ⟨j, hjx, hxj⟩ := exists_dyadic_block hx1
  have hj1 : 1 ≤ j := by
    by_contra h
    have : j = 0 := by omega
    subst j
    simp at hjx hxj
    have hx2 : 2 ≤ x := le_trans (le_max_left _ _) hx
    omega
  let r := j - 1
  have hXeq : 2^j = dyadicScale r := pow_two_eq_dyadicScale_pred hj1
  let X := dyadicScale r
  have hXx : X ≤ x := by simpa [X, hXeq] using hjx
  have hx2X : x ≤ 2 * X := by
    have : x < 2 * X := by
      simpa [X, hXeq, pow_succ] using hxj
    omega
  have hrlarge : max jd jp ≤ r := by
    -- Since x >= dyadicScale(max jd jp) and x < 2^(j+1),
    -- the containing dyadic block cannot precede that scale.
    unfold x0 at hx
    have hbase : dyadicScale (max jd jp) ≤ x :=
      le_trans (le_max_right _ _) hx
    unfold X r at *
    unfold dyadicScale at hbase
    by_contra hnot
    have : j ≤ max jd jp := by omega
    have hpmono : 2^(j+1) ≤ 2^((max jd jp)+1) := by gcongr
    omega
  have hrd : jd ≤ r := le_trans (le_max_left _ _) hrlarge
  have hrp : jp ≤ r := le_trans (le_max_right _ _) hrlarge
  have hdy := hd r hrd
  have hpre := hp r hrp x (Finset.mem_Icc.mpr ⟨hXx, hx2X⟩)
  have hdecomp :
      chebyshevPsiError x =
        dyadicChebyshevError r +
          centeredGreenDyadicPrefixMangoldtError X x := by
    rw [prefixMangoldtError_eq_global_sub hXx]
    unfold dyadicChebyshevError X
    linarith
  rw [hdecomp]
  have hab :
      (dyadicChebyshevError r +
        centeredGreenDyadicPrefixMangoldtError X x)^2 ≤
        2 * dyadicChebyshevError r ^ 2 +
        2 * centeredGreenDyadicPrefixMangoldtError X x ^ 2 := by
    nlinarith [sq_nonneg
      (dyadicChebyshevError r -
        centeredGreenDyadicPrefixMangoldtError X x)]
  have hXle : (X : ℝ) ≤ x := by exact_mod_cast hXx
  have hXone : (1 : ℝ) ≤ X := by
    exact_mod_cast (by have := historicalDyadicScale_ge_two r; omega)
  have hpowmono :
      Real.rpow (X : ℝ) (1 + δ) ≤
        Real.rpow (x : ℝ) (1 + η) := by
    calc
      Real.rpow (X : ℝ) (1 + δ) ≤
        Real.rpow (X : ℝ) (1 + η) :=
          Real.rpow_le_rpow_of_exponent_le hXone (by dsimp [δ]; linarith)
      _ ≤ Real.rpow (x : ℝ) (1 + η) := by
        gcongr
        linarith
  have hd2 :
      dyadicChebyshevError r ^ 2 ≤
        Cd^2 * Real.rpow (X : ℝ) (1 + δ) := by
    have := hd r hrd
    have hsquare := sq_le_sq₀ (abs_nonneg _) (by positivity : 0 ≤
      Cd * Real.rpow (X : ℝ) ((1 + δ) / 2)) |>.mpr this
    rw [sq_abs] at hsquare
    have hpowsq :
        (Real.rpow (X : ℝ) ((1 + δ) / 2))^2 =
          Real.rpow (X : ℝ) (1 + δ) := by
      rw [← Real.rpow_mul (by positivity : (0 : ℝ) ≤ X)]
      congr 1
      ring
    simpa [mul_pow, hpowsq] using hsquare
  calc
    chebyshevPsiError x ^ 2 ≤
        2 * dyadicChebyshevError r ^ 2 +
        2 * centeredGreenDyadicPrefixMangoldtError X x ^ 2 := hab
    _ ≤ 2 * Cd^2 * Real.rpow (X : ℝ) (1 + δ) +
        2 * Cp * Real.rpow (X : ℝ) (1 + δ) := by
      gcongr
    _ ≤ 8 * (Cd^2 + Cp) * Real.rpow (x : ℝ) (1 + η) := by
      have hpow0 : 0 ≤ Real.rpow (x : ℝ) (1 + η) := by positivity
      nlinarith

/-- Envelope-level equivalence of the global and dyadic-prefix formulations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevEquivalence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevEquivalence.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `939a53e9b72f6e84ba164b696c6174c8a5128fa1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
