# asinhTaylorCoeffs_eq_iteratedDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6477c5e-c9d3-4c23-a85d-f14f7bb70df0",
  "kind": "theorem",
  "lexical_name": "asinhTaylorCoeffs_eq_iteratedDeriv",
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
  "slug": "asinhtaylorcoeffs-eq-iteratedderiv--874951d77ffef56995b21bd1",
  "source": {
    "blob": "c7aeee2aaf3c61bbb1db59f1c08119012d375839",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1204,
    "line": 1171,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:874951d77ffef56995b21bd11658fc17174463fc443b2255ed976f31e1eeff1a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6477c5e-c9d3-4c23-a85d-f14f7bb70df0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1171–1204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem asinhTaylorCoeffs_eq_iteratedDeriv (n i : ℕ) (hi : i ≤ n) :
    (asinhTaylorCoeffs n i : ℝ) = iteratedDeriv i Real.arsinh 0 / i.factorial := by
  simp only [asinhTaylorCoeffs, hi, ↓reduceIte]
  rw [iteratedDeriv_arsinh_zero]
  by_cases hodd : i % 2 = 1
  · -- Odd i = 2k+1: coefficient is Ring.choose(-1/2, k) / (2k+1) where k = (i-1)/2
    simp only [hodd, ↓reduceIte]
    -- Set k = (i-1)/2, so i = 2k+1 and i-1 = 2k
    set k := (i - 1) / 2 with hk_def
    have hk : i = 2 * k + 1 := by omega
    have hk' : i - 1 = 2 * k := by omega
    -- LHS: Ring.choose(-1/2, k) / (2k+1) : ℚ cast to ℝ
    -- RHS: ((2k)! * Ring.choose(-1/2, k)) / (2k+1)!
    -- Use: (2k+1)! = (2k+1) * (2k)!
    have hfact : i.factorial = (2 * k + 1) * (2 * k).factorial := by
      rw [hk]
      exact Nat.factorial_succ (2 * k)
    rw [hk', hfact]
    push_cast
    have hne : (2 * (k : ℝ) + 1) ≠ 0 := by linarith
    have hfact_ne : ((2 * k).factorial : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero _)
    -- Convert Ring.choose from ℚ to ℝ using Ring.map_choose
    have h_choose_cast : ((Ring.choose (-(1 / 2 : ℚ)) k : ℚ) : ℝ) = Ring.choose (-(1 / 2 : ℝ)) k := by
      have h := Ring.map_choose (algebraMap ℚ ℝ) (-(1/2 : ℚ)) k
      simp only [map_neg, map_div₀, map_one, map_ofNat] at h
      exact h
    rw [h_choose_cast]
    field_simp
  · -- Even i: coefficient is 0
    have heven : i % 2 = 0 := by omega
    simp only [heven, ↓reduceIte, zero_div]
    norm_cast

/-- asinhTaylorPoly evaluates to the standard Taylor sum for arsinh at 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean#L1171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7aeee2aaf3c61bbb1db59f1c08119012d375839` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
