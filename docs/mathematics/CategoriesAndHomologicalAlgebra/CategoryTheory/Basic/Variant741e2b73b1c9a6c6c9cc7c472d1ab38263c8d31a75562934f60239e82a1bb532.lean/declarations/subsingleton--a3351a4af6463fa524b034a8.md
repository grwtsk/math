# subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9845a7786dc5fb951a60cd3ddefe13137dc287e804302757bd418d789768edd",
  "kind": "instance",
  "lexical_name": "subsingleton",
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
  "slug": "subsingleton--a3351a4af6463fa524b034a8",
  "source": {
    "blob": "533733eb09bfe43ac2d5a472829bf3da037f8456",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 357,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3351a4af6463fa524b034a808f0be3fe9086cbeee2258f9dd1cca5b072c25ab",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9845a7786dc5fb951a60cd3ddefe13137dc287e804302757bd418d789768edd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance subsingleton : Subsingleton (Φ.Iteration j) where
  allEq iter₁ iter₂ := by
    suffices iter₁.F = iter₂.F by aesop
    revert iter₁ iter₂
    induction j using SuccOrder.limitRecOn with
    | isMin j h =>
      obtain rfl := h.eq_bot
      intro iter₁ iter₂
      refine ext (fun k₁ k₂ h₁₂ h₂ ↦ ?_)
      obtain rfl : k₂ = ⊥ := by simpa using h₂
      obtain rfl : k₁ = ⊥ := by simpa using h₁₂
      apply mapEq_refl _ _ (by simp only [obj_bot])
    | succ j hj₁ hj₂ =>
      intro iter₁ iter₂
      refine ext (fun k₁ k₂ h₁₂ h₂ ↦ ?_)
      have h₀ := Order.le_succ j
      replace hj₂ := hj₂ (iter₁.trunc h₀) (iter₂.trunc h₀)
      have hsucc := Functor.congr_obj hj₂ ⟨j, by simp⟩
      dsimp at hj₂ hsucc
      wlog h : k₂ ≤ j generalizing k₁ k₂
      · obtain h₂ | rfl := h₂.lt_or_eq
        · exact this _ _ _ _ ((Order.lt_succ_iff_of_not_isMax hj₁).1 h₂)
        · by_cases h' : k₁ ≤ j
          · apply mapEq_trans _ h₀ (this k₁ j h' h₀ (by simp))
            simp only [MapEq, ← arrowSucc_def _ _ (Order.lt_succ_of_not_isMax hj₁),
              arrowSucc_eq, hsucc]
          · simp only [not_le] at h'
            obtain rfl : k₁ = Order.succ j := le_antisymm h₁₂
              ((Order.succ_le_iff_of_not_isMax hj₁).2 h')
            rw [MapEq, arrowMap_refl, arrowMap_refl,
              obj_succ _ _ h', obj_succ _ _ h', hsucc]
      simp only [MapEq, ← arrowMap_restrictionLE _ (Order.le_succ j) _ _ _ h, hj₂]
    | isSuccLimit j h₁ h₂ =>
      intro iter₁ iter₂
      refine ext (fun k₁ k₂ h₁₂ h₃ ↦ ?_)
      wlog h₄ : k₂ < j generalizing k₁ k₂; swap
      · have := h₂ k₂ h₄ (iter₁.trunc h₄.le) (iter₂.trunc h₄.le)
        simp at this
        simp only [MapEq, ← arrowMap_restrictionLE _ h₄.le _ _ _ (by rfl), this]
      · obtain rfl : j = k₂ := le_antisymm (by simpa using h₄) h₃
        have : restrictionLT iter₁.F le_rfl = restrictionLT iter₂.F le_rfl :=
          Arrow.functor_ext (fun _ l _ ↦ this _ _ _ _ l.2)
        by_cases h₅ : k₁ < j
        · dsimp [MapEq]
          simp_rw [arrowMap_limit _ _ h₁ _ _ h₅, this]
        · obtain rfl : k₁ = j := le_antisymm h₁₂ (by simpa using h₅)
          apply mapEq_refl
          simp only [obj_limit _ _ h₁, this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant741e2b73b1c9a6c6c9cc7c472d1ab38263c8d31a75562934f60239e82a1bb532.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `533733eb09bfe43ac2d5a472829bf3da037f8456` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
