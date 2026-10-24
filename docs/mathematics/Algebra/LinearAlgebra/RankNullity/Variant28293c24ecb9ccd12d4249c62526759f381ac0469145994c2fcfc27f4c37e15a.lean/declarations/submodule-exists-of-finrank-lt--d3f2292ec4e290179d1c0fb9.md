# Submodule.exists_of_finrank_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "daaf467a9ec0eca0330d167d074eeb610d1c6549",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 279,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:92dd6870-d918-09ea-866c-35f9a2a478c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b3ae282-4227-7bfd-e62e-b03bd5e032f7",
  "kind": "lemma",
  "lexical_name": "Submodule.exists_of_finrank_lt",
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
  "slug": "submodule-exists-of-finrank-lt--d3f2292ec4e290179d1c0fb9",
  "source": {
    "blob": "daaf467a9ec0eca0330d167d074eeb610d1c6549",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 279,
    "path": "GRWTSK/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3f2292ec4e290179d1c0fb9f436868319b8a136c4d28b7e75775c8f2fbd5564",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b3ae282-4227-7bfd-e62e-b03bd5e032f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Submodule.exists_of_finrank_lt (N : Submodule R M) (h : finrank R N < finrank R M) :
    ∃ m : M, ∀ r : R, r ≠ 0 → r • m ∉ N := by
  obtain ⟨s, hs, hs'⟩ :=
    exists_finset_linearIndependent_of_le_finrank (R := R) (M := M ⧸ N) le_rfl
  obtain ⟨v, hv⟩ : s.Nonempty := by rwa [Finset.nonempty_iff_ne_empty, ne_eq, ← Finset.card_eq_zero,
    hs, finrank_quotient, tsub_eq_zero_iff_le, not_le]
  obtain ⟨v, rfl⟩ := N.mkQ_surjective v
  refine ⟨v, fun r hr ↦ mt ?_ hr⟩
  have := linearIndependent_iff.mp hs' (Finsupp.single ⟨_, hv⟩ r)
  rwa [Finsupp.linearCombination_single, Finsupp.single_eq_zero, ← map_smul,
    Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero] at this

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RankNullity/Variant28293c24ecb9ccd12d4249c62526759f381ac0469145994c2fcfc27f4c37e15a.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daaf467a9ec0eca0330d167d074eeb610d1c6549` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
