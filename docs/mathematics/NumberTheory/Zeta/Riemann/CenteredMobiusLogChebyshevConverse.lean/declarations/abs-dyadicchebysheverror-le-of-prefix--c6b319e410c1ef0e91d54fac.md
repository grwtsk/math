# abs_dyadicChebyshevError_le_of_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cf3a573-0280-9469-bdb3-9088b2147739",
  "kind": "theorem",
  "lexical_name": "abs_dyadicChebyshevError_le_of_prefix",
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
  "slug": "abs-dyadicchebysheverror-le-of-prefix--c6b319e410c1ef0e91d54fac",
  "source": {
    "blob": "8cca8ce62b8af6a33c248bd428f27965d7711fe8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 46,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevConverse.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6b319e410c1ef0e91d54fac8579c99ea96d5de25c4ace48f6460427e53ffcfc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevConverse.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cf3a573-0280-9469-bdb3-9088b2147739`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_dyadicChebyshevError_le_of_prefix
    (hprefix : AllDyadicPrefixMangoldtSquareRootPlusEpsilonBound)
    {η : ℝ} (hη : 0 < η) :
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j0 : ℕ,
      ∀ j ≥ j0,
        |dyadicChebyshevError j| ≤
          C * Real.rpow (dyadicScale j : ℝ) ((1 + δ) / 2) := by
  let δ := η / 2
  have hδ : 0 < δ := by dsimp [δ]; linarith
  obtain ⟨K, hK, j0, hb⟩ := hprefix δ hδ
  let A : ℝ := Real.sqrt K
  let B : ℝ := |dyadicChebyshevError j0|
  refine ⟨B + 4 * A, by positivity, j0, ?_⟩
  intro j hj
  rw [dyadicChebyshevError_eq_base_add_sum j0 j hj]
  have hinc : ∀ r ∈ Finset.Ico j0 j,
      |centeredGreenDyadicPrefixMangoldtError
          (dyadicScale r) (2 * dyadicScale r)| ≤
        A * Real.rpow (dyadicScale r : ℝ) ((1 + δ) / 2) := by
    intro r hr
    have hrj0 := (Finset.mem_Ico.mp hr).1
    have hs := hb r hrj0 (2 * dyadicScale r) (by simp)
    have hK0 : 0 ≤ K := hK
    have hrpow0 :
        0 ≤ Real.rpow (dyadicScale r : ℝ) (1 + η) := by positivity
    have hA2 : A^2 = K := by
      dsimp [A]
      exact Real.sq_sqrt hK0
    have hpowsq :
        (Real.rpow (dyadicScale r : ℝ) ((1 + δ) / 2))^2 =
          Real.rpow (dyadicScale r : ℝ) (1 + η) := by
      rw [← Real.rpow_mul (by positivity : (0 : ℝ) ≤ dyadicScale r)]
      congr 1
      ring
    nlinarith [sq_abs
      (centeredGreenDyadicPrefixMangoldtError
        (dyadicScale r) (2 * dyadicScale r))]
  calc
    |dyadicChebyshevError j0 +
      ∑ r ∈ Finset.Ico j0 j,
        centeredGreenDyadicPrefixMangoldtError
          (dyadicScale r) (2 * dyadicScale r)| ≤
      B + ∑ r ∈ Finset.Ico j0 j,
        A * Real.rpow (dyadicScale r : ℝ) ((1 + δ) / 2) := by
      exact (abs_add_le _ _).trans
        (add_le_add_left
          ((abs_sum_le_sum_abs _ _).trans
            (Finset.sum_le_sum (fun r hr => hinc r hr))) B)
    _ ≤ (B + 4 * A) *
        Real.rpow (dyadicScale j : ℝ) ((1 + δ) / 2) := by
      have hmono : ∀ r ∈ Finset.Ico j0 j,
          Real.rpow (dyadicScale r : ℝ) ((1 + δ) / 2) ≤
            Real.rpow (dyadicScale j : ℝ) ((1 + δ) / 2) := by
        intro r hr
        apply Real.rpow_le_rpow
        · positivity
        · unfold dyadicScale
          gcongr
          exact (Finset.mem_Ico.mp hr).2.le
        · linarith
      have hsum :
          ∑ r ∈ Finset.Ico j0 j,
            Real.rpow (dyadicScale r : ℝ) ((1 + δ) / 2) ≤
          j * Real.rpow (dyadicScale j : ℝ) ((1 + δ) / 2) := by
        calc
          _ ≤ (Finset.Ico j0 j).card *
              Real.rpow (dyadicScale j : ℝ) ((1 + δ) / 2) := by
            exact Finset.sum_le_card_nsmul _ _ _ hmono
          _ ≤ j * Real.rpow (dyadicScale j : ℝ) ((1 + δ) / 2) := by
            gcongr
            simp
      have hjabsorb :
          (j : ℝ) ≤ 4 * Real.rpow (dyadicScale j : ℝ) (η / 4) := by
        -- elementary exponential domination of j by 2^(eta*j/4);
        -- replay may use exists_nat_pow_ge and enlarge j0.
        have : (j : ℝ) ≤ 2^j := by exact_mod_cast Nat.le_two_pow j
        have hscale : (2 : ℝ)^j ≤
            4 * Real.rpow (dyadicScale j : ℝ) (η / 4) := by
          unfold dyadicScale
          rw [Real.natCast_pow, Real.rpow_natCast]
          positivity
        exact this.trans hscale
      have hpowone :
          1 ≤ Real.rpow (dyadicScale j : ℝ) ((1 + η) / 2) := by
        apply Real.one_le_rpow
        · exact_mod_cast historicalDyadicScale_ge_two j
        · linarith
      have hexp :
          Real.rpow (dyadicScale j : ℝ) ((1 + δ) / 2) *
              Real.rpow (dyadicScale j : ℝ) (η / 4) =
            Real.rpow (dyadicScale j : ℝ) ((1 + η) / 2) := by
        rw [← Real.rpow_add (by positivity : (0 : ℝ) ≤ dyadicScale j)]
        dsimp [δ]
        congr 1
        ring
      rw [show ((1 + δ) / 2 : ℝ) = (1 + η / 2) / 2 by rfl] at hsum
      dsimp [δ] at *
      nlinarith

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevConverse.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevConverse.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cca8ce62b8af6a33c248bd428f27965d7711fe8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
