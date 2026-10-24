# Pi.locallyConnectedSpace_of_finite_not_preconnectedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c905fa93-6f21-edb5-7c7d-9733e89ea662",
  "kind": "theorem",
  "lexical_name": "Pi.locallyConnectedSpace_of_finite_not_preconnectedSpace",
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
  "slug": "pi-locallyconnectedspace-of-finite-not-preconnectedspace--488d17136ce4a2d385e5f617",
  "source": {
    "blob": "a3aa777c0ad45710068f358fd6b6906337d28efc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 193,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:488d17136ce4a2d385e5f6173740d3f89294414af2f17dc46d64528efc84df74",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c905fa93-6f21-edb5-7c7d-9733e89ea662`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pi.locallyConnectedSpace_of_finite_not_preconnectedSpace [∀ i, TopologicalSpace (X i)]
    [∀ i, LocallyConnectedSpace (X i)] (hfinite : {i | ¬PreconnectedSpace (X i)}.Finite) :
    LocallyConnectedSpace (∀ i, X i) := by
  refine locallyConnectedSpace_iff_connected_subsets.2 fun x U hU ↦ ?_
  rw [nhds_pi, Filter.mem_pi] at hU
  obtain ⟨J, hJ, t, ht, htU⟩ := hU
  let K := J ∪ {i | ¬PreconnectedSpace (X i)}
  refine ⟨K.pi fun i ↦ connectedComponentIn (t i) (x i),
    set_pi_mem_nhds (hJ.union hfinite) fun i _ ↦ connectedComponentIn_mem_nhds (ht i), ?_,
    fun f hf ↦ htU fun i hiJ ↦ connectedComponentIn_subset _ _ (hf i (mem_union_left _ hiJ))⟩
  classical
  rw [← univ_pi_piecewise_univ]
  refine isPreconnected_univ_pi fun i ↦ ?_
  by_cases hi : i ∈ K
  · rw [piecewise_eq_of_mem _ _ _ hi]
    exact isPreconnected_connectedComponentIn
  · rw [piecewise_eq_of_notMem _ _ _ hi]
    have : PreconnectedSpace (X i) := not_not.mp (not_or.1 hi).2
    exact isPreconnected_univ

/-- A finite product of locally connected spaces is locally connected. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyConnected/Variant26532bdd3d30e4b27c117a7e304350a457f5e73653c9db143af022586823473e.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3aa777c0ad45710068f358fd6b6906337d28efc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
