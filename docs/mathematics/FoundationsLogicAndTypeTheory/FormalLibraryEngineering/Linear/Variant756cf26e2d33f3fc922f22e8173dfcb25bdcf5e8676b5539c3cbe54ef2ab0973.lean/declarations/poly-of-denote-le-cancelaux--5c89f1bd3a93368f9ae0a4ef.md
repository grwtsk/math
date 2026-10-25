# Poly.of_denote_le_cancelAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5048861-c8a8-0f47-f36c-6dc0fe7b9e11",
  "kind": "theorem",
  "lexical_name": "Poly.of_denote_le_cancelAux",
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
  "slug": "poly-of-denote-le-cancelaux--5c89f1bd3a93368f9ae0a4ef",
  "source": {
    "blob": "ace6b1433d5bcec1e84132c9aace3c3c7302b892",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 384,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant756cf26e2d33f3fc922f22e8173dfcb25bdcf5e8676b5539c3cbe54ef2ab0973.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c89f1bd3a93368f9ae0a4efbcd7eae14c82b6f1ba3608f1381f1092405f1a07",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant756cf26e2d33f3fc922f22e8173dfcb25bdcf5e8676b5539c3cbe54ef2ab0973.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5048861-c8a8-0f47-f36c-6dc0fe7b9e11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Poly.of_denote_le_cancelAux (ctx : Context) (fuel : Nat) (m₁ m₂ r₁ r₂ : Poly)
    (h : denote_le ctx (cancelAux fuel m₁ m₂ r₁ r₂)) : denote_le ctx (r₁.reverse ++ m₁, r₂.reverse ++ m₂) := by
  induction fuel generalizing m₁ m₂ r₁ r₂ with
  | zero => assumption
  | succ fuel ih =>
    simp at h
    split at h <;> try (simp; assumption)
    rename_i k₁ v₁ m₁ k₂ v₂ m₂
    by_cases hltv : Nat.blt v₁ v₂ <;> simp [hltv] at h
    · have ih := ih (h := h); simp [denote_le] at ih ⊢; assumption
    · by_cases hgtv : Nat.blt v₂ v₁ <;> simp [hgtv] at h
      · have ih := ih (h := h); simp [denote_le] at ih ⊢; assumption
      · have heqv : v₁ = v₂ := eq_of_not_blt_eq_true hltv hgtv; subst heqv
        by_cases hltk : Nat.blt k₁ k₂ <;> simp [hltk] at h
        · have ih := ih (h := h); simp [denote_le] at ih ⊢
          have haux : k₁ * Var.denote ctx v₁ ≤ k₂ * Var.denote ctx v₁ := Nat.mul_le_mul_right _ (Nat.le_of_lt (Nat.blt_eq.mp hltk))
          rw [Nat.mul_sub_right_distrib, ← Nat.add_assoc, ← Nat.add_sub_assoc haux] at ih
          have := Nat.add_le_of_le_sub (Nat.le_trans haux (Nat.le_add_left ..)) ih
          simp at this
          exact this
        · by_cases hgtk : Nat.blt k₂ k₁ <;> simp [hgtk] at h
          · have ih := ih (h := h); simp [denote_le] at ih ⊢
            have haux : k₂ * Var.denote ctx v₁ ≤ k₁ * Var.denote ctx v₁ := Nat.mul_le_mul_right _ (Nat.le_of_lt (Nat.blt_eq.mp hgtk))
            rw [Nat.mul_sub_right_distrib, ← Nat.add_assoc, ← Nat.add_sub_assoc haux] at ih
            have := Nat.le_add_of_sub_le ih
            simp at this
            exact this
          · have heqk : k₁ = k₂ := eq_of_not_blt_eq_true hltk hgtk; subst heqk
            have ih := ih (h := h); simp [denote_le] at ih ⊢
            have := Nat.add_le_add_right ih (k₁ * Var.denote ctx v₁)
            simp at this
            exact this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant756cf26e2d33f3fc922f22e8173dfcb25bdcf5e8676b5539c3cbe54ef2ab0973.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant756cf26e2d33f3fc922f22e8173dfcb25bdcf5e8676b5539c3cbe54ef2ab0973.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ace6b1433d5bcec1e84132c9aace3c3c7302b892` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
