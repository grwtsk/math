# primitive_element_inf_aux_of_finite_intermediateField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6496f05dabad7c51dd05de34d543e6145817149e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c24018a-6929-562c-6b02-3a2985091f2b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7a16bb1-a9c3-988b-210d-187a035a21c7",
  "kind": "theorem",
  "lexical_name": "primitive_element_inf_aux_of_finite_intermediateField",
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
  "slug": "primitive-element-inf-aux-of-finite-intermediatefield--3125b0edbd2199c230f5cf29",
  "source": {
    "blob": "6496f05dabad7c51dd05de34d543e6145817149e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 171,
    "path": "GRWTSK/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3125b0edbd2199c230f5cf29f8e9ad0f0940a388aa301021652177fd92a69573",
  "verification": {
    "reference": "docs/verification/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7a16bb1-a9c3-988b-210d-187a035a21c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem primitive_element_inf_aux_of_finite_intermediateField
    [Finite (IntermediateField F E)] : ∃ γ : E, F⟮α, β⟯ = F⟮γ⟯ := by
  let f : F → IntermediateField F E := fun x ↦ F⟮α + x • β⟯
  obtain ⟨x, y, hneq, heq⟩ := Finite.exists_ne_map_eq_of_infinite f
  use α + x • β
  apply le_antisymm
  · rw [adjoin_le_iff]
    have αxβ_in_K : α + x • β ∈ F⟮α + x • β⟯ := mem_adjoin_simple_self F _
    have αyβ_in_K : α + y • β ∈ F⟮α + y • β⟯ := mem_adjoin_simple_self F _
    dsimp [f] at *
    simp only [← heq] at αyβ_in_K
    have β_in_K := sub_mem αxβ_in_K αyβ_in_K
    rw [show (α + x • β) - (α + y • β) = (x - y) • β by rw [sub_smul]; abel1] at β_in_K
    replace β_in_K := smul_mem _ β_in_K (x := (x - y)⁻¹)
    rw [smul_smul, inv_mul_eq_div, div_self (sub_ne_zero.2 hneq), one_smul] at β_in_K
    have α_in_K : α ∈ F⟮α + x • β⟯ := by
      convert ← sub_mem αxβ_in_K (smul_mem _ β_in_K)
      apply add_sub_cancel_right
    rintro x (rfl | rfl) <;> assumption
  · rw [adjoin_simple_le_iff]
    have α_in_Fαβ : α ∈ F⟮α, β⟯ := subset_adjoin F {α, β} (Set.mem_insert α {β})
    have β_in_Fαβ : β ∈ F⟮α, β⟯ := subset_adjoin F {α, β} (Set.mem_insert_of_mem α rfl)
    exact F⟮α, β⟯.add_mem α_in_Fαβ (F⟮α, β⟯.smul_mem β_in_Fαβ)

end PrimitiveElementInf

variable (F E : Type*) [Field F] [Field E]
variable [Algebra F E]

section SeparableAssumption

variable [FiniteDimensional F E] [Algebra.IsSeparable F E]

/-- **Primitive element theorem**: a finite separable field extension `E` of `F` has a
  primitive element, i.e. there is an `α ∈ E` such that `F⟮α⟯ = (⊤ : Subalgebra F E)`. -/
@[stacks 030N "The moreover part"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6496f05dabad7c51dd05de34d543e6145817149e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
