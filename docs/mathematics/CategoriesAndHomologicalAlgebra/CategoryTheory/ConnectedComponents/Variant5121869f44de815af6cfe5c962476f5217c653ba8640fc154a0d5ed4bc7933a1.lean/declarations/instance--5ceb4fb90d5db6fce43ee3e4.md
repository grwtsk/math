# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09de275c682b8cb6f4c783a6ef19215da1e90afc49cff65bdc5ee54e07d0adee",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--5ceb4fb90d5db6fce43ee3e4",
  "source": {
    "blob": "621d099ce54f5288f476cfccf558e56bae1e4295",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 106,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ceb4fb90d5db6fce43ee3e4731026c826112f1f38ba4c67ab1df8a0cf1c2473",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09de275c682b8cb6f4c783a6ef19215da1e90afc49cff65bdc5ee54e07d0adee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (j : ConnectedComponents J) : IsConnected j.Component := by
  -- Show it's connected by constructing a zigzag (in `j.Component`) between any two objects
  apply isConnected_of_zigzag
  rintro ⟨j₁, hj₁⟩ ⟨j₂, rfl⟩
  -- We know that the underlying objects j₁ j₂ have some zigzag between them in `J`
  have h₁₂ : Zigzag j₁ j₂ := Quotient.exact' hj₁
  -- Get an explicit zigzag as a list
  rcases List.exists_chain_of_relationReflTransGen h₁₂ with ⟨l, hl₁, hl₂⟩
  -- Everything which has a zigzag to j₂ can be lifted to the same component as `j₂`.
  let f : ∀ x, Zigzag x j₂ → (ConnectedComponents.mk j₂).Component :=
    fun x h => ⟨x, Quotient.sound' h⟩
  -- Everything in our chosen zigzag from `j₁` to `j₂` has a zigzag to `j₂`.
  have hf : ∀ a : J, a ∈ l → Zigzag a j₂ := by
    intro i hi
    apply hl₁.backwards_induction (fun t => Zigzag t j₂) _ hl₂ _ _ _ (List.mem_of_mem_tail hi)
    · intro j k
      apply Relation.ReflTransGen.head
    · apply Relation.ReflTransGen.refl
  -- Now lift the zigzag from `j₁` to `j₂` in `J` to the same thing in `j.Component`.
  refine ⟨l.pmap f hf, ?_, ?_⟩
  · refine @List.chain_pmap_of_chain _ _ _ _ _ f (fun x y _ _ h => ?_) _ _ hl₁ h₁₂ _
    exact zag_of_zag_obj (ConnectedComponents.ι _) h
  · have := List.getLast_pmap (f := f) (xs := j₁ :: l) (by simpa [h₁₂] using hf)
      (List.cons_ne_nil _ _)
    simp only [List.pmap_cons] at this
    rw [this]
    exact ObjectProperty.FullSubcategory.ext hl₂

/-- The disjoint union of `J`s connected components, written explicitly as a sigma-type with the
category structure.
This category is equivalent to `J`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant5121869f44de815af6cfe5c962476f5217c653ba8640fc154a0d5ed4bc7933a1.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `621d099ce54f5288f476cfccf558e56bae1e4295` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
