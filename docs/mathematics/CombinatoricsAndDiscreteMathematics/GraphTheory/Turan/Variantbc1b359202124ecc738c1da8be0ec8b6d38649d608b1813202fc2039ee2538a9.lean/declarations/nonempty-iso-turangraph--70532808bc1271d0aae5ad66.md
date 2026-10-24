# nonempty_iso_turanGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff42de11d5bc83a29b72c85401a351e15fd390a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c936a67-46f2-7c46-407a-92e39dfea057",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94877074-e4a5-3646-0a1f-d30bc8c9f6b7",
  "kind": "theorem",
  "lexical_name": "nonempty_iso_turanGraph",
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
  "slug": "nonempty-iso-turangraph--70532808bc1271d0aae5ad66",
  "source": {
    "blob": "ff42de11d5bc83a29b72c85401a351e15fd390a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 254,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70532808bc1271d0aae5ad6634359b0fe2b77397e49d5189ccc75aa2ef8c9577",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94877074-e4a5-3646-0a1f-d30bc8c9f6b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonempty_iso_turanGraph :
    Nonempty (G ≃g turanGraph (card V) r) := by
  classical
  obtain ⟨zm, zp⟩ := h.isEquipartition.exists_partPreservingEquiv
  use (Equiv.subtypeUnivEquiv mem_univ).symm.trans zm
  intro a b
  simp_rw [turanGraph_adj, Equiv.trans_apply, Equiv.subtypeUnivEquiv_symm_apply]
  have := zp ⟨a, mem_univ a⟩ ⟨b, mem_univ b⟩
  rw [← h.not_adj_iff_part_eq] at this
  rw [← not_iff_not, not_ne_iff, this, card_parts]
  rcases le_or_gt r (card V) with c | c
  · rw [min_eq_right c]; rfl
  · have lc : ∀ x, zm ⟨x, _⟩ < card V := fun x ↦ (zm ⟨x, mem_univ x⟩).2
    rw [min_eq_left c.le, Nat.mod_eq_of_lt (lc a), Nat.mod_eq_of_lt (lc b),
      ← Nat.mod_eq_of_lt ((lc a).trans c), ← Nat.mod_eq_of_lt ((lc b).trans c)]; rfl

end IsTuranMaximal

/-- **Turán's theorem**, reverse direction.

Any graph isomorphic to `turanGraph n r` is itself Turán-maximal if `0 < r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff42de11d5bc83a29b72c85401a351e15fd390a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
