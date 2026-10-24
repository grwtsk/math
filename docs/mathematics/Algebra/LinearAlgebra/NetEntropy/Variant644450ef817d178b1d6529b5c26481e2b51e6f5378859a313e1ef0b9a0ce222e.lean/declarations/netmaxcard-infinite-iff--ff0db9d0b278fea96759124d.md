# netMaxcard_infinite_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c56aa969ffe4cead3b75861a49941065a35c97db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27e88fa1-543b-0c32-8613-9f2780456206",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43464c74-968b-2402-e6e6-338ca3846442",
  "kind": "lemma",
  "lexical_name": "netMaxcard_infinite_iff",
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
  "slug": "netmaxcard-infinite-iff--ff0db9d0b278fea96759124d",
  "source": {
    "blob": "c56aa969ffe4cead3b75861a49941065a35c97db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 192,
    "path": "GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff0db9d0b278fea96759124d808702577f26e3199da37e5457548d545a3faf76",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43464c74-968b-2402-e6e6-338ca3846442`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma netMaxcard_infinite_iff (T : X → X) (F : Set X) (U : SetRel X X) (n : ℕ) :
    netMaxcard T F U n = ⊤ ↔ ∀ k : ℕ, ∃ s : Finset X, IsDynNetIn T F U n s ∧ k ≤ s.card := by
  apply Iff.intro <;> intro h
  · intro k
    rw [netMaxcard, iSup_subtype', iSup_eq_top] at h
    specialize h k (ENat.natCast_lt_top k)
    simp only [Nat.cast_lt, Subtype.exists, exists_prop] at h
    obtain ⟨s, s_net, s_k⟩ := h
    exact ⟨s, s_net, s_k.le⟩
  · refine ENat.eq_top_iff_forall_gt.mpr fun k ↦ ?_
    specialize h (k + 1)
    obtain ⟨s, s_net, s_card⟩ := h
    apply s_net.card_le_netMaxcard.trans_lt'
    rw [Nat.cast_lt]
    exact (lt_add_one k).trans_le s_card

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant644450ef817d178b1d6529b5c26481e2b51e6f5378859a313e1ef0b9a0ce222e.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c56aa969ffe4cead3b75861a49941065a35c97db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
