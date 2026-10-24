# length_boxProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "94fa64d5bf6331988376d9aa5989afdad983d065",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/399f628f943db202fa1811d70683521ae999f4ca19090edbef5f2e7c7eeecf7f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52864bb8-d929-0597-32a3-bcf182157115",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:486c6ed1-0a27-3a17-44fa-7c6a7d549d52",
  "kind": "lemma",
  "lexical_name": "length_boxProd",
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
  "slug": "length-boxprod--73b4c002f1fbbbd7072e31ee",
  "source": {
    "blob": "94fa64d5bf6331988376d9aa5989afdad983d065",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 169,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant399f628f943db202fa1811d70683521ae999f4ca19090edbef5f2e7c7eeecf7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73b4c002f1fbbbd7072e31ee2549773a55b470ed4d8d9dc736b1a0ecca2bc0bc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant399f628f943db202fa1811d70683521ae999f4ca19090edbef5f2e7c7eeecf7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:486c6ed1-0a27-3a17-44fa-7c6a7d549d52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma length_boxProd {a₁ a₂ : α} {b₁ b₂ : β} [DecidableEq α] [DecidableEq β]
    [DecidableRel G.Adj] [DecidableRel H.Adj] (w : (G □ H).Walk (a₁, b₁) (a₂, b₂)) :
    w.length = w.ofBoxProdLeft.length + w.ofBoxProdRight.length := by
  match w with
  | .nil => simp [ofBoxProdLeft, ofBoxProdRight]
  | .cons x w' => next c =>
    unfold ofBoxProdLeft ofBoxProdRight
    rw [length_cons, length_boxProd w']
    have disj : (G.Adj a₁ c.1 ∧ b₁ = c.2) ∨ (H.Adj b₁ c.2 ∧ a₁ = c.1) := by simp_all
    rcases disj with h₁ | h₂
    · simp only [h₁, and_self, ↓reduceDIte, length_cons, Or.by_cases]
      rw [add_comm, add_comm w'.ofBoxProdLeft.length 1, add_assoc]
      congr <;> simp [h₁.2.symm]
    · simp only [h₂, add_assoc, Or.by_cases]
      congr <;> simp [h₂.2.symm]

end Walk

variable {G H}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant399f628f943db202fa1811d70683521ae999f4ca19090edbef5f2e7c7eeecf7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant399f628f943db202fa1811d70683521ae999f4ca19090edbef5f2e7c7eeecf7f.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94fa64d5bf6331988376d9aa5989afdad983d065` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
