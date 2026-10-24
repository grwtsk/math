# exists_finite_sum_const_mulIndicator_approximation_of_mem_nhds_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe08aaa7796168c241ab5a2a7dfe6646fb020762",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a7adab25ba8830a6f98a76ea1eb27c011d12d8ff48b10c4c0430b231a6aa5223.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a2f2b3c-3c43-13ca-6448-91cdc9627a1e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f4d02eb-eaa4-99f7-5479-d5836714b5d9",
  "kind": "lemma",
  "lexical_name": "exists_finite_sum_const_mulIndicator_approximation_of_mem_nhds_diagonal",
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
  "slug": "exists-finite-sum-const-mulindicator-approximation-of-mem-nhds-diagonal--f919da617bf19085e0644499",
  "source": {
    "blob": "fe08aaa7796168c241ab5a2a7dfe6646fb020762",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 163,
    "path": "GRWTSK/Topology/GeneralTopology/DisjointCover/Varianta7adab25ba8830a6f98a76ea1eb27c011d12d8ff48b10c4c0430b231a6aa5223.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f919da617bf19085e06444993dd4be19e72dc470617bba89b6d282b28f3f0a17",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DisjointCover/Varianta7adab25ba8830a6f98a76ea1eb27c011d12d8ff48b10c4c0430b231a6aa5223.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f4d02eb-eaa4-99f7-5479-d5836714b5d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_finite_sum_const_mulIndicator_approximation_of_mem_nhds_diagonal [CommMonoid V]
    (hS : S ∈ nhdsSet (diagonal V)) :
    ∃ (n : ℕ) (U : Fin n → Clopens X) (v : Fin n → V),
    ∀ x, (f x, ∏ n, mulIndicator (U n) (fun _ ↦ v n) x) ∈ S := by
  obtain ⟨n, g, h, hg, hgh⟩ := exists_finite_approximation_of_mem_nhds_diagonal f hS
  refine ⟨n, fun i ↦ ⟨_, (isClopen_discrete {i}).preimage hg⟩, h, fun x ↦ ?_⟩
  convert hgh x
  exact (Fintype.prod_eq_single _ fun i hi ↦ mulIndicator_of_notMem hi.symm _).trans
    (mulIndicator_of_mem rfl _)

end ContinuousMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DisjointCover/Varianta7adab25ba8830a6f98a76ea1eb27c011d12d8ff48b10c4c0430b231a6aa5223.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DisjointCover/Varianta7adab25ba8830a6f98a76ea1eb27c011d12d8ff48b10c4c0430b231a6aa5223.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe08aaa7796168c241ab5a2a7dfe6646fb020762` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
