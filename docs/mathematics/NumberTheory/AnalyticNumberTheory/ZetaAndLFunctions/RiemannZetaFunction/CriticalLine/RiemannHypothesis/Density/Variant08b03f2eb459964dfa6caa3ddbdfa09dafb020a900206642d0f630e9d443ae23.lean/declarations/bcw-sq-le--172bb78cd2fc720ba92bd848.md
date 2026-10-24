# BcW_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ba91fb9-c813-04d2-5c8e-38b84a6e45e8",
  "kind": "theorem",
  "lexical_name": "BcW_sq_le",
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
  "slug": "bcw-sq-le--172bb78cd2fc720ba92bd848",
  "source": {
    "blob": "e9be1bee90e255b5e4ea77de82c24e304cf53f33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 168,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Density/Variant08b03f2eb459964dfa6caa3ddbdfa09dafb020a900206642d0f630e9d443ae23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:172bb78cd2fc720ba92bd848f8478471e1f756f2a672a9e8734a8d1ee931f79a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Density/Variant08b03f2eb459964dfa6caa3ddbdfa09dafb020a900206642d0f630e9d443ae23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ba91fb9-c813-04d2-5c8e-38b84a6e45e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BcW_sq_le {cPi C₁ : ℝ} {c : ℕ → ℂ} {p : Setting} (hl : 1 ≤ p.l) (hX : 1 ≤ p.X)
    (hC₁ : 0 ≤ C₁) (hS : S1 c p.X ≤ C₁ * Real.sqrt p.X * p.l) :
    BcW cPi c p ^ 2 ≤ 2 * (6 + 3 * |cPi - 1| + C₁) ^ 2 * (p.l ^ 2 * (1 + p.X)) := by
  have hπ := Real.pi_gt_three
  have hs1 : 1 ≤ Real.sqrt p.X := by
    rw [show (1:ℝ) = Real.sqrt 1 from Real.sqrt_one.symm]; exact Real.sqrt_le_sqrt hX
  have hs0 : 0 ≤ Real.sqrt p.X := Real.sqrt_nonneg _
  set s := Real.sqrt p.X
  set A := |cPi - 1|
  have hA : 0 ≤ A := abs_nonneg _
  -- B_c ≤ (6 + 3A + C₁) · l · (1 + s)
  have hB : BcW cPi c p ≤ (6 + 3 * A + C₁) * (p.l * (1 + s)) := by
    unfold BcW Bconst
    have h1 : (1 / π) * S1 c p.X ≤ C₁ * s * p.l := by
      calc (1 / π) * S1 c p.X ≤ 1 * S1 c p.X := by
            apply mul_le_mul_of_nonneg_right _ (S1_nonneg _ _)
            rw [div_le_iff₀ (by linarith)]; linarith
        _ ≤ C₁ * s * p.l := by rw [one_mul]; exact hS
    have h2 : p.l + 4 * s + (3 * A + 1) * s + C₁ * s * p.l ≤ (6 + 3 * A + C₁) * (p.l * (1 + s)) := by
      nlinarith [mul_nonneg hA hs0, mul_nonneg hA (by linarith : (0:ℝ) ≤ p.l),
        mul_nonneg (mul_nonneg hA hs0) (by linarith : (0:ℝ) ≤ p.l - 1),
        mul_nonneg hs0 (by linarith : (0:ℝ) ≤ p.l - 1)]
    show Zeta23.l p.T + 4 * Real.sqrt p.X + (3 * A + 1) * Real.sqrt p.X + 1 / π * S1 c p.X ≤ _
    change p.l + 4 * s + (3 * A + 1) * s + 1 / π * S1 c p.X ≤ _
    linarith
  have hB0 : 0 ≤ BcW cPi c p := le_trans (by linarith) (l_le_BcW cPi c p)
  have hsq : (1 + s) ^ 2 ≤ 2 * (1 + p.X) := by
    have : s ^ 2 = p.X := Real.sq_sqrt (by linarith)
    nlinarith [sq_nonneg (1 - s)]
  calc BcW cPi c p ^ 2 ≤ ((6 + 3 * A + C₁) * (p.l * (1 + s))) ^ 2 :=
        pow_le_pow_left₀ hB0 hB 2
    _ = (6 + 3 * A + C₁) ^ 2 * p.l ^ 2 * (1 + s) ^ 2 := by ring
    _ ≤ (6 + 3 * A + C₁) ^ 2 * p.l ^ 2 * (2 * (1 + p.X)) := by gcongr
    _ = _ := by ring

/-! ## [eq:Msplit] for ν -/

/-- **[eq:Msplit] for ν = μ + cΠ·Π_X + P_c**: the six-term bilinear expansion, with the pole
weight riding on the Π-terms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Density/Variant08b03f2eb459964dfa6caa3ddbdfa09dafb020a900206642d0f630e9d443ae23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Density/Variant08b03f2eb459964dfa6caa3ddbdfa09dafb020a900206642d0f630e9d443ae23.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9be1bee90e255b5e4ea77de82c24e304cf53f33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
