# exists_locallyConstant_finite_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd9afe5a-508d-1552-3d34-6bcb9a0054fa",
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
  "slug": "exists-locallyconstant-finite-nonempty--87b2a902cba629b8165fe756",
  "source": {
    "blob": "1252e1c215be14827bf2a14b4fd581ce82be17d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 184,
    "path": "GRWTSK/Topology/CofilteredLimit/Variantf07e96b6e5af26672cd72c811546b4b38a08b590cd6e30a61647e8047449e7d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87b2a902cba629b8165fe7568d5729bb41092622d85dcf8f737d118c45211f95",
  "verification": {
    "reference": "docs/verification/Topology/CofilteredLimit/Variantf07e96b6e5af26672cd72c811546b4b38a08b590cd6e30a61647e8047449e7d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd9afe5a-508d-1552-3d34-6bcb9a0054fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_locallyConstant_finite_nonempty {α : Type*} [Finite α] [Nonempty α]
    (hC : IsLimit C) (f : LocallyConstant C.pt α) :
    ∃ (j : J) (g : LocallyConstant (F.obj j) α), f = g.comap (C.π.app _) := by
  inhabit α
  obtain ⟨j, gg, h⟩ := exists_locallyConstant_finite_aux _ hC f
  let ι : α → α → Fin 2 := fun a b => if a = b then 0 else 1
  let σ : (α → Fin 2) → α := fun f => if h : ∃ a : α, ι a = f then h.choose else default
  refine' ⟨j, gg.map σ, _⟩
  ext x
  rw [LocallyConstant.coe_comap _ _ (C.π.app j).continuous]
  dsimp
  have h1 : ι (f x) = gg (C.π.app j x) := by
    change f.map (fun a b => if a = b then (0 : Fin 2) else 1) x = _
    rw [h, LocallyConstant.coe_comap _ _ (C.π.app j).continuous]
    rfl
  have h2 : ∃ a : α, ι a = gg (C.π.app j x) := ⟨f x, h1⟩
  rw [dif_pos h2]
  apply_fun ι
  · rw [h2.choose_spec]
    exact h1
  · intro a b hh
    have hhh := congr_fun hh a
    dsimp at hhh
    rw [if_pos rfl] at hhh
    split_ifs at hhh with hh1
    · exact hh1.symm
    · exact False.elim (bot_ne_top hhh)
set_option linter.uppercaseLean3 false in
#align Profinite.exists_locally_constant_finite_nonempty Profinite.exists_locallyConstant_finite_nonempty

/-- Any locally constant function from a cofiltered limit of profinite sets factors through
one of the components. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/CofilteredLimit/Variantf07e96b6e5af26672cd72c811546b4b38a08b590cd6e30a61647e8047449e7d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/CofilteredLimit/Variantf07e96b6e5af26672cd72c811546b4b38a08b590cd6e30a61647e8047449e7d5.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1252e1c215be14827bf2a14b4fd581ce82be17d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
