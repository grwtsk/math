# exceptionalKernelTwistedMertensFrequencyMajorant_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e96a7466-b7d1-2215-d1b5-9ae47e18b805",
  "kind": "theorem",
  "lexical_name": "exceptionalKernelTwistedMertensFrequencyMajorant_le",
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
  "slug": "exceptionalkerneltwistedmertensfrequencymajorant-le--5895d57550866f4002ecbcea",
  "source": {
    "blob": "c9e2781b2901de9dd88a09428aff212ede3bf255",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 239,
    "path": "GRWTSK/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5895d57550866f4002ecbcea5f504a4c7022cd2e4e5701d4012c090b1ec7dd7d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e96a7466-b7d1-2215-d1b5-9ae47e18b805`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exceptionalKernelTwistedMertensFrequencyMajorant_le
    (_hEnergy : DyadicTwoKernelTwistedMertensSquareRootEnergy)
    {δ : ℝ} (hδ : 0 < δ)
    {C : ℝ}
    (_hC : 0 ≤ C)
    (hscale :
      ∀ j b d r : ℕ,
        b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
        ∀ (hdMem : d ∈ effectiveEndpointSquareModulusSet b),
        TwoNonunitSquareModulusParameter d →
        r < 2 →
        let : NeZero d := ⟨by
          have hd := (Finset.mem_filter.mp hdMem).1
          exact ne_of_gt (Finset.mem_Ico.mp hd).1⟩
        ‖exceptionalKernelTwistedMertensPrefix b d r‖ ^ 2 ≤
          C * (((2 ^ j : ℕ) : ℝ)) *
            (((2 ^ j : ℕ) : ℝ) ^ δ))
    {j b d : ℕ}
    (hb : b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)))
    (hd : d ∈ effectiveEndpointSquareModulusSet b)
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    let : NeZero d := ⟨by
      have hd' := (Finset.mem_filter.mp hd).1
      exact ne_of_gt (Finset.mem_Ico.mp hd').1⟩
    exceptionalKernelTwistedMertensFrequencyMajorant b d ≤
      (C + 2) * (((2 ^ j : ℕ) : ℝ)) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by
  let : NeZero d := ⟨ne_of_gt (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1⟩
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  have hX : 1 ≤ X := by
    dsimp [X]
    exact_mod_cast Nat.one_le_iff_ne_zero.mpr (pow_ne_zero j two_ne_zero)
  have hXδ : 1 ≤ X ^ δ := Real.one_le_rpow hX hδ.le
  have hbtop : (b : ℝ) ≤ 2 * X := by
    have hI := Finset.mem_Ico.mp hb
    dsimp [X]
    rw [pow_succ] at hI
    exact_mod_cast (by simpa only [mul_comm] using Nat.le_of_lt hI.2 : b ≤ 2 * 2 ^ j)
  have h0 := hscale j b d 0 hb hd hNonunit (by norm_num)
  have h1 := hscale j b d 1 hb hd hNonunit (by norm_num)
  have hq0 := paritySquarefreeDiagonal_le_endpoint b 0
  have hq1 := paritySquarefreeDiagonal_le_endpoint b 1
  have hq0n := paritySquarefreeDiagonal_nonneg b 0
  have hq1n := paritySquarefreeDiagonal_nonneg b 1
  unfold exceptionalKernelTwistedMertensFrequencyMajorant
  have hz0 :
      ‖exceptionalKernelTwistedMertensPrefix b d 0 ^ 2 -
          (paritySquarefreeDiagonal b 0 : ℂ)‖ ≤
        C * X * (X ^ δ) + 2 * X * (X ^ δ) := by
    calc
      ‖exceptionalKernelTwistedMertensPrefix b d 0 ^ 2 -
          (paritySquarefreeDiagonal b 0 : ℂ)‖ ≤
        ‖exceptionalKernelTwistedMertensPrefix b d 0‖ ^ 2 +
          paritySquarefreeDiagonal b 0 := by
            convert! norm_sub_le
              (exceptionalKernelTwistedMertensPrefix b d 0 ^ 2)
              (paritySquarefreeDiagonal b 0 : ℂ) using 1
            simp only [norm_pow, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hq0n]
      _ ≤ C * X * (X ^ δ) + 2 * X * (X ^ δ) := by
        nlinarith
  have hz1 :
      ‖exceptionalKernelTwistedMertensPrefix b d 1 ^ 2 -
          (paritySquarefreeDiagonal b 1 : ℂ)‖ ≤
        C * X * (X ^ δ) + 2 * X * (X ^ δ) := by
    calc
      ‖exceptionalKernelTwistedMertensPrefix b d 1 ^ 2 -
          (paritySquarefreeDiagonal b 1 : ℂ)‖ ≤
        ‖exceptionalKernelTwistedMertensPrefix b d 1‖ ^ 2 +
          paritySquarefreeDiagonal b 1 := by
            convert! norm_sub_le
              (exceptionalKernelTwistedMertensPrefix b d 1 ^ 2)
              (paritySquarefreeDiagonal b 1 : ℂ) using 1
            simp only [norm_pow, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hq1n]
      _ ≤ C * X * (X ^ δ) + 2 * X * (X ^ δ) := by
        nlinarith
  nlinarith

/-- The one-point twisted Mertens square-root-energy premise supplies the
existing exceptional-kernel natural-scale budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9e2781b2901de9dd88a09428aff212ede3bf255` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
