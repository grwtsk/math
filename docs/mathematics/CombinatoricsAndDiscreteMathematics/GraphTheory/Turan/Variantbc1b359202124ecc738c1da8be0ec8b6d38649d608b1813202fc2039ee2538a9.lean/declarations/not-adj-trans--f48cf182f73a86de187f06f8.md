# not_adj_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff42de11d5bc83a29b72c85401a351e15fd390a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aedd7b10-d0dd-659a-3c3c-c67d36d6c356",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12d5f244-673f-d631-0749-112a3c93a861",
  "kind": "lemma",
  "lexical_name": "not_adj_trans",
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
  "slug": "not-adj-trans--f48cf182f73a86de187f06f8",
  "source": {
    "blob": "ff42de11d5bc83a29b72c85401a351e15fd390a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 128,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f48cf182f73a86de187f06f82a563bf89d1d36a720cf11a7752507e721e911ac",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12d5f244-673f-d631-0749-112a3c93a861`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_adj_trans (h : G.IsTuranMaximal r) (hts : ¬G.Adj t s) (hsu : ¬G.Adj s u) :
    ¬G.Adj t u := by
  have hst : ¬G.Adj s t := fun a ↦ hts a.symm
  have dst := h.degree_eq_of_not_adj hst
  have dsu := h.degree_eq_of_not_adj hsu
  rw [IsTuranMaximal, IsExtremal] at h; contrapose! h; intro cf
  classical
  use (G.replaceVertex s t).replaceVertex s u, inferInstance,
    (cf.replaceVertex s t).replaceVertex s u
  have nst : s ≠ t := fun a ↦ hsu (a ▸ h)
  have ntu : t ≠ u := G.ne_of_adj h
  have := (G.adj_replaceVertex_iff_of_ne s nst ntu.symm).not.mpr hsu
  rw [card_edgeFinset_replaceVertex_of_not_adj _ this,
    card_edgeFinset_replaceVertex_of_not_adj _ hst, dst, Nat.add_sub_cancel]
  have l1 : (G.replaceVertex s t).degree s = G.degree s := by
    unfold degree; congr 1; ext v
    simp_rw [mem_neighborFinset]
    by_cases eq : v = t
    · simpa only [eq, not_adj_replaceVertex_same, false_iff]
    · rw [G.adj_replaceVertex_iff_of_ne s nst eq]
  have l2 : (G.replaceVertex s t).degree u = G.degree u - 1 := by
    rw [degree, degree, ← card_singleton t, ← card_sdiff_of_subset (by simp [h.symm])]
    congr 1; ext v
    simp_rw [mem_neighborFinset, mem_sdiff, mem_singleton, replaceVertex]
    split_ifs <;> simp_all [adj_comm]
  have l3 : 0 < G.degree u := by rw [G.degree_pos_iff_exists_adj u]; use t, h.symm
  lia

variable (h : G.IsTuranMaximal r)
include h

/-- In a Turán-maximal graph, non-adjacency is an equivalence relation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff42de11d5bc83a29b72c85401a351e15fd390a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
