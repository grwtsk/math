# psiOctaveSquareRootBound_to_allDyadicEnergyBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74532093-ec73-9068-ce03-14dbf9ba2ce6",
  "kind": "theorem",
  "lexical_name": "psiOctaveSquareRootBound_to_allDyadicEnergyBound",
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
  "slug": "psioctavesquarerootbound-to-alldyadicenergybound--5f513dda1f7a7193ff1d1e06",
  "source": {
    "blob": "c9c954687f4a67fdb1ad62b4051d2a5e4b0e257f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 170,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicPsiOctaveEnergySupplier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f513dda1f7a7193ff1d1e06be5546d9bc32dac0607403b08e7e6373e863788e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicPsiOctaveEnergySupplier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74532093-ec73-9068-ce03-14dbf9ba2ce6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psiOctaveSquareRootBound_to_allDyadicEnergyBound
    (hpsi : AllDyadicPsiOctaveSquareRootBound) :
    AllDyadicEnergyBound := by
  intro η hη
  obtain ⟨C, hC, j₀, hbound⟩ := hpsi η hη
  let D : ℝ := 96 * C^2
  have hD : 0 ≤ D := by
    dsimp [D]
    positivity
  refine ⟨D, hD, j₀, ?_⟩
  intro j hj
  let X : ℕ := dyadicScale j
  let q : ℝ := Real.rpow (X : ℝ) (-1 + η)
  let A : ℝ := C * (X : ℝ) * Real.sqrt q
  have hX2 : 2 ≤ X := by
    dsimp [X, dyadicScale]
    rw [pow_succ]
    have hp : 0 < (2 : ℕ)^j := pow_pos (by decide) _
    omega
  have hXpos : 0 < X := lt_of_lt_of_le (by norm_num) hX2
  have hXr : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hXpos
  have hq : 0 ≤ q := by
    dsimp [q]
    exact Real.rpow_nonneg (Nat.cast_nonneg _) _
  have hA : 0 ≤ A := by
    dsimp [A]
    positivity
  have henv : PsiOctaveEnvelope X A := by
    refine ⟨hA, ?_⟩
    intro u hu
    have hb := hbound j hj u (by simpa [X] using hu)
    dsimp [A, q, X] at *
    linarith
  have hAone : 1 ≤ A := by
    have hb := hbound j hj (X : ℝ) (by
      constructor
      · exact le_rfl
      · exact_mod_cast (by omega : X ≤ 2 * X))
    dsimp [A, q, X] at *
    linarith [abs_nonneg (psiError (dyadicScale j : ℝ))]
  have henergy := augmentedEnergy_le_of_psiEnvelope hX2 henv
  have hnumer : 3 * A + 1 ≤ 4 * A := by
    linarith
  have hratio :
      (3 * A + 1) / (X : ℝ) ≤
        4 * A / (X : ℝ) :=
    div_le_div_of_nonneg_right hnumer hXr.le
  have hsquare :
      ((3 * A + 1) / (X : ℝ))^2 ≤
        (4 * A / (X : ℝ))^2 := by
    exact (sq_le_sq₀ (by positivity) (by positivity)).2 hratio
  have hcoarse :
      augmentedEnergy X ≤
        6 * (4 * A / (X : ℝ))^2 :=
    henergy.trans
      (mul_le_mul_of_nonneg_left hsquare (by norm_num))
  have hratioA :
      A / (X : ℝ) = C * Real.sqrt q := by
    dsimp [A]
    field_simp [hXr.ne']
  have hsqA :
      (A / (X : ℝ))^2 = C^2 * q := by
    rw [hratioA, mul_pow, Real.sq_sqrt hq]
  have hfinal :
      augmentedEnergy X ≤ D * q := by
    calc
      augmentedEnergy X
          ≤ 6 * (4 * A / (X : ℝ))^2 := hcoarse
      _ = 96 * (A / (X : ℝ))^2 := by ring
      _ = 96 * C^2 * q := by rw [hsqA]; ring
      _ = D * q := by rfl
  simpa [X, q] using hfinal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicPsiOctaveEnergySupplier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicPsiOctaveEnergySupplier.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9c954687f4a67fdb1ad62b4051d2a5e4b0e257f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
