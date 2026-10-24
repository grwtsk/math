# _root_.TopologicalSpace.IsSeparable.separableSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2f8353d94eebf5ecb72e3d5cd8667e8947e9c6b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 815,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fdcb4940-824c-9c65-e8aa-7479567f54c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73b091fa-7cc3-9530-dd6c-33b7c540a7ba",
  "kind": "theorem",
  "lexical_name": "_root_.TopologicalSpace.IsSeparable.separableSpace",
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
  "slug": "root-topologicalspace-isseparable-separablespace--fce42da4991a2070bdd5be5b",
  "source": {
    "blob": "d2f8353d94eebf5ecb72e3d5cd8667e8947e9c6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 830,
    "line": 815,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fce42da4991a2070bdd5be5b2b2bfa32320f096b177be065a32b5d5191db7eeb",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73b091fa-7cc3-9530-dd6c-33b7c540a7ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 815–830.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.TopologicalSpace.IsSeparable.separableSpace {s : Set α} (hs : IsSeparable s) :
    SeparableSpace s := by
  have : ∀ ε > 0, ∃ t : Set α, t.Countable ∧ s ⊆ ⋃ x ∈ t, closedBall x ε := fun ε ε0 => by
    rcases hs with ⟨t, htc, hst⟩
    refine ⟨t, htc, hst.trans fun x hx => ?_⟩
    rcases mem_closure_iff.1 hx ε ε0 with ⟨y, hyt, hxy⟩
    exact mem_iUnion₂.2 ⟨y, hyt, mem_closedBall.2 hxy.le⟩
  rcases subset_countable_closure_of_almost_dense_set _ this with ⟨t, hts, htc, hst⟩
  lift t to Set s using hts
  refine ⟨⟨t, countable_of_injective_of_countable_image (Subtype.coe_injective.injOn _) htc, ?_⟩⟩
  rwa [inducing_subtype_val.dense_iff, Subtype.forall]
#align topological_space.is_separable.separable_space TopologicalSpace.IsSeparable.separableSpace

-- porting note: todo: generalize to metrizable spaces
/-- A compact set in a pseudo emetric space is separable, i.e., it is a subset of the closure of a
countable set.  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean#L815).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2f8353d94eebf5ecb72e3d5cd8667e8947e9c6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
