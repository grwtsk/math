# edist_boxProd

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
      "line": 267,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/399f628f943db202fa1811d70683521ae999f4ca19090edbef5f2e7c7eeecf7f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b39e4b5-f644-7430-7f39-6bccd9e6dc1c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:017daf8a-7f6b-29c9-d498-049f41308da9",
  "kind": "lemma",
  "lexical_name": "edist_boxProd",
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
  "slug": "edist-boxprod--0bba5424cba04db25068ff5a",
  "source": {
    "blob": "94fa64d5bf6331988376d9aa5989afdad983d065",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 267,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant399f628f943db202fa1811d70683521ae999f4ca19090edbef5f2e7c7eeecf7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bba5424cba04db25068ff5a435e715bee30dbe8e46fb7b565c5764462c1684b",
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

Occurrence: `result:017daf8a-7f6b-29c9-d498-049f41308da9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma edist_boxProd (x y : α × β) :
    (G □ H).edist x y = G.edist x.1 y.1 + H.edist x.2 y.2 := by
  classical
  -- The case `(G □ H).edist x y = ⊤` is used twice, so better to factor it out.
  have top_case : (G □ H).edist x y = ⊤ ↔ G.edist x.1 y.1 = ⊤ ∨ H.edist x.2 y.2 = ⊤ := by
    simp_rw [← not_ne_iff, edist_ne_top_iff_reachable, reachable_boxProd, not_and_or]
  by_cases h : (G □ H).edist x y = ⊤
  · rw [top_case] at h
    aesop
  · have rGH : G.edist x.1 y.1 ≠ ⊤ ∧ H.edist x.2 y.2 ≠ ⊤ := by rw [top_case] at h; aesop
    have ⟨wG, hwG⟩ := exists_walk_of_edist_ne_top rGH.1
    have ⟨wH, hwH⟩ := exists_walk_of_edist_ne_top rGH.2
    let w_app := (wG.boxProdLeft _ _).append (wH.boxProdRight _ _)
    have w_len : w_app.length = wG.length + wH.length := by
      unfold w_app Walk.boxProdLeft Walk.boxProdRight; simp
    refine le_antisymm ?_ ?_
    · calc (G □ H).edist x y ≤ w_app.length := by exact edist_le _
          _ = wG.length + wH.length := by exact_mod_cast w_len
          _ = G.edist x.1 y.1 + H.edist x.2 y.2 := by simp only [hwG, hwH]
    · have ⟨w, hw⟩ := exists_walk_of_edist_ne_top h
      rw [← hw, Walk.length_boxProd]
      exact add_le_add (edist_le w.ofBoxProdLeft) (edist_le w.ofBoxProdRight)

end SimpleGraph
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant399f628f943db202fa1811d70683521ae999f4ca19090edbef5f2e7c7eeecf7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant399f628f943db202fa1811d70683521ae999f4ca19090edbef5f2e7c7eeecf7f.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94fa64d5bf6331988376d9aa5989afdad983d065` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
