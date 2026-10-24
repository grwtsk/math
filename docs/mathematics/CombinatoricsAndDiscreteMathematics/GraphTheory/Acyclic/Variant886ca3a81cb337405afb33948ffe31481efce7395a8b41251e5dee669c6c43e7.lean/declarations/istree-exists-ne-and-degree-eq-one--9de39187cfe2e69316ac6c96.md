# IsTree.exists_ne_and_degree_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a803b1ac3276ace8b346d0663ff9401e2940094",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 515,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/886ca3a81cb337405afb33948ffe31481efce7395a8b41251e5dee669c6c43e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6087cabd-0b99-81e0-bfd2-30bc9e810d44",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b927e1e4-7de4-bbe6-0084-cdf193fc68c9",
  "kind": "theorem",
  "lexical_name": "IsTree.exists_ne_and_degree_eq_one",
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
  "slug": "istree-exists-ne-and-degree-eq-one--9de39187cfe2e69316ac6c96",
  "source": {
    "blob": "9a803b1ac3276ace8b346d0663ff9401e2940094",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 532,
    "line": 515,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variant886ca3a81cb337405afb33948ffe31481efce7395a8b41251e5dee669c6c43e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9de39187cfe2e69316ac6c96cb78a190a0efa9129bf83edbe317ee14d4f449ea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variant886ca3a81cb337405afb33948ffe31481efce7395a8b41251e5dee669c6c43e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b927e1e4-7de4-bbe6-0084-cdf193fc68c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–532.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsTree.exists_ne_and_degree_eq_one [Nontrivial V] [Finite G.edgeSet] [G.LocallyFinite]
    (h : G.IsTree) : ∃ u v, u ≠ v ∧ G.degree u = 1 ∧ G.degree v = 1 := by
  have ⟨u, v, p, hp, hmax⟩ := exists_isPath_forall_isPath_length_le_length G
  have ⟨u', v', hne⟩ := exists_pair_ne V
  have ⟨p', hp'⟩ := h.connected.exists_isPath u' v'
  have hnil : ¬p.Nil := by grind
  refine ⟨u, v, hp.nil_iff_eq.not.mp hnil, ?_, ?_⟩ <;>
    rw [degree_eq_one_iff_existsUnique_adj]
  · refine ⟨_, p.adj_snd hnil, fun w hadj ↦ ?_⟩
    apply h.isAcyclic.eq_snd_of_adj_start hp hadj
    have : ¬(p.cons hadj.symm).IsPath := by grind [length_cons]
    grind [hp.cons]
  · refine ⟨_, p.adj_penultimate hnil |>.symm, fun w hadj ↦ ?_⟩
    apply h.isAcyclic.eq_penultimate_of_adj_end hp hadj
    have : ¬(p.concat hadj).IsPath := by grind [length_concat]
    grind [hp.concat]

/-- The graph resulting from removing a vertex of degree one from a connected graph is connected. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variant886ca3a81cb337405afb33948ffe31481efce7395a8b41251e5dee669c6c43e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variant886ca3a81cb337405afb33948ffe31481efce7395a8b41251e5dee669c6c43e7.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a803b1ac3276ace8b346d0663ff9401e2940094` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
