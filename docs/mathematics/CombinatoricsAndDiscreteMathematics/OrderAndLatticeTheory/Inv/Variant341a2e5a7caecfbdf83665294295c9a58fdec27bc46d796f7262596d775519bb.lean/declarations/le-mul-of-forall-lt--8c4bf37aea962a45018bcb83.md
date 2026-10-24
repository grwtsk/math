# le_mul_of_forall_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8c0abe6849cee5d6656bba647431b25bf694b0a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 513,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/341a2e5a7caecfbdf83665294295c9a58fdec27bc46d796f7262596d775519bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6e936bf-3ccb-d7ea-dce5-76546911fcc5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60ad1ba4-4f92-04a3-1fda-6425f97a2384",
  "kind": "lemma",
  "lexical_name": "le_mul_of_forall_lt",
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
  "slug": "le-mul-of-forall-lt--8c4bf37aea962a45018bcb83",
  "source": {
    "blob": "8c0abe6849cee5d6656bba647431b25bf694b0a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 513,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant341a2e5a7caecfbdf83665294295c9a58fdec27bc46d796f7262596d775519bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c4bf37aea962a45018bcb8304bc54b7b3101bd4e3ecf64b7b1d1dae49f4a97a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant341a2e5a7caecfbdf83665294295c9a58fdec27bc46d796f7262596d775519bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60ad1ba4-4f92-04a3-1fda-6425f97a2384`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 513–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_mul_of_forall_lt (h₁ : 0 < a ∨ b ≠ ⊤) (h₂ : a ≠ ⊤ ∨ 0 < b)
    (h : ∀ a' > a, ∀ b' > b, c ≤ a' * b') : c ≤ a * b := by
  refine le_of_forall_gt_imp_ge_of_dense fun d hd ↦ ?_
  obtain ⟨a', aa', hd⟩ := exists_mul_left_lt (h₁.imp_left ne_of_gt) h₂ hd
  replace h₁ : 0 < a' ∨ b ≠ ⊤ := h₁.imp_left fun a0 ↦ a0.trans (mem_Ioo.1 aa').1
  replace h₂ : a' ≠ ⊤ ∨ b ≠ 0 := Or.inl (mem_Ioo.1 aa').2.ne
  obtain ⟨b', bb', hd⟩ := exists_mul_right_lt h₁ h₂ hd
  exact (h a' (mem_Ioo.1 aa').1 b' (mem_Ioo.1 bb').1).trans hd.le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant341a2e5a7caecfbdf83665294295c9a58fdec27bc46d796f7262596d775519bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant341a2e5a7caecfbdf83665294295c9a58fdec27bc46d796f7262596d775519bb.lean#L513).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c0abe6849cee5d6656bba647431b25bf694b0a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
