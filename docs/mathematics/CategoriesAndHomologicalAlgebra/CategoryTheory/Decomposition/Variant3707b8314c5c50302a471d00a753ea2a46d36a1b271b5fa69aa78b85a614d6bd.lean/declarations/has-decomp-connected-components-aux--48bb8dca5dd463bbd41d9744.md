# has_decomp_connected_components_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cff532c-7baa-6c77-55d6-33c3f818f44a",
  "kind": "lemma",
  "lexical_name": "has_decomp_connected_components_aux",
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
  "slug": "has-decomp-connected-components-aux--48bb8dca5dd463bbd41d9744",
  "source": {
    "blob": "d6bc5429468d198453842f6bcf05f8f6aa6e8ca3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 88,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant3707b8314c5c50302a471d00a753ea2a46d36a1b271b5fa69aa78b85a614d6bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48bb8dca5dd463bbd41d9744ad8c6ad33dd6d62f008e6f3d533bd30c912a8624",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant3707b8314c5c50302a471d00a753ea2a46d36a1b271b5fa69aa78b85a614d6bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cff532c-7baa-6c77-55d6-33c3f818f44a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma has_decomp_connected_components_aux (F : C ⥤ FintypeCat.{w}) [FiberFunctor F]
    (n : ℕ) : ∀ (X : C), n = Nat.card (F.obj X) → ∃ (ι : Type) (f : ι → C)
    (g : (i : ι) → (f i) ⟶ X) (_ : IsColimit (Cofan.mk X g)),
    (∀ i, IsConnected (f i)) ∧ Finite ι := by
  induction n using Nat.strongRecOn with | _ n hi
  intro X hn
  by_cases h : IsConnected X
  · exact has_decomp_connected_components_aux_conn X
  by_cases nhi : IsInitial X → False
  · obtain ⟨Y, v, hni, hvmono, hvnoiso⟩ :=
      has_non_trivial_subobject_of_not_isConnected_of_not_initial X h nhi
    obtain ⟨Z, u, ⟨c⟩⟩ := PreGaloisCategory.monoInducesIsoOnDirectSummand v
    let t : ColimitCocone (pair Y Z) := { cocone := BinaryCofan.mk v u, isColimit := c }
    have hn1 : Nat.card (F.obj Y) < n := by
      rw [hn]
      exact lt_card_fiber_of_mono_of_notIso F v hvnoiso
    have i : X ≅ Y ⨿ Z := (colimit.isoColimitCocone t).symm
    have hnn : Nat.card (F.obj X) = Nat.card (F.obj Y) + Nat.card (F.obj Z) := by
      rw [card_fiber_eq_of_iso F i]
      exact card_fiber_coprod_eq_sum F Y Z
    have hn2 : Nat.card (F.obj Z) < n := by
      rw [hn, hnn, lt_add_iff_pos_left]
      exact Nat.pos_of_ne_zero (non_zero_card_fiber_of_not_initial F Y hni)
    let ⟨ι₁, f₁, g₁, hc₁, hf₁, he₁⟩ := hi (Nat.card (F.obj Y)) hn1 Y rfl
    let ⟨ι₂, f₂, g₂, hc₂, hf₂, he₂⟩ := hi (Nat.card (F.obj Z)) hn2 Z rfl
    refine ⟨ι₁ ⊕ ι₂, Sum.elim f₁ f₂,
      Cofan.combPairHoms (Cofan.mk Y g₁) (Cofan.mk Z g₂) (BinaryCofan.mk v u), ?_⟩
    use Cofan.combPairIsColimit hc₁ hc₂ c
    refine ⟨fun i ↦ ?_, inferInstance⟩
    cases i
    · exact hf₁ _
    · exact hf₂ _
  · simp only [not_forall, not_false_eq_true] at nhi
    obtain ⟨hi⟩ := nhi
    exact has_decomp_connected_components_aux_initial X hi

/-- In a Galois category, every object is the sum of connected objects. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant3707b8314c5c50302a471d00a753ea2a46d36a1b271b5fa69aa78b85a614d6bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant3707b8314c5c50302a471d00a753ea2a46d36a1b271b5fa69aa78b85a614d6bd.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6bc5429468d198453842f6bcf05f8f6aa6e8ca3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
