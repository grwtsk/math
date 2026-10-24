# no_uniform_integerPsiResponse_of_sublinear_recurrence_and_jumps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9748e48c-9725-3462-43ee-e1d5fa3f98e7",
  "kind": "theorem",
  "lexical_name": "no_uniform_integerPsiResponse_of_sublinear_recurrence_and_jumps",
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
  "slug": "no-uniform-integerpsiresponse-of-sublinear-recurrence-and-jumps--b2a662fc40c43ec1b2fcb16a",
  "source": {
    "blob": "357478698ed48a67786102f47fc43b358a63910f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 194,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiCapacityNoGo.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2a662fc40c43ec1b2fcb16a560ba1caf30c26a775071e7a7f8935d22484545c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiCapacityNoGo.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9748e48c-9725-3462-43ee-e1d5fa3f98e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_uniform_integerPsiResponse_of_sublinear_recurrence_and_jumps
    (E : ℕ → ℝ) {K H : ℝ}
    (hK : 0 ≤ K) (hH : 0 ≤ H)
    (hE : ∀ j, 0 ≤ E j)
    (hsmall : SublinearDyadicEnvelope E)
    (hrec : SquareRootForcedQuadraticRecurrence E K H)
    (hresponse : EnvelopeQuadraticIntegerPsiResponse E K)
    (hjumps : UnboundedAdjacentPsiJump) : False := by
  obtain ⟨M, hM, jM, hMbound⟩ :=
    sublinear_quadraticRecurrence_eventually_sqrt
      E hK hH hE hsmall hrec
  obtain ⟨jR, hR⟩ := hresponse
  let D : ℝ := K * M^2
  obtain ⟨j, hj, m, hmlow, hmup, hjump⟩ :=
    hjumps D (max jM jR)
  have hjM : jM ≤ j := le_trans (le_max_left _ _) hj
  have hjR : jR ≤ j := le_trans (le_max_right _ _) hj
  let X : ℝ := (dyadicScale j : ℝ)
  have hX : 0 < X := by
    dsimp [X]
    exact_mod_cast GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j
  have hEbound : E j ≤ M * Real.sqrt X := by
    simpa [X] using hMbound j hjM
  have hEsq : (E j)^2 ≤ M^2 * X := by
    have hsq :=
      (sq_le_sq₀ (hE j)
        (mul_nonneg hM (Real.sqrt_nonneg X))).2 hEbound
    simpa [mul_pow, Real.sq_sqrt hX.le, mul_assoc] using hsq
  have hrespBound (n : ℕ)
      (hnlow : 2 * dyadicScale j ≤ n)
      (hnup : n ≤ 4 * dyadicScale j) :
      |psiError (n : ℝ)| ≤ D := by
    have hcap := hR j hjR n hnlow hnup
    have hupper :
        X * |psiError (n : ℝ)| ≤ D * X := by
      calc
        X * |psiError (n : ℝ)| ≤ K * (E j)^2 := by
          simpa [X] using hcap
        _ ≤ K * (M^2 * X) :=
          mul_le_mul_of_nonneg_left hEsq hK
        _ = D * X := by
          dsimp [D]
          ring
    exact le_of_mul_le_mul_left (by simpa only [mul_comm] using hupper) hX
  have hm1low : 2 * dyadicScale j ≤ m + 1 := by omega
  have hm1 := hrespBound (m + 1) hm1low hmup
  have hm := hrespBound m hmlow (by omega)
  have htri :
      |psiError ((m + 1 : ℕ) : ℝ) - psiError (m : ℝ)| ≤
        |psiError ((m + 1 : ℕ) : ℝ)| + |psiError (m : ℝ)| :=
    abs_sub _ _
  have hcontradiction :
      |psiError ((m + 1 : ℕ) : ℝ) - psiError (m : ℝ)| ≤
        2 * D := by
    linarith
  exact (not_lt_of_ge hcontradiction) hjump

/-- The ACTUAL integerized source capacity, plus an ordinary current-octave
theta envelope, supplies the fixed squared-envelope response inequality.
The arithmetic provenance is the literal prime window and pinned L1 bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiCapacityNoGo.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiCapacityNoGo.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `357478698ed48a67786102f47fc43b358a63910f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
