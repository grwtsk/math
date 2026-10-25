# min_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:550453b6-a81e-2e30-1d72-e007af1ce13d",
  "kind": "theorem",
  "lexical_name": "min_injective",
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
  "slug": "min-injective--11cb4aa348ce1ccebb3b151e",
  "source": {
    "blob": "eba03ea7cd8d80b994784a694945688ee2830653",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant3ef2955d91086f6e47127650dce8df1b8f0fc186a9215460d87d047abd0ac594.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11cb4aa348ce1ccebb3b151e73656b3d0e033e2f245ff45df4533c21e9ab01fb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant3ef2955d91086f6e47127650dce8df1b8f0fc186a9215460d87d047abd0ac594.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:550453b6-a81e-2e30-1d72-e007af1ce13d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem min_injective [I : Nonempty ι] : ∃ i, Nonempty (∀ j, β i ↪ β j) :=
  let ⟨s, hs⟩ := show ∃ s, Maximal (· ∈ sets β) s by
    refine zorn_subset _ fun c hc hcc ↦
      ⟨⋃₀ c, fun i x ⟨p, hpc, hxp⟩ y ⟨q, hqc, hyq⟩ hi ↦ ?_, fun _ ↦ subset_sUnion_of_mem⟩
    exact (hcc.total hpc hqc).elim (fun h ↦ hc hqc i (h hxp) hyq hi)
      fun h ↦ hc hpc i hxp (h hyq) hi
  let ⟨i, e⟩ :=
    show ∃ i, Surjective fun x : s => x.val i from
      Classical.by_contradiction fun h =>
        have h : ∀ i, ∃ y, ∀ x ∈ s, (x : ∀ i, β i) i ≠ y := by
          simpa [Surjective] using h
        let ⟨f, hf⟩ := Classical.axiom_of_choice h
        have : f ∈ s :=
          have : insert f s ∈ sets β := fun i x hx y hy => by
            rcases hx with hx | hx <;> rcases hy with hy | hy; · simp [hx, hy]
            · subst x
              exact fun e => (hf i y hy e.symm).elim
            · subst y
              exact fun e => (hf i x hx e).elim
            · exact hs.prop i hx hy
          hs.eq_of_subset this (subset_insert _ _) ▸ mem_insert ..
        let ⟨i⟩ := I
        hf i f this rfl
  ⟨i, ⟨fun j => ⟨s.restrict (fun x => x j) ∘ surjInv e,
    ((hs.1 j).injective).comp (injective_surjInv _)⟩⟩⟩

end Wo

/-- The cardinals are totally ordered. See
`Cardinal.conditionallyCompleteLinearOrderBot` for (one of) the lattice
instance. -/
-- Porting note: `ULift.{max u v, u} α` was `ULift α`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant3ef2955d91086f6e47127650dce8df1b8f0fc186a9215460d87d047abd0ac594.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant3ef2955d91086f6e47127650dce8df1b8f0fc186a9215460d87d047abd0ac594.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eba03ea7cd8d80b994784a694945688ee2830653` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
