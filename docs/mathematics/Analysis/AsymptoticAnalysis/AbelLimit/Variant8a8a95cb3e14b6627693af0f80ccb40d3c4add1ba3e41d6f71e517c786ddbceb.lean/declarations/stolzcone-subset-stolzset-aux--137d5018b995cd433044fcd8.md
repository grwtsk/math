# stolzCone_subset_stolzSet_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:525dbe82-0fa4-8a6a-2a57-51d655194c26",
  "kind": "lemma",
  "lexical_name": "stolzCone_subset_stolzSet_aux",
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
  "slug": "stolzcone-subset-stolzset-aux--137d5018b995cd433044fcd8",
  "source": {
    "blob": "2fad3fb8daf05e5012118815c8ec582c68b0ca7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 103,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:137d5018b995cd433044fcd84f31af0f5491821cce7814ce89591af61204f695",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:525dbe82-0fa4-8a6a-2a57-51d655194c26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma stolzCone_subset_stolzSet_aux {s : ℝ} (hs : 0 < s) :
    ∃ M ε, 0 < M ∧ 0 < ε ∧ {z : ℂ | 1 - ε < z.re} ∩ stolzCone s ⊆ stolzSet M := by
  peel stolzCone_subset_stolzSet_aux' s with M ε hM hε H
  rintro z ⟨hzl, hzr⟩
  rw [Set.mem_setOf_eq, sub_lt_comm, ← one_re, ← sub_re] at hzl
  rw [stolzCone, Set.mem_setOf_eq, ← one_re, ← sub_re] at hzr
  replace H :=
    H (1 - z).re z.im ((mul_pos_iff_of_pos_left hs).mp <| (abs_nonneg z.im).trans_lt hzr) hzl hzr
  have h : z.im ^ 2 = (1 - z).im ^ 2 := by
    simp only [sub_im, one_im, zero_sub, even_two, neg_sq]
  rw [h, ← norm_eq_sqrt_sq_add_sq, ← h, sub_re, one_re, sub_sub_cancel,
    ← norm_eq_sqrt_sq_add_sq] at H
  exact ⟨sub_pos.mp <| (mul_pos_iff_of_pos_left hM).mp <| (norm_nonneg _).trans_lt H, H⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fad3fb8daf05e5012118815c8ec582c68b0ca7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
