# iUnion_finset_leftRel_eq_univ_of_leftRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ef8107a8cbaa3d9186ecbd0d8e599a183911249",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:974f5deb-4c9c-4f5e-7c9a-c019423702af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b4f4884b-a1c7-e372-3124-e4eb1d9ecdfd",
  "kind": "lemma",
  "lexical_name": "iUnion_finset_leftRel_eq_univ_of_leftRel",
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
  "slug": "iunion-finset-leftrel-eq-univ-of-leftrel--97b8e12ad295ea055f7b2e74",
  "source": {
    "blob": "9ef8107a8cbaa3d9186ecbd0d8e599a183911249",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 253,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97b8e12ad295ea055f7b2e748ea54fdaaa22341e3cc1003595451fd6978a43dc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4f4884b-a1c7-e372-3124-e4eb1d9ecdfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iUnion_finset_leftRel_eq_univ_of_leftRel {H K : Subgroup G} {t : Finset (Quotient H K)}
    (ht : Set.univ ⊆ ⋃ i ∈ t, Quot.mk (leftRel K) '' doubleCoset (out i) H K) :
    ⋃ q ∈ t, doubleCoset (out q) H K = Set.univ := by
  contrapose ht
  simp only [Set.univ_subset_iff, ← ne_eq] at ⊢ ht
  obtain ⟨x, hx⟩ := (Set.ne_univ_iff_exists_notMem _).mp ht
  refine (Set.ne_univ_iff_exists_notMem _).mpr ⟨Quot.mk (leftRel K) x, ?_⟩
  simp only [Set.mem_iUnion, Set.mem_image, exists_prop, not_exists, not_and]
  intro y hy q hq
  contrapose hx
  simp only [Set.mem_iUnion, exists_prop]
  refine ⟨y, hy, ?_⟩
  rw [← doubleCoset_eq_of_mem hq, mem_doubleCoset]
  obtain ⟨a', ha'⟩ := Quotient.eq.mp hx
  exact ⟨1, one_mem H, MulOpposite.unop a'⁻¹, Subgroup.mem_op.mp (by simp), by simpa
    using (eq_mul_inv_of_mul_eq ha')⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef8107a8cbaa3d9186ecbd0d8e599a183911249` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
