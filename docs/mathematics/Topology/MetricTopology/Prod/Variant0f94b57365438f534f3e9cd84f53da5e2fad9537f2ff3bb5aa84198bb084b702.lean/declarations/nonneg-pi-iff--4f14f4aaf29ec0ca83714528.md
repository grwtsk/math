# nonneg_pi_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "079ab8787526947723b72f417daf569188f7b77c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 316,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67f1fd85-4eb6-36e5-5f72-744f276f9873",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a426ddc2-c54a-e498-cb92-cb44735f5bd7",
  "kind": "theorem",
  "lexical_name": "nonneg_pi_iff",
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
  "slug": "nonneg-pi-iff--4f14f4aaf29ec0ca83714528",
  "source": {
    "blob": "079ab8787526947723b72f417daf569188f7b77c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 316,
    "path": "GRWTSK/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f14f4aaf29ec0ca837145284340c9ac297742133cad4b1cb84ae9c4d120adc5",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a426ddc2-c54a-e498-cb92-cb44735f5bd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonneg_pi_iff {P} [Fintype ι] [AddCommMonoid P] [PartialOrder P] [IsOrderedAddMonoid P]
    [Module R P]
    {Q : ∀ i, QuadraticMap R (Mᵢ i) P} : (∀ x, 0 ≤ pi Q x) ↔ ∀ i x, 0 ≤ Q i x := by
  simp_rw [pi, sum_apply, comp_apply, LinearMap.proj_apply]
  constructor
  -- TODO: does this generalize to a useful lemma independent of `QuadraticMap`?
  · intro h i x
    classical
    convert h (Pi.single i x) using 1
    rw [Finset.sum_eq_single_of_mem i (Finset.mem_univ _) fun j _ hji => ?_, Pi.single_eq_same]
    rw [Pi.single_eq_of_ne hji, map_zero]
  · rintro h x
    exact Finset.sum_nonneg fun i _ => h i (x i)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `079ab8787526947723b72f417daf569188f7b77c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
