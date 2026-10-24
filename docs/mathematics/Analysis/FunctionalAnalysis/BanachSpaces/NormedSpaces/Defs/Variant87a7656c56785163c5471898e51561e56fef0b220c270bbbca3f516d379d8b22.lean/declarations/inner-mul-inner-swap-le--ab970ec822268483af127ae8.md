# inner_mul_inner_swap_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b2af5b8-a570-5321-6562-947554dee2a8",
  "kind": "lemma",
  "lexical_name": "inner_mul_inner_swap_le",
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
  "slug": "inner-mul-inner-swap-le--ab970ec822268483af127ae8",
  "source": {
    "blob": "7e8106131dc9f3c435977677aab87aa58d233dff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 210,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab970ec822268483af127ae83ca84f9a289cdfdad37a8a7b2794b7a65b6998f2",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b2af5b8-a570-5321-6562-947554dee2a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inner_mul_inner_swap_le {x y : E} : ⟪x, y⟫ * ⟪y, x⟫ ≤ ‖x‖ ^ 2 • ⟪y, y⟫ := by
  rcases eq_or_ne x 0 with h | h
  · simp [h, CStarModule.norm_zero A (E := E)]
  · have h₁ : ∀ (a : A),
        (0 : A) ≤ ‖x‖ ^ 2 • (a * star a) - ‖x‖ ^ 2 • (a * ⟪y, x⟫)
                  - ‖x‖ ^ 2 • (⟪x, y⟫ * star a) + ‖x‖ ^ 2 • (‖x‖ ^ 2 • ⟪y, y⟫) := fun a => by
      calc (0 : A) ≤ ⟪a • x - ‖x‖ ^ 2 • y, a • x - ‖x‖ ^ 2 • y⟫_A := by
                      exact inner_self_nonneg
            _ = a * ⟪x, x⟫ * star a - ‖x‖ ^ 2 • (a * ⟪y, x⟫)
                  - ‖x‖ ^ 2 • (⟪x, y⟫ * star a) + ‖x‖ ^ 2 • (‖x‖ ^ 2 • ⟪y, y⟫) := by
                      simp only [inner_sub_right, inner_op_smul_right, inner_sub_left,
                        inner_op_smul_left, inner_smul_left_real, mul_sub, mul_smul_comm,
                        inner_smul_right_real, smul_sub, mul_assoc]
                      abel
            _ ≤ ‖x‖ ^ 2 • (a * star a) - ‖x‖ ^ 2 • (a * ⟪y, x⟫)
                  - ‖x‖ ^ 2 • (⟪x, y⟫ * star a) + ‖x‖ ^ 2 • (‖x‖ ^ 2 • ⟪y, y⟫) := by
                      gcongr
                      calc _ ≤ ‖⟪x, x⟫_A‖ • (a * star a) :=
                          CStarAlgebra.star_right_conjugate_le_norm_smul ..
                        _ = (√‖⟪x, x⟫_A‖) ^ 2 • (a * star a) := by
                          rw [Real.sq_sqrt]
                          positivity
                        _ = ‖x‖ ^ 2 • (a * star a) := by rw [← norm_eq_sqrt_norm_inner_self]
    specialize h₁ ⟪x, y⟫
    simp only [star_inner, sub_self, zero_sub, le_neg_add_iff_add_le, add_zero] at h₁
    rwa [smul_le_smul_iff_of_pos_left (pow_pos (CStarModule.norm_pos A h) _)] at h₁

open scoped InnerProductSpace in
variable (E) in
/-- The Cauchy-Schwarz inequality for Hilbert C⋆-modules. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant87a7656c56785163c5471898e51561e56fef0b220c270bbbca3f516d379d8b22.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e8106131dc9f3c435977677aab87aa58d233dff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
