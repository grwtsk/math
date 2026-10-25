# eq_of_getMsb_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3badb5328bee522c961574b467354ded7ca7884d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ad3f825-bf2e-13c6-2912-10cb11155cbf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8eaac8e7-0a78-f0e9-13bc-612209332b11",
  "kind": "theorem",
  "lexical_name": "eq_of_getMsb_eq",
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
  "slug": "eq-of-getmsb-eq--50ac9ce9fd129556c1c9d489",
  "source": {
    "blob": "3badb5328bee522c961574b467354ded7ca7884d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50ac9ce9fd129556c1c9d489f5224d39e683b31c87afbbf963f7ab20b0abe04a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8eaac8e7-0a78-f0e9-13bc-612209332b11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_getMsb_eq {x y : BitVec w}
    (pred : ∀(i : Fin w), x.getMsb i = y.getMsb i.val) : x = y := by
  simp only [getMsb] at pred
  apply eq_of_getLsb_eq
  intro ⟨i, i_lt⟩
  if w_zero : w = 0 then
    simp [w_zero]
  else
    have w_pos := Nat.pos_of_ne_zero w_zero
    have r : i ≤ w - 1 := by
      simp [Nat.le_sub_iff_add_le w_pos, Nat.add_succ]
      exact i_lt
    have q_lt : w - 1 - i < w := by
      simp only [Nat.sub_sub]
      apply Nat.sub_lt w_pos
      simp [Nat.succ_add]
    have q := pred ⟨w - 1 - i, q_lt⟩
    simpa [q_lt, Nat.sub_sub_self, r] using q

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb9ce50e09423403ddfb8a874bc5f7b72e23746416d9ada795515e75304664c26.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3badb5328bee522c961574b467354ded7ca7884d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
