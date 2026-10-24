# interior_extend_target_subset_interior_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2862ae2f-fe79-5d53-c031-f42e6c577336",
  "kind": "lemma",
  "lexical_name": "interior_extend_target_subset_interior_range",
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
  "slug": "interior-extend-target-subset-interior-range--fd7971118ae772c640176d81",
  "source": {
    "blob": "6b337d328242f336eeab7d7242366ff906bfecda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 177,
    "path": "GRWTSK/Topology/GeneralTopology/ExtChartAt/Variant6cc78a4df72bad2bca7ad49abd2389b8db46b7930c0df69070dad1c6b39a1820.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd7971118ae772c640176d811dadb00d9e2dc2ade0682e3ab207998424cc666f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtChartAt/Variant6cc78a4df72bad2bca7ad49abd2389b8db46b7930c0df69070dad1c6b39a1820.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2862ae2f-fe79-5d53-c031-f42e6c577336`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma interior_extend_target_subset_interior_range :
    interior (f.extend I).target ⊆ interior (range I) := by
  rw [f.extend_target, interior_inter, (f.open_target.preimage I.continuous_symm).interior_eq]
  exact inter_subset_right

/-- If `y ∈ f.target` and `I y ∈ interior (range I)`,
then `I y` is an interior point of `(I ∘ f).target`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtChartAt/Variant6cc78a4df72bad2bca7ad49abd2389b8db46b7930c0df69070dad1c6b39a1820.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtChartAt/Variant6cc78a4df72bad2bca7ad49abd2389b8db46b7930c0df69070dad1c6b39a1820.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b337d328242f336eeab7d7242366ff906bfecda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
