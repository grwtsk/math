# LocallyLinear.card_edgeFinset

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
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4904729c-50f6-b064-7ad7-c06cebc71427",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a48efb5b-7241-7a53-b5e5-f9caa0a2e9df",
  "kind": "lemma",
  "lexical_name": "LocallyLinear.card_edgeFinset",
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
  "slug": "locallylinear-card-edgefinset--5a802b9329645fc510d23e7f",
  "source": {
    "blob": "d775f9d3678b8c8d576b5faa110e125ae9cccdb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 156,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a802b9329645fc510d23e7f9f5093f1e330a1a9a43746770173a4bccfebd48e",
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

Occurrence: `result:a48efb5b-7241-7a53-b5e5-f9caa0a2e9df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LocallyLinear.card_edgeFinset (hG : G.LocallyLinear) :
    #G.edgeFinset = 3 * #(G.cliqueFinset 3) := by
  refine hG.edgeDisjointTriangles.card_edgeFinset_le.antisymm' ?_
  rw [← mul_comm, ← mul_one #_]
  refine card_mul_le_card_mul (fun e s ↦ e ∈ s.sym2) ?_ ?_
  · simpa [Sym2.forall, Nat.one_le_iff_ne_zero, -Finset.card_eq_zero, Finset.card_ne_zero,
        Finset.Nonempty]
      using hG.2
  simp only [mem_cliqueFinset_iff, is3Clique_iff, forall_exists_index, and_imp]
  rintro _ a b c hab hac hbc rfl
  calc
    _ ≤ #{s(a, b), s(a, c), s(b, c)} := card_le_card ?_
    _ ≤ 3 := (card_insert_le _ _).trans (succ_le_succ <| (card_insert_le _ _).trans_eq <| by
      rw [card_singleton])
  simp only [subset_iff, Sym2.forall, mem_sym2_iff, le_eq_subset, mem_bipartiteBelow, mem_insert,
    mem_edgeFinset, mem_singleton, and_imp, mem_edgeSet, Sym2.mem_iff, forall_eq_or_imp,
    forall_eq, Quotient.eq, Sym2.rel_iff]
  rintro d e hde (rfl | rfl | rfl) (rfl | rfl | rfl) <;> simp [*] at *

end LocallyLinear

variable (G ε)
variable [Fintype α] [DecidableRel G.Adj] [DecidableRel H.Adj]

/-- A simple graph is *`ε`-far from triangle-free* if one must remove at least
`ε * (card α) ^ 2` edges to make it triangle-free. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d775f9d3678b8c8d576b5faa110e125ae9cccdb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
