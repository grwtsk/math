# exists_locallyConstant_finite_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f508ce01951c7f87ce82a3f205382670bbe695f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45b8f2ff299103a2ce3d05ac6e6ea524be5fb2721b33bbccb43d3b5391cf30bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:56896625-9625-5eef-48b6-d674cbd349b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3fed18fa-f2ff-9d42-9348-0a5d41bf299b",
  "kind": "theorem",
  "lexical_name": "exists_locallyConstant_finite_nonempty",
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
  "slug": "exists-locallyconstant-finite-nonempty--410076972d94d1e7b5a9c02d",
  "source": {
    "blob": "4f508ce01951c7f87ce82a3f205382670bbe695f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 153,
    "path": "GRWTSK/Topology/CofilteredLimit/Variant45b8f2ff299103a2ce3d05ac6e6ea524be5fb2721b33bbccb43d3b5391cf30bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:410076972d94d1e7b5a9c02d9edd3e459d131ae67f5e8d7882d32481f42e6fe9",
  "verification": {
    "reference": "docs/verification/Topology/CofilteredLimit/Variant45b8f2ff299103a2ce3d05ac6e6ea524be5fb2721b33bbccb43d3b5391cf30bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fed18fa-f2ff-9d42-9348-0a5d41bf299b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_locallyConstant_finite_nonempty {α : Type*} [Finite α] [Nonempty α]
    (hC : IsLimit C) (f : LocallyConstant C.pt α) :
    ∃ (j : J) (g : LocallyConstant (F.obj j) α), f = g.comap (C.π.app _).hom := by
  inhabit α
  obtain ⟨j, gg, h⟩ := exists_locallyConstant_finite_aux _ hC f
  classical
  let ι : α → α → Fin 2 := fun a b => if a = b then 0 else 1
  let σ : (α → Fin 2) → α := fun f => if h : ∃ a : α, ι a = f then h.choose else default
  refine ⟨j, gg.map σ, ?_⟩
  ext x
  simp only [Functor.const_obj_obj, LocallyConstant.coe_comap, LocallyConstant.map_apply,
    Function.comp_apply]
  dsimp [σ]
  have h1 : ι (f x) = gg (C.π.app j x) := by
    change f.map (fun a b => if a = b then (0 : Fin 2) else 1) x = _
    rw [h]
    rfl
  have h2 : ∃ a : α, ι a = gg (C.π.app j x) := ⟨f x, h1⟩
  rw [dif_pos]
  swap
  · assumption
  apply_fun ι
  · rw [h2.choose_spec]
    exact h1
  · intro a b hh
    have hhh := congr_fun hh a
    dsimp [ι] at hhh
    rw [if_pos rfl] at hhh
    split_ifs at hhh with hh1
    · exact hh1.symm
    · exact False.elim (bot_ne_top hhh)

/-- Any locally constant function from a cofiltered limit of profinite sets factors through
one of the components. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/CofilteredLimit/Variant45b8f2ff299103a2ce3d05ac6e6ea524be5fb2721b33bbccb43d3b5391cf30bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/CofilteredLimit/Variant45b8f2ff299103a2ce3d05ac6e6ea524be5fb2721b33bbccb43d3b5391cf30bf.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f508ce01951c7f87ce82a3f205382670bbe695f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
