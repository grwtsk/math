# err_isLittleO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:768be742-1985-c5e5-3a87-b9273cdd6a60",
  "kind": "theorem",
  "lexical_name": "err_isLittleO",
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
  "slug": "err-islittleo--e26aa2f68280f6d609fe4ccb",
  "source": {
    "blob": "3469a865bcf135c2b08ee407b8cc36179ab7deac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 511,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variant0c051c2e02af50fe38d1d4e5f121934500d041dcb2b21a07cb096cb70236b65e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e26aa2f68280f6d609fe4ccb0d5b262568cdabd011bd046a9ca0d60c1be7c8db",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Assembly/Variant0c051c2e02af50fe38d1d4e5f121934500d041dcb2b21a07cb096cb70236b65e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:768be742-1985-c5e5-3a87-b9273cdd6a60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 511–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem err_isLittleO {N R₁ R₂ NII B cl : ℝ → ℝ} {K : ℝ}
    (hN : Tendsto N atTop atTop)
    (hR₁ : R₁ =o[atTop] N) (hR₂ : R₂ =o[atTop] N) (hNII : NII =o[atTop] N)
    (hB : Tendsto B atTop (𝓝 0))
    (hcl : ∀ᶠ T in atTop, 0 ≤ cl T ∧ cl T ≤ K) :
    (fun T => 4 * R₁ T + R₂ T + 3 * NII T
        + B T * (4 + 2 * Real.sqrt (cl T * N T + R₂ T) + B T)) =o[atTop] N := by
  have hB1 : B =o[atTop] (fun _ => (1:ℝ)) := (isLittleO_one_iff ℝ).2 hB
  -- the bracket is O(N)
  have hbr : (fun T => 4 + 2 * Real.sqrt (cl T * N T + R₂ T) + B T) =O[atTop] N := by
    have hK : 0 ≤ K := by
      obtain ⟨T, hT⟩ := hcl.exists; exact hT.1.trans hT.2
    refine IsBigO.of_bound (7 + 2 * K) ?_
    have hN1 : ∀ᶠ T in atTop, 1 ≤ N T := hN.eventually_ge_atTop 1
    have hR₂1 : ∀ᶠ T in atTop, ‖R₂ T‖ ≤ 1 * ‖N T‖ := hR₂.def one_pos
    have hBb : ∀ᶠ T in atTop, ‖B T‖ ≤ 1 * ‖(1:ℝ)‖ := hB1.def one_pos
    filter_upwards [hN1, hR₂1, hBb, hcl] with T h1 h2 h3 h4
    have hN0 : 0 ≤ N T := by linarith
    simp only [Real.norm_eq_abs, abs_of_nonneg hN0, one_mul] at h2
    simp only [norm_one, mul_one, Real.norm_eq_abs] at h3
    have hin : cl T * N T + R₂ T ≤ ((K + 1) * N T) ^ 2 := by
      have : R₂ T ≤ N T := (le_abs_self _).trans h2
      have hclN : cl T * N T ≤ K * N T := mul_le_mul_of_nonneg_right h4.2 hN0
      have hKN : 1 ≤ (K + 1) * N T := by nlinarith
      calc cl T * N T + R₂ T ≤ (K + 1) * N T := by linarith
        _ ≤ (K + 1) * N T * ((K + 1) * N T) :=
          le_mul_of_one_le_right (mul_nonneg (by linarith) hN0) hKN
        _ = ((K + 1) * N T) ^ 2 := by ring
    have hs : Real.sqrt (cl T * N T + R₂ T) ≤ (K + 1) * N T :=
      Real.sqrt_le_iff.mpr ⟨by positivity, hin⟩
    simp only [Real.norm_eq_abs, abs_of_nonneg hN0]
    refine (abs_le.mpr ⟨?_, ?_⟩)
    · nlinarith [Real.sqrt_nonneg (cl T * N T + R₂ T), abs_le.mp h3]
    · nlinarith [abs_le.mp h3]
  have hlast : (fun T => B T * (4 + 2 * Real.sqrt (cl T * N T + R₂ T) + B T)) =o[atTop] N := by
    simpa using hB1.mul_isBigO hbr
  exact (((hR₁.const_mul_left 4).add hR₂).add (hNII.const_mul_left 3)).add hlast

/-- **sup over λ ∈ [1/2, 1)** (the common `λ → 1⁻` step): if the `ε`-form holds with constant `c(λ)`
for every `λ ∈ [1/2, 1)` and `C − η ≤ c(λ)` for some such `λ`, for every `η > 0`, then it holds with constant `C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Assembly/Variant0c051c2e02af50fe38d1d4e5f121934500d041dcb2b21a07cb096cb70236b65e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variant0c051c2e02af50fe38d1d4e5f121934500d041dcb2b21a07cb096cb70236b65e.lean#L511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3469a865bcf135c2b08ee407b8cc36179ab7deac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
