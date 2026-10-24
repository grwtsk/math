# pairwiseDisjoint_biUnion_disjointOfUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3480ce11efd6ffc1f547c69d9371d1eae2584a11",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 433,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b8649b17b58d7f024da33551bdf924ceead2b2642c499bf9ed50090d20d4d7c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f11d189-d459-067b-8dd9-8470ae653579",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c60ffd1a-8eae-bb98-2850-eca43d178409",
  "kind": "lemma",
  "lexical_name": "pairwiseDisjoint_biUnion_disjointOfUnion",
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
  "slug": "pairwisedisjoint-biunion-disjointofunion--3aabe675f8c3e6fbd0afbbef",
  "source": {
    "blob": "3480ce11efd6ffc1f547c69d9371d1eae2584a11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 433,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SetSemiring/Variant1b8649b17b58d7f024da33551bdf924ceead2b2642c499bf9ed50090d20d4d7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3aabe675f8c3e6fbd0afbbef4717c5afb221e0cc4a09c58e0be942f5034fabf5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SetSemiring/Variant1b8649b17b58d7f024da33551bdf924ceead2b2642c499bf9ed50090d20d4d7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c60ffd1a-8eae-bb98-2850-eca43d178409`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pairwiseDisjoint_biUnion_disjointOfUnion (hC : IsSetSemiring C) (hJ : ↑J ⊆ C) :
    PairwiseDisjoint (⋃ x ∈ J, (hC.disjointOfUnion hJ x : Set (Set α))) id := by
  simp_rw [← SetLike.mem_coe]
  refine Set.PairwiseDisjoint.biUnion
    (Pairwise.set_of_subtype _ _ ?_)
    (fun _ ↦ hC.pairwiseDisjoint_disjointOfUnion_of_mem hJ)
  simp_rw [Function.onFun, disjointOfUnion_coe, SetLike.mem_coe, ← Finset.sup_eq_iSup,
    Finpartition.sup_parts]
  exact (disjoint_disjointed _).comp_of_injective J.equivFin.injective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SetSemiring/Variant1b8649b17b58d7f024da33551bdf924ceead2b2642c499bf9ed50090d20d4d7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SetSemiring/Variant1b8649b17b58d7f024da33551bdf924ceead2b2642c499bf9ed50090d20d4d7c.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3480ce11efd6ffc1f547c69d9371d1eae2584a11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
