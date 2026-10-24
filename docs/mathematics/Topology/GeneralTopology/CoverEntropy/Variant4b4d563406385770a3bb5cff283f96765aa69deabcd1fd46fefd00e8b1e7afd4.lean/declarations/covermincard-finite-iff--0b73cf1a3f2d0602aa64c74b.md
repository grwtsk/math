# coverMincard_finite_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "834bf0bd416196ee5f7f4bfeeaaa8b6ee6ef3f58",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b4d563406385770a3bb5cff283f96765aa69deabcd1fd46fefd00e8b1e7afd4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4c9709b-15a2-853c-8e78-129aa9f52451",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f065642-42b6-4908-0695-29d3801122bd",
  "kind": "lemma",
  "lexical_name": "coverMincard_finite_iff",
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
  "slug": "covermincard-finite-iff--0b73cf1a3f2d0602aa64c74b",
  "source": {
    "blob": "834bf0bd416196ee5f7f4bfeeaaa8b6ee6ef3f58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 222,
    "path": "GRWTSK/Topology/GeneralTopology/CoverEntropy/Variant4b4d563406385770a3bb5cff283f96765aa69deabcd1fd46fefd00e8b1e7afd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b73cf1a3f2d0602aa64c74bce84ca5f61952ae5e6addf541c9829e4a2dc5f82",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CoverEntropy/Variant4b4d563406385770a3bb5cff283f96765aa69deabcd1fd46fefd00e8b1e7afd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f065642-42b6-4908-0695-29d3801122bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coverMincard_finite_iff (T : X → X) (F : Set X) (U : SetRel X X) (n : ℕ) :
    coverMincard T F U n < ⊤ ↔
    ∃ s : Finset X, IsDynCoverOf T F U n s ∧ s.card = coverMincard T F U n := by
  refine ⟨fun h_fin ↦ ?_, fun ⟨s, _, s_coverMincard⟩ ↦ s_coverMincard ▸ WithTop.coe_lt_top s.card⟩
  obtain ⟨k, k_min⟩ := ENat.ne_top_iff_exists.mp h_fin.ne
  rw [← k_min]
  simp only [Nat.cast_inj]
  have : Nonempty {s : Finset X // IsDynCoverOf T F U n s} := by
    by_contra h
    apply ENat.natCast_ne_top k
    rw [k_min, coverMincard, iInf₂_eq_top]
    simp only [ENat.natCast_ne_top, imp_false]
    rw [nonempty_subtype, not_exists] at h
    exact h
  have key := ciInf_mem fun s : {s : Finset X // IsDynCoverOf T F U n s} ↦ (s.val.card : ℕ∞)
  rw [coverMincard, iInf_subtype'] at k_min
  rw [← k_min, mem_range, Subtype.exists] at key
  simp only [Nat.cast_inj, exists_prop] at key
  exact key

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CoverEntropy/Variant4b4d563406385770a3bb5cff283f96765aa69deabcd1fd46fefd00e8b1e7afd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CoverEntropy/Variant4b4d563406385770a3bb5cff283f96765aa69deabcd1fd46fefd00e8b1e7afd4.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `834bf0bd416196ee5f7f4bfeeaaa8b6ee6ef3f58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
