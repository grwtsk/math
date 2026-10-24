# measurable_memPartitionSet_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "23a6b95dd6907324bdd96381c8abd4fc1b1329e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dcaf7713-3d51-c510-e8bc-4b380852ff92",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75076800-6b14-b739-91ff-d8c39b175daf",
  "kind": "lemma",
  "lexical_name": "measurable_memPartitionSet_subtype",
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
  "slug": "measurable-mempartitionset-subtype--48e89d9fd05b0f67827451ef",
  "source": {
    "blob": "23a6b95dd6907324bdd96381c8abd4fc1b1329e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 64,
    "path": "GRWTSK/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48e89d9fd05b0f67827451eff479b8ba742c365d633cdc54c0326285e1639c81",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75076800-6b14-b739-91ff-d8c39b175daf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurable_memPartitionSet_subtype (ht : ∀ n, MeasurableSet (t n)) (n : ℕ)
    (m : MeasurableSpace (memPartition t n)) :
    @Measurable α (memPartition t n) (partitionFiltration ht n) m
      (fun a ↦ ⟨memPartitionSet t n a, memPartitionSet_mem t n a⟩) := by
  refine @measurable_to_countable' (memPartition t n) α m _
    (partitionFiltration ht n) _ (fun s ↦ ?_)
  rcases s with ⟨s, hs⟩
  suffices MeasurableSet[partitionFiltration ht n] {x | memPartitionSet t n x = s} by
    convert this
    ext x
    simp
  simp_rw [memPartitionSet_eq_iff _ hs]
  exact measurableSet_partitionFiltration_of_mem _ _ hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23a6b95dd6907324bdd96381c8abd4fc1b1329e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
