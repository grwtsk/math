# perm_permutations'Aux_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc1ee5b90e2e2fed9b580964ed2ef3adcc18783a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1270,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef782948927fb35f9109c5bc0046df56341fbd52df09e7f2940ba5652648af64.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8d219e1-f6aa-1bc7-92f0-357eaf6d80ff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f66f648d-99c2-7aa7-8cda-200db66dd6ee",
  "kind": "theorem",
  "lexical_name": "perm_permutations'Aux_comm",
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
  "slug": "perm-permutations-aux-comm--dd08ce9fdd88c087e6755219",
  "source": {
    "blob": "dc1ee5b90e2e2fed9b580964ed2ef3adcc18783a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1293,
    "line": 1270,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantef782948927fb35f9109c5bc0046df56341fbd52df09e7f2940ba5652648af64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd08ce9fdd88c087e67552195b620b61cc30244dd97c11961143e35fcb1eb37f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantef782948927fb35f9109c5bc0046df56341fbd52df09e7f2940ba5652648af64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f66f648d-99c2-7aa7-8cda-200db66dd6ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1270–1293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perm_permutations'Aux_comm (a b : α) (l : List α) :
    (permutations'Aux a l).bind (permutations'Aux b) ~
      (permutations'Aux b l).bind (permutations'Aux a) := by
  induction' l with c l ih
  · simp [swap]
  simp [permutations'Aux]
  apply Perm.swap'
  have :
    ∀ a b,
      (map (cons c) (permutations'Aux a l)).bind (permutations'Aux b) ~
        map (cons b ∘ cons c) (permutations'Aux a l) ++
          map (cons c) ((permutations'Aux a l).bind (permutations'Aux b)) := by
    intros a' b'
    simp only [map_bind, permutations'Aux]
    show List.bind (permutations'Aux _ l) (fun a => ([b' :: c :: a] ++
      map (cons c) (permutations'Aux _ a))) ~ _
    refine' (bind_append_perm _ (fun x => [b' :: c :: x]) _).symm.trans _
    rw [← map_eq_bind, ← bind_map]
    exact Perm.refl _
  refine' (((this _ _).append_left _).trans _).trans ((this _ _).append_left _).symm
  rw [← append_assoc, ← append_assoc]
  exact perm_append_comm.append (ih.map _)
#align list.perm_permutations'_aux_comm List.perm_permutations'Aux_comm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantef782948927fb35f9109c5bc0046df56341fbd52df09e7f2940ba5652648af64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantef782948927fb35f9109c5bc0046df56341fbd52df09e7f2940ba5652648af64.lean#L1270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc1ee5b90e2e2fed9b580964ed2ef3adcc18783a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
