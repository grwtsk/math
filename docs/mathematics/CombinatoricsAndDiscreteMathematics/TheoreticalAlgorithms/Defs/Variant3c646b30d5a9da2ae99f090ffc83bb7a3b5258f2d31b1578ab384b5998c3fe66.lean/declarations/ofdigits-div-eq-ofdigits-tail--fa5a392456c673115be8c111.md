# ofDigits_div_eq_ofDigits_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36e7ca1f01147bc6f08a66af9d17670bda23ad5a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 434,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c646b30d5a9da2ae99f090ffc83bb7a3b5258f2d31b1578ab384b5998c3fe66.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:deda59fc-b871-a589-9d5d-a65a84613bee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07c92c50-a939-ff6d-6b54-a4a80fe32a0f",
  "kind": "lemma",
  "lexical_name": "ofDigits_div_eq_ofDigits_tail",
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
  "slug": "ofdigits-div-eq-ofdigits-tail--fa5a392456c673115be8c111",
  "source": {
    "blob": "36e7ca1f01147bc6f08a66af9d17670bda23ad5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 434,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant3c646b30d5a9da2ae99f090ffc83bb7a3b5258f2d31b1578ab384b5998c3fe66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa5a392456c673115be8c111810aba3e84900780981dcd3b53aedb10a1287042",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant3c646b30d5a9da2ae99f090ffc83bb7a3b5258f2d31b1578ab384b5998c3fe66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07c92c50-a939-ff6d-6b54-a4a80fe32a0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofDigits_div_eq_ofDigits_tail {p : ℕ} (hpos : 0 < p) (digits : List ℕ)
    (w₁ : ∀ l ∈ digits, l < p) : ofDigits p digits / p = ofDigits p digits.tail := by
  induction digits with
  | nil => simp [ofDigits]
  | cons hd tl =>
    refine Eq.trans (add_mul_div_left hd _ hpos) ?_
    rw [Nat.div_eq_of_lt <| w₁ _ List.mem_cons_self, zero_add, List.tail_cons]

/-- Interpreting as a base `p` number and dividing by `p^i` is the same as dropping `i`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant3c646b30d5a9da2ae99f090ffc83bb7a3b5258f2d31b1578ab384b5998c3fe66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant3c646b30d5a9da2ae99f090ffc83bb7a3b5258f2d31b1578ab384b5998c3fe66.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36e7ca1f01147bc6f08a66af9d17670bda23ad5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
