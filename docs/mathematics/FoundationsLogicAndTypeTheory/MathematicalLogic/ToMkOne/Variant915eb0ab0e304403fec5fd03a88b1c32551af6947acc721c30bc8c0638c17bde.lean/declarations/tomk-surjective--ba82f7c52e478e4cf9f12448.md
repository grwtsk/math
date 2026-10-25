# toMk₁_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e49dfa8d47905faa7ac501f4c665fcacddd3b00",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/915eb0ab0e304403fec5fd03a88b1c32551af6947acc721c30bc8c0638c17bde.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29d71809-4892-89e3-7bdb-0e783e62ee7e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6676d0b2-dc0e-e6e3-230c-f816ebdb7219",
  "kind": "lemma",
  "lexical_name": "toMk₁_surjective",
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
  "slug": "tomk-surjective--ba82f7c52e478e4cf9f12448",
  "source": {
    "blob": "8e49dfa8d47905faa7ac501f4c665fcacddd3b00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 118,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ToMkOne/Variant915eb0ab0e304403fec5fd03a88b1c32551af6947acc721c30bc8c0638c17bde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba82f7c52e478e4cf9f124484472423f478509ddc0a60d4f5c5df802234a4a8e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ToMkOne/Variant915eb0ab0e304403fec5fd03a88b1c32551af6947acc721c30bc8c0638c17bde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6676d0b2-dc0e-e6e3-230c-f816ebdb7219`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toMk₁_surjective {n : ℕ} : Function.Surjective (toMk₁ (n := n)) := by
  intro f
  let S : Finset (Fin (n + 1)) := { i | f i = 1}
  by_cases hS : S.Nonempty
  · refine ⟨(S.min' hS).castSucc, ConcreteCategory.hom_ext _ _ (fun i ↦ ?_)⟩
    dsimp [toMk₁_apply]
    split_ifs with h
    · have hi : i ∉ S := fun hi ↦ by have := S.min'_le _ hi; grind
      grind
    · simp only [Fin.castSucc_lt_castSucc_iff, Finset.lt_min'_iff, not_forall,
        not_lt] at h
      obtain ⟨j, hj, hij⟩ := h
      have := f.toOrderHom.monotone hij
      #adaptation_note /-- Before https://github.com/leanprover/lean4/pull/13166
      (replacing grind's canonicalizer with a type-directed normalizer), `grind` closed this
      goal. It is not yet clear whether this is due to defeq abuse in Mathlib or a problem in
      the new canonicalizer; a minimization would help. The original proof was:
      `grind [show f j ≤ f i from f.toOrderHom.monotone hij]` -/
      simp_all [ConcreteCategory.hom, S]
      grind
  · refine ⟨Fin.last _, ConcreteCategory.hom_ext _ _ (fun i ↦ ?_)⟩
    dsimp [toMk₁_apply]
    rw [ite_eq_left (by simp)]
    obtain ⟨j, hj⟩ : ∃ (j : Fin 2), f i = j := ⟨_, rfl⟩
    fin_cases j
    · #adaptation_note /-- Before https://github.com/leanprover/lean4/pull/13166
      (replacing grind's canonicalizer with a type-directed normalizer), `grind` closed this
      goal. It is not yet clear whether this is due to defeq abuse in Mathlib or a problem in
      the new canonicalizer; a minimization would help. The original proof was: `grind` -/
      simp_all
    · exact (hS ⟨i, by simpa [S]⟩).elim

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ToMkOne/Variant915eb0ab0e304403fec5fd03a88b1c32551af6947acc721c30bc8c0638c17bde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ToMkOne/Variant915eb0ab0e304403fec5fd03a88b1c32551af6947acc721c30bc8c0638c17bde.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e49dfa8d47905faa7ac501f4c665fcacddd3b00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
