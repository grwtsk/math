# hausdorffDist_optimal_le_HD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14e492cd-dd30-8503-14ed-096f2c460a0e",
  "kind": "theorem",
  "lexical_name": "hausdorffDist_optimal_le_HD",
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
  "slug": "hausdorffdist-optimal-le-hd--42f9380a60e5c7246feb285e",
  "source": {
    "blob": "82db927467f984768136129aec9fe25b31eb2a38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 538,
    "line": 504,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42f9380a60e5c7246feb285e4ee4d208436c99109ff314c6579fd1d329246ab5",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14e492cd-dd30-8503-14ed-096f2c460a0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–538.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hausdorffDist_optimal_le_HD {f} (h : f ∈ candidatesB X Y) :
    hausdorffDist (range (optimalGHInjl X Y)) (range (optimalGHInjr X Y)) ≤ HD f := by
  refine' le_trans (le_of_forall_le_of_dense fun r hr => _) (HD_optimalGHDist_le X Y f h)
  have A : ∀ x ∈ range (optimalGHInjl X Y), ∃ y ∈ range (optimalGHInjr X Y), dist x y ≤ r := by
    rintro _ ⟨z, rfl⟩
    have I1 : (⨆ x, ⨅ y, optimalGHDist X Y (inl x, inr y)) < r :=
      lt_of_le_of_lt (le_max_left _ _) hr
    have I2 :
        ⨅ y, optimalGHDist X Y (inl z, inr y) ≤ ⨆ x, ⨅ y, optimalGHDist X Y (inl x, inr y) :=
      le_csSup (by simpa using HD_bound_aux1 _ 0) (mem_range_self _)
    have I : ⨅ y, optimalGHDist X Y (inl z, inr y) < r := lt_of_le_of_lt I2 I1
    rcases exists_lt_of_csInf_lt (range_nonempty _) I with ⟨r', ⟨z', rfl⟩, hr'⟩
    exact ⟨optimalGHInjr X Y z', mem_range_self _, le_of_lt hr'⟩
  refine' hausdorffDist_le_of_mem_dist _ A _
  · inhabit X
    rcases A _ (mem_range_self default) with ⟨y, -, hy⟩
    exact le_trans dist_nonneg hy
  · rintro _ ⟨z, rfl⟩
    have I1 : (⨆ y, ⨅ x, optimalGHDist X Y (inl x, inr y)) < r :=
      lt_of_le_of_lt (le_max_right _ _) hr
    have I2 :
        ⨅ x, optimalGHDist X Y (inl x, inr z) ≤ ⨆ y, ⨅ x, optimalGHDist X Y (inl x, inr y) :=
      le_csSup (by simpa using HD_bound_aux2 _ 0) (mem_range_self _)
    have I : ⨅ x, optimalGHDist X Y (inl x, inr z) < r := lt_of_le_of_lt I2 I1
    rcases exists_lt_of_csInf_lt (range_nonempty _) I with ⟨r', ⟨z', rfl⟩, hr'⟩
    refine' ⟨optimalGHInjl X Y z', mem_range_self _, le_of_lt _⟩
    rwa [dist_comm]
#align Gromov_Hausdorff.Hausdorff_dist_optimal_le_HD GromovHausdorff.hausdorffDist_optimal_le_HD

end Consequences

-- We are done with the construction of the optimal coupling
end GromovHausdorffRealized

end GromovHausdorff
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82db927467f984768136129aec9fe25b31eb2a38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
