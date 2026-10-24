# sincTaylorCoeffs_eq_iteratedDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa70a64c-f3c1-56f2-4cf2-c551a7cddcdd",
  "kind": "theorem",
  "lexical_name": "sincTaylorCoeffs_eq_iteratedDeriv",
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
  "slug": "sinctaylorcoeffs-eq-iteratedderiv--af87c78967f3e90931c1c08f",
  "source": {
    "blob": "4e85e53361afa174b39a1a749e9fa643b7cb6016",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 630,
    "line": 601,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Trig/Variantf190716d261dd2604b5494fa449571b91e7d1b938550ccfcf3e87a8cb53fb829.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af87c78967f3e90931c1c08f49d00053cd5b55f2291c8e795135dd6d6de589b6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Trig/Variantf190716d261dd2604b5494fa449571b91e7d1b938550ccfcf3e87a8cb53fb829.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa70a64c-f3c1-56f2-4cf2-c551a7cddcdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 601–630.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sincTaylorCoeffs_eq_iteratedDeriv (n i : ℕ) (hi : i ≤ n) :
    (sincTaylorCoeffs n i : ℝ) = iteratedDeriv i Real.sinc 0 / i.factorial := by
  simp only [sincTaylorCoeffs, hi, ↓reduceIte]
  by_cases heven : i % 2 = 0
  · simp only [heven, ↓reduceIte]
    rw [iteratedDeriv_sinc_zero]
    simp only [heven, ↓reduceIte]
    -- The coefficients match: (-1)^k / (2k+1)! = ((-1)^k / (2k+1)) / (2k)!
    -- This follows from (2k+1)! = (2k+1) * (2k)!
    obtain ⟨k, hk⟩ : ∃ k, i = 2 * k := ⟨i / 2, by omega⟩
    subst hk
    simp only [Nat.mul_div_cancel_left k (by omega : 0 < 2)]
    -- LHS: ↑((-1)^k / (2k+1)! : ℚ)  RHS: ((-1)^k / (2k+1)) / (2k)!
    have hfact : (2 * k + 1).factorial = (2 * k + 1) * (2 * k).factorial := Nat.factorial_succ (2 * k)
    -- Simplify LHS in ℚ first: (-1)^k / (2k+1)! = (-1)^k / ((2k+1) * (2k)!)
    have lhs_eq : ((-1 : ℚ) ^ k / ((2 * k + 1).factorial : ℕ) : ℚ) =
        (-1 : ℚ) ^ k / ((2 * k + 1 : ℕ) * (2 * k).factorial) := by
      rw [hfact]; push_cast; rfl
    rw [lhs_eq]
    -- Now both sides are in similar form, convert to ℝ and simplify
    have h2k_fact_ne : ((2 * k).factorial : ℝ) ≠ 0 := by positivity
    have h2k1_ne : ((2 * k + 1 : ℕ) : ℝ) ≠ 0 := by positivity
    push_cast
    field_simp
  · have hodd : i % 2 = 1 := by omega
    simp only [heven]; norm_num
    rw [iteratedDeriv_sinc_zero]
    simp only [heven, ↓reduceIte, zero_div]

/-- sincTaylorPoly evaluates to the standard Taylor sum for sinc at 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Trig/Variantf190716d261dd2604b5494fa449571b91e7d1b938550ccfcf3e87a8cb53fb829.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Trig/Variantf190716d261dd2604b5494fa449571b91e7d1b938550ccfcf3e87a8cb53fb829.lean#L601).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e85e53361afa174b39a1a749e9fa643b7cb6016` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
