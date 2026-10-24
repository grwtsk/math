# IsAlternating.sup_edge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5c4092e9bc8efe4c61beb036b64f5e62ef437c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 577,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93bdb61196684a27cbedfea160786b99a916fe28ae929cfb2643852118b211c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51d029d6-6dd2-7af0-3533-786ad1433105",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9c30e03-8307-43e9-9ca2-bf54b4c1a11b",
  "kind": "lemma",
  "lexical_name": "IsAlternating.sup_edge",
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
  "slug": "isalternating-sup-edge--d83d6d91d9057712a48616e5",
  "source": {
    "blob": "e5c4092e9bc8efe4c61beb036b64f5e62ef437c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 598,
    "line": 577,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant93bdb61196684a27cbedfea160786b99a916fe28ae929cfb2643852118b211c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d83d6d91d9057712a48616e58e73f5e5ab29d47dbdbf8958f781bc9c659aa231",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant93bdb61196684a27cbedfea160786b99a916fe28ae929cfb2643852118b211c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9c30e03-8307-43e9-9ca2-bf54b4c1a11b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 577–598.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsAlternating.sup_edge {u x : V} (halt : G.IsAlternating G') (hnadj : ¬G'.Adj u x)
    (hu' : ∀ u', u' ≠ u → G.Adj x u' → G'.Adj x u')
    (hx' : ∀ x', x' ≠ x → G.Adj x' u → G'.Adj x' u) : (G ⊔ edge u x).IsAlternating G' := by
  by_cases hadj : G.Adj u x
  · rwa [sup_edge_of_adj G hadj]
  intro v w w' hww' hvw hvv'
  simp only [sup_adj, edge_adj] at hvw hvv'
  obtain hl | hr := hvw <;> obtain h1 | h2 := hvv'
  · exact halt hww' hl h1
  · rw [G'.adj_congr_of_sym2 (by grind : s(v, w') = s(u, x))]
    simp only [hnadj, not_false_eq_true, iff_true]
    rcases h2.1 with ⟨rfl, rfl⟩ | ⟨h2r1, h2r2⟩
    · exact (hx' _ hww' hl.symm).symm
    · simp_all
  · rw [G'.adj_congr_of_sym2 (by grind : s(v, w) = s(u, x))]
    simp only [hnadj, false_iff, not_not]
    rcases hr.1 with ⟨rfl, rfl⟩ | ⟨hrr1, hrr2⟩
    · exact (hx' _ hww'.symm h1.symm).symm
    · grind
  · grind

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant93bdb61196684a27cbedfea160786b99a916fe28ae929cfb2643852118b211c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant93bdb61196684a27cbedfea160786b99a916fe28ae929cfb2643852118b211c8.lean#L577).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5c4092e9bc8efe4c61beb036b64f5e62ef437c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
