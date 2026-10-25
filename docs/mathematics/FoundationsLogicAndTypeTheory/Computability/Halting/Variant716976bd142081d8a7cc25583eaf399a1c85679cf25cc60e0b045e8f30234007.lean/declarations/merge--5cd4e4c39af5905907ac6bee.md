# merge'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f08c76313733e88b4b39468797625604e61eb647",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/716976bd142081d8a7cc25583eaf399a1c85679cf25cc60e0b045e8f30234007.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52e2c183-6054-5e52-14a0-be066bdebc58",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2bec083b-e455-5ffd-b58a-e9321e2339f5",
  "kind": "theorem",
  "lexical_name": "merge'",
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
  "slug": "merge--5cd4e4c39af5905907ac6bee",
  "source": {
    "blob": "f08c76313733e88b4b39468797625604e61eb647",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Halting/Variant716976bd142081d8a7cc25583eaf399a1c85679cf25cc60e0b045e8f30234007.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cd4e4c39af5905907ac6beebda5b94bc63d560ee058cad9b0679f885e4c23d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Halting/Variant716976bd142081d8a7cc25583eaf399a1c85679cf25cc60e0b045e8f30234007.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bec083b-e455-5ffd-b58a-e9321e2339f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem merge' {f g} (hf : Nat.Partrec f) (hg : Nat.Partrec g) :
    ∃ h, Nat.Partrec h ∧
      ∀ a, (∀ x ∈ h a, x ∈ f a ∨ x ∈ g a) ∧ ((h a).Dom ↔ (f a).Dom ∨ (g a).Dom) := by
  obtain ⟨cf, rfl⟩ := Code.exists_code.1 hf
  obtain ⟨cg, rfl⟩ := Code.exists_code.1 hg
  have : Nat.Partrec fun n => Nat.rfindOpt fun k => cf.evaln k n <|> cg.evaln k n :=
    Partrec.nat_iff.1
      (Partrec.rfindOpt <|
        Primrec.option_orElse.to_comp.comp
          (Code.evaln_prim.to_comp.comp <| (snd.pair (const cf)).pair fst)
          (Code.evaln_prim.to_comp.comp <| (snd.pair (const cg)).pair fst))
  refine' ⟨_, this, fun n => _⟩
  suffices; refine' ⟨this, ⟨fun h => (this _ ⟨h, rfl⟩).imp Exists.fst Exists.fst, _⟩⟩
  · intro h
    rw [Nat.rfindOpt_dom]
    simp only [dom_iff_mem, Code.evaln_complete, Option.mem_def] at h
    obtain ⟨x, k, e⟩ | ⟨x, k, e⟩ := h
    · refine' ⟨k, x, _⟩
      simp only [e, Option.some_orElse, Option.mem_def]
    · refine' ⟨k, _⟩
      cases' cf.evaln k n with y
      · exact ⟨x, by simp only [e, Option.mem_def, Option.none_orElse]⟩
      · exact ⟨y, by simp only [Option.some_orElse, Option.mem_def]⟩
  intro x h
  obtain ⟨k, e⟩ := Nat.rfindOpt_spec h
  revert e
  simp only [Option.mem_def]
  cases' e' : cf.evaln k n with y <;> simp <;> intro e
  · exact Or.inr (Code.evaln_sound e)
  · subst y
    exact Or.inl (Code.evaln_sound e')
#align nat.partrec.merge' Nat.Partrec.merge'

end Nat.Partrec

namespace Partrec

variable {α : Type*} {β : Type*} {γ : Type*} {σ : Type*}

variable [Primcodable α] [Primcodable β] [Primcodable γ] [Primcodable σ]

open Computable Part

open Nat.Partrec (Code)

open Nat.Partrec.Code

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Halting/Variant716976bd142081d8a7cc25583eaf399a1c85679cf25cc60e0b045e8f30234007.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Halting/Variant716976bd142081d8a7cc25583eaf399a1c85679cf25cc60e0b045e8f30234007.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f08c76313733e88b4b39468797625604e61eb647` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
