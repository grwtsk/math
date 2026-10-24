# FarFromTriangleFree.lt_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d775f9d3678b8c8d576b5faa110e125ae9cccdb2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 255,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9bce9bb-7e9a-c042-c3c3-556fe8ee83b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd2bb802-fe12-16d7-efb1-a966eddd48f5",
  "kind": "lemma",
  "lexical_name": "FarFromTriangleFree.lt_half",
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
  "slug": "farfromtrianglefree-lt-half--b1721c729a2a5c43bcc27312",
  "source": {
    "blob": "d775f9d3678b8c8d576b5faa110e125ae9cccdb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 255,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1721c729a2a5c43bcc27312d853918e21602d3afc48ca4d8dfedbcc39a4e489",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd2bb802-fe12-16d7-efb1-a966eddd48f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma FarFromTriangleFree.lt_half (hG : G.FarFromTriangleFree ε) : ε < 2⁻¹ := by
  classical
  by_contra! hε
  refine lt_irrefl (ε * card α ^ 2) ?_
  have hε₀ : 0 < ε := hε.trans_lt' (by norm_num)
  rw [inv_le_iff_one_le_mul₀ (zero_lt_two' 𝕜)] at hε
  calc
    _ ≤ (#G.edgeFinset : 𝕜) := by
      simpa using hG.le_card_sub_card bot_le (cliqueFree_bot (le_succ _))
    _ ≤ ε * 2 * #G.edgeFinset := le_mul_of_one_le_left (by positivity) (by assumption)
    _ < ε * card α ^ 2 := ?_
  rw [mul_assoc, mul_lt_mul_left hε₀]
  norm_cast
  calc
    _ ≤ 2 * (completeGraph α).edgeFinset.card := by gcongr; exact le_top
    _ < card α ^ 2 := ?_
  rw [edgeFinset_top, filter_not, card_sdiff (subset_univ _), Finset.card_univ, Sym2.card]
  simp_rw [choose_two_right, Nat.add_sub_cancel, Nat.mul_comm _ (card α),
    funext (propext <| Sym2.isDiag_iff_mem_range_diag ·), univ_filter_mem_range, mul_tsub,
    Nat.mul_div_cancel' (card α).even_mul_succ_self.two_dvd]
  rw [card_image_of_injective _ Sym2.diag_injective, Finset.card_univ, mul_add_one (α := ℕ),
    two_mul, sq, add_tsub_add_eq_tsub_right]
  apply tsub_lt_self <;> positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d775f9d3678b8c8d576b5faa110e125ae9cccdb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
