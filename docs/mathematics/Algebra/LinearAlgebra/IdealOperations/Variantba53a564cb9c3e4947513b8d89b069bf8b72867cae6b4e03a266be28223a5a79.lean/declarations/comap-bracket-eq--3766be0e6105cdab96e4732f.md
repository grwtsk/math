# comap_bracket_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a1da0634d42f19ba3b9e0ab57625177d6e5839c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 274,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a950c4f5-69d2-aa4a-1b68-91d119400531",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28eeda5b-078f-d0b6-6d78-92e6f6fbaccb",
  "kind": "theorem",
  "lexical_name": "comap_bracket_eq",
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
  "slug": "comap-bracket-eq--3766be0e6105cdab96e4732f",
  "source": {
    "blob": "2a1da0634d42f19ba3b9e0ab57625177d6e5839c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 274,
    "path": "GRWTSK/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3766be0e6105cdab96e4732fba37e05df83d7588ed8115c566b8bb22f17f6a4b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28eeda5b-078f-d0b6-6d78-92e6f6fbaccb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_bracket_eq {J₁ J₂ : LieIdeal R L'} (h : f.IsIdealMorphism) :
    comap f ⁅f.idealRange ⊓ J₁, f.idealRange ⊓ J₂⁆ = ⁅comap f J₁, comap f J₂⁆ ⊔ f.ker := by
  rw [← LieSubmodule.toSubmodule_inj, comap_toSubmodule,
    LieSubmodule.sup_toSubmodule, f.ker_toSubmodule, ← Submodule.comap_map_eq,
    LieSubmodule.lieIdeal_oper_eq_linear_span, LieSubmodule.lieIdeal_oper_eq_linear_span,
    LinearMap.map_span]
  congr; simp only [LieHom.coe_toLinearMap, Set.mem_setOf_eq]; ext y
  constructor
  · rintro ⟨⟨x₁, hx₁⟩, ⟨x₂, hx₂⟩, hy⟩; rw [← hy]
    rw [LieSubmodule.mem_inf, f.mem_idealRange_iff h] at hx₁ hx₂
    obtain ⟨⟨z₁, hz₁⟩, hz₁'⟩ := hx₁; rw [← hz₁] at hz₁'
    obtain ⟨⟨z₂, hz₂⟩, hz₂'⟩ := hx₂; rw [← hz₂] at hz₂'
    refine ⟨⁅z₁, z₂⁆, ⟨⟨z₁, hz₁'⟩, ⟨z₂, hz₂'⟩, rfl⟩, ?_⟩
    simp only [hz₁, hz₂, Submodule.coe_mk, LieHom.map_lie]
  · rintro ⟨x, ⟨⟨z₁, hz₁⟩, ⟨z₂, hz₂⟩, hx⟩, hy⟩; rw [← hy, ← hx]
    have hz₁' : f z₁ ∈ f.idealRange ⊓ J₁ := by
      rw [LieSubmodule.mem_inf]; exact ⟨f.mem_idealRange z₁, hz₁⟩
    have hz₂' : f z₂ ∈ f.idealRange ⊓ J₂ := by
      rw [LieSubmodule.mem_inf]; exact ⟨f.mem_idealRange z₂, hz₂⟩
    use ⟨f z₁, hz₁'⟩, ⟨f z₂, hz₂'⟩; simp only [Submodule.coe_mk, LieHom.map_lie]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a1da0634d42f19ba3b9e0ab57625177d6e5839c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
