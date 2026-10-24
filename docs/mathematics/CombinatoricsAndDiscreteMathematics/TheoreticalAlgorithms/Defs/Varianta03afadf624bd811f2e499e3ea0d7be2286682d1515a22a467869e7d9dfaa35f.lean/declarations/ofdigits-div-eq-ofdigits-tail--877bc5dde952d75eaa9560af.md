# ofDigits_div_eq_ofDigits_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0130ba4-1ba8-da46-416c-ec28e3535893",
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
  "slug": "ofdigits-div-eq-ofdigits-tail--877bc5dde952d75eaa9560af",
  "source": {
    "blob": "3c5b33db31d59ca0b3a926e4bdfe974ba8a21ba4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 442,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianta03afadf624bd811f2e499e3ea0d7be2286682d1515a22a467869e7d9dfaa35f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:877bc5dde952d75eaa9560af647ea82f8c5a5571bb66d962cee205e8130044b2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianta03afadf624bd811f2e499e3ea0d7be2286682d1515a22a467869e7d9dfaa35f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0130ba4-1ba8-da46-416c-ec28e3535893`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–451.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianta03afadf624bd811f2e499e3ea0d7be2286682d1515a22a467869e7d9dfaa35f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianta03afadf624bd811f2e499e3ea0d7be2286682d1515a22a467869e7d9dfaa35f.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c5b33db31d59ca0b3a926e4bdfe974ba8a21ba4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
