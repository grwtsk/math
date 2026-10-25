# min_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7cfef0432b9861d169bc953689cecc2fa334e80e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c4f17e143f8af9e03be4bf1796a3ad1d1c8f4da58ad6ee050062ff17d789d85.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fca7f76c-cefc-d6da-f5bd-836104259e1c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28ad400e-bf93-77d0-2963-1391af310945",
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
  "slug": "min-injective--ecbad25e45f88e9503895fce",
  "source": {
    "blob": "7cfef0432b9861d169bc953689cecc2fa334e80e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant2c4f17e143f8af9e03be4bf1796a3ad1d1c8f4da58ad6ee050062ff17d789d85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecbad25e45f88e9503895fce70f6a6263679ac0b23842ee92c733bab593d542f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant2c4f17e143f8af9e03be4bf1796a3ad1d1c8f4da58ad6ee050062ff17d789d85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28ad400e-bf93-77d0-2963-1391af310945`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–125.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant2c4f17e143f8af9e03be4bf1796a3ad1d1c8f4da58ad6ee050062ff17d789d85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant2c4f17e143f8af9e03be4bf1796a3ad1d1c8f4da58ad6ee050062ff17d789d85.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cfef0432b9861d169bc953689cecc2fa334e80e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
