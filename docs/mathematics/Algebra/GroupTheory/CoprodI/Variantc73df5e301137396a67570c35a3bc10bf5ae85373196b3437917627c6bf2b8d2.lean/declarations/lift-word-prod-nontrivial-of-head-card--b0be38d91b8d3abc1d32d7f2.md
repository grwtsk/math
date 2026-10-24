# lift_word_prod_nontrivial_of_head_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b02812cd8c5133a5543c0f98379b93d19ab5299b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 842,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c73df5e301137396a67570c35a3bc10bf5ae85373196b3437917627c6bf2b8d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:950472e6-874b-3c56-6218-7fb795e80d9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ff820ab-afc8-3f0b-421d-dd32616af1d9",
  "kind": "theorem",
  "lexical_name": "lift_word_prod_nontrivial_of_head_card",
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
  "slug": "lift-word-prod-nontrivial-of-head-card--b0be38d91b8d3abc1d32d7f2",
  "source": {
    "blob": "b02812cd8c5133a5543c0f98379b93d19ab5299b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 857,
    "line": 842,
    "path": "GRWTSK/Algebra/GroupTheory/CoprodI/Variantc73df5e301137396a67570c35a3bc10bf5ae85373196b3437917627c6bf2b8d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0be38d91b8d3abc1d32d7f25b903a08f100b8a575e08efec1ce44f1618bfaf8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CoprodI/Variantc73df5e301137396a67570c35a3bc10bf5ae85373196b3437917627c6bf2b8d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ff820ab-afc8-3f0b-421d-dd32616af1d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 842–857.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_word_prod_nontrivial_of_head_card {i j} (w : NeWord H i j)
    (hcard : 3 ≤ #(H i)) (hheadtail : i ≠ j) : lift f w.prod ≠ 1 := by
  obtain ⟨h, hn1, hnh⟩ := Cardinal.exists_ne_ne_of_three_le hcard 1 w.head⁻¹
  have hnot1 : h * w.head ≠ 1 := by
    rw [← div_inv_eq_mul]
    exact div_ne_one_of_ne hnh
  let w' : NeWord H i i :=
    NeWord.append (NeWord.mulHead w h hnot1) hheadtail.symm
      (NeWord.singleton h⁻¹ (inv_ne_one.mpr hn1))
  have hw' : lift f w'.prod ≠ 1 :=
    lift_word_prod_nontrivial_of_head_eq_last f X hXnonempty hXdisj hpp w'
  intro heq1
  apply hw'
  simp [w', heq1]

include hcard in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CoprodI/Variantc73df5e301137396a67570c35a3bc10bf5ae85373196b3437917627c6bf2b8d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CoprodI/Variantc73df5e301137396a67570c35a3bc10bf5ae85373196b3437917627c6bf2b8d2.lean#L842).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b02812cd8c5133a5543c0f98379b93d19ab5299b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
