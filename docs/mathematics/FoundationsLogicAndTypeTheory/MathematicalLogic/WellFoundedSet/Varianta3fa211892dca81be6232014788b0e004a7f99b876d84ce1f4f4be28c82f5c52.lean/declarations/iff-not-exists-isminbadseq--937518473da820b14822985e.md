# iff_not_exists_isMinBadSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e92c56b3bdbf3e5dea5b4bbb9ee92230d0fa75df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 824,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3fa211892dca81be6232014788b0e004a7f99b876d84ce1f4f4be28c82f5c52.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de07ac92-2373-3ce8-2a48-660dbd97ec7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f220fdbb-1637-306e-c2eb-198ffe6c7d9d",
  "kind": "theorem",
  "lexical_name": "iff_not_exists_isMinBadSeq",
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
  "slug": "iff-not-exists-isminbadseq--937518473da820b14822985e",
  "source": {
    "blob": "e92c56b3bdbf3e5dea5b4bbb9ee92230d0fa75df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 835,
    "line": 824,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta3fa211892dca81be6232014788b0e004a7f99b876d84ce1f4f4be28c82f5c52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:937518473da820b14822985e06c3283bf7412576df07abd1e739b2a98f10a1f0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta3fa211892dca81be6232014788b0e004a7f99b876d84ce1f4f4be28c82f5c52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f220fdbb-1637-306e-c2eb-198ffe6c7d9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 824–835.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iff_not_exists_isMinBadSeq (rk : α → ℕ) {s : Set α} :
    s.PartiallyWellOrderedOn r ↔ ¬∃ f, IsBadSeq r s f ∧ ∀ n, IsMinBadSeq r rk s n f := by
  rw [iff_forall_not_isBadSeq, ← not_exists, not_congr]
  constructor
  · apply exists_min_bad_of_exists_bad
  · rintro ⟨f, hf1, -⟩
    exact ⟨f, hf1⟩

/-- Higman's Lemma, which states that for any reflexive, transitive relation `r` which is
  partially well-ordered on a set `s`, the relation `List.SublistForall₂ r` is partially
  well-ordered on the set of lists of elements of `s`. That relation is defined so that
  `List.SublistForall₂ r l₁ l₂` whenever `l₁` related pointwise by `r` to a sublist of `l₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta3fa211892dca81be6232014788b0e004a7f99b876d84ce1f4f4be28c82f5c52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta3fa211892dca81be6232014788b0e004a7f99b876d84ce1f4f4be28c82f5c52.lean#L824).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e92c56b3bdbf3e5dea5b4bbb9ee92230d0fa75df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
