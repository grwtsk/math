# norm_B_le_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:560361aa-d8bf-61b4-bef9-78bab5a875d9",
  "kind": "lemma",
  "lexical_name": "norm_B_le_sqrt",
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
  "slug": "norm-b-le-sqrt--0a1bc9494883cf234a8fb297",
  "source": {
    "blob": "768c33b0c9fb85050a77e67994858ccc3aa402be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 198,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Varianta0f4e161630cd293ecb57327f60a48619630a66c2f0b8c04a8c9d509011f33c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a1bc9494883cf234a8fb2971c1f56e38431678493d36b988e0bf211e67cabcf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Varianta0f4e161630cd293ecb57327f60a48619630a66c2f0b8c04a8c9d509011f33c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:560361aa-d8bf-61b4-bef9-78bab5a875d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_B_le_sqrt {C : ℝ} (hC : 0 ≤ C) {freq δ : ι → ℝ} (hδ : ∀ r, 0 < δ r)
    (hdiag : ∀ y : ι → ℂ, ‖B freq y y‖ ≤ C * N2 δ y) (x z : ι → ℂ) :
    ‖B freq x z‖ ≤ 2 * C * Real.sqrt (N2 δ x) * Real.sqrt (N2 δ z) := by
  set u := Real.sqrt (N2 δ x) with hu
  set v := Real.sqrt (N2 δ z) with hv
  have hNx := N2_nonneg hδ x
  have hNz := N2_nonneg hδ z
  by_cases hx0 : N2 δ x = 0
  · rw [eq_zero_of_N2_eq_zero hδ hx0, B_zero_left, norm_zero]; positivity
  by_cases hz0 : N2 δ z = 0
  · rw [eq_zero_of_N2_eq_zero hδ hz0, B_zero_right, norm_zero]; positivity
  have hu0 : 0 < u := Real.sqrt_pos.mpr (lt_of_le_of_ne hNx (Ne.symm hx0))
  have hv0 : 0 < v := Real.sqrt_pos.mpr (lt_of_le_of_ne hNz (Ne.symm hz0))
  have hu2 : u ^ 2 = N2 δ x := Real.sq_sqrt hNx
  have hv2 : v ^ 2 = N2 δ z := Real.sq_sqrt hNz
  -- t with t² = v/u
  set t := Real.sqrt (v / u) with htdef
  have ht2 : t ^ 2 = v / u := Real.sq_sqrt (by positivity)
  have ht0 : 0 < t := Real.sqrt_pos.mpr (by positivity)
  have hscale := B_scale freq x z ht0.ne'
  rw [← hscale]
  refine (norm_B_le_add hC hdiag _ _).trans ?_
  rw [N2_scale, N2_real_smul, inv_pow, ht2, ← hu2, ← hv2]
  have : v / u * u ^ 2 + (v / u)⁻¹ * v ^ 2 = 2 * (u * v) := by
    field_simp
    ring
  rw [this]
  exact le_of_eq (by ring)

end MV

/-- **Bilinear Montgomery–Vaughan from the literature form**: MVDiag C ⇒ MVHilbert (2C)
(the paper's [lem:MV] "In general …" step, here via polarization + scaling instead of the
operator norm of ΔHΔ; constant 2C instead of C, immaterial for ∃C). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Varianta0f4e161630cd293ecb57327f60a48619630a66c2f0b8c04a8c9d509011f33c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Varianta0f4e161630cd293ecb57327f60a48619630a66c2f0b8c04a8c9d509011f33c5.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `768c33b0c9fb85050a77e67994858ccc3aa402be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
