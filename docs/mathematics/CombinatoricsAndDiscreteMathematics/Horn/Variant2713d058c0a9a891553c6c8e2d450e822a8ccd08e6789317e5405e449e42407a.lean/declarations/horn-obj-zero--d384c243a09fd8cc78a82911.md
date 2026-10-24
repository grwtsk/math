# horn_obj_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "feebffcad18e8f09346f015c4ab652e4a600e51e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/2713d058c0a9a891553c6c8e2d450e822a8ccd08e6789317e5405e449e42407a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58833e5c-4156-e5ff-e901-38613bdaf185",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:896c5d32-a5bc-8474-d99a-a4463b76499f",
  "kind": "lemma",
  "lexical_name": "horn_obj_zero",
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
  "slug": "horn-obj-zero--d384c243a09fd8cc78a82911",
  "source": {
    "blob": "feebffcad18e8f09346f015c4ab652e4a600e51e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Horn/Variant2713d058c0a9a891553c6c8e2d450e822a8ccd08e6789317e5405e449e42407a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d384c243a09fd8cc78a829118bed1c1e0d3c7d8138e8ced9c0821323734a046b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Horn/Variant2713d058c0a9a891553c6c8e2d450e822a8ccd08e6789317e5405e449e42407a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:896c5d32-a5bc-8474-d99a-a4463b76499f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma horn_obj_zero (n : ℕ) (i : Fin (n + 3)) :
    (horn.{u} (n + 2) i).obj (op (.mk 0)) = ⊤ := by
  ext j
  -- this was produced using `simp? [horn_eq_iSup]`
  simp only [horn_eq_iSup, Subpresheaf.iSup_obj, Set.iUnion_coe_set,
    Set.mem_compl_iff, Set.mem_singleton_iff, Set.mem_iUnion, stdSimplex.mem_face_iff,
    Nat.reduceAdd, Finset.mem_compl, Finset.mem_singleton, exists_prop, Set.top_eq_univ,
    Set.mem_univ, iff_true]
  let S : Finset (Fin (n + 3)) := {i, j 0}
  have hS : ¬ (S = Finset.univ) := fun hS ↦ by
    have := Finset.card_le_card hS.symm.le
    simp only [Finset.card_univ, Fintype.card_fin, S] at this
    have := this.trans Finset.card_le_two
    omega
  rw [Finset.eq_univ_iff_forall, not_forall] at hS
  obtain ⟨k, hk⟩ := hS
  simp only [Finset.mem_insert, Finset.mem_singleton, not_or, S] at hk
  refine ⟨k, hk.1, fun a ↦ ?_⟩
  fin_cases a
  exact Ne.symm hk.2

/-- The inclusion of the boundary of the `n`-th standard simplex into that standard simplex. -/
@[deprecated horn (since := "2025-01-26")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Horn/Variant2713d058c0a9a891553c6c8e2d450e822a8ccd08e6789317e5405e449e42407a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Horn/Variant2713d058c0a9a891553c6c8e2d450e822a8ccd08e6789317e5405e449e42407a.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feebffcad18e8f09346f015c4ab652e4a600e51e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
