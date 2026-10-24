# mem_posTangentConeAt_of_segment_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc903f57-96b9-8a47-89b7-dabfe08608e8",
  "kind": "theorem",
  "lexical_name": "mem_posTangentConeAt_of_segment_subset",
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
  "slug": "mem-postangentconeat-of-segment-subset--9589610d2c17452982947ef4",
  "source": {
    "blob": "faab416bde2c48e592a7bb0234ebf6309147840e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 104,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantd358743659fd0c62f0bfb450ab395d23aced0db731acb6e2faef935dd70b58e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9589610d2c17452982947ef484e76db73df95ec7164ad3ce35ce9982375d506a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantd358743659fd0c62f0bfb450ab395d23aced0db731acb6e2faef935dd70b58e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc903f57-96b9-8a47-89b7-dabfe08608e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_posTangentConeAt_of_segment_subset (h : [x -[ℝ] x + y] ⊆ s) :
    y ∈ posTangentConeAt s x := by
  refine mem_posTangentConeAt_of_frequently_mem (Eventually.frequently ?_)
  rw [eventually_nhdsWithin_iff]
  filter_upwards [ge_mem_nhds one_pos] with t ht₁ ht₀
  apply h
  rw [segment_eq_image', add_sub_cancel_left]
  exact mem_image_of_mem _ ⟨le_of_lt ht₀, ht₁⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantd358743659fd0c62f0bfb450ab395d23aced0db731acb6e2faef935dd70b58e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantd358743659fd0c62f0bfb450ab395d23aced0db731acb6e2faef935dd70b58e4.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faab416bde2c48e592a7bb0234ebf6309147840e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
