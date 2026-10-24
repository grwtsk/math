# Dense.biUnion_uniformity_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d31048df-e46d-a493-7247-06b81805adc7",
  "kind": "theorem",
  "lexical_name": "Dense.biUnion_uniformity_ball",
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
  "slug": "dense-biunion-uniformity-ball--5470c3c2b57cdbc8041522ba",
  "source": {
    "blob": "24e49871f060d354d1fb66058d9e35e6fcce9a4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 283,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant78f5eca7efafec2a27528dc8dfd2bf7c2eef1a1e1bc9633c4506d72ddb7d9cd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5470c3c2b57cdbc8041522ba4f3464dbf37b0913fac5255835a1d4a3ccc1dbca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant78f5eca7efafec2a27528dc8dfd2bf7c2eef1a1e1bc9633c4506d72ddb7d9cd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d31048df-e46d-a493-7247-06b81805adc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Dense.biUnion_uniformity_ball {s : Set α} {U : SetRel α α} (hs : Dense s) (hU : U ∈ 𝓤 α) :
    ⋃ x ∈ s, ball x U = univ := by
  refine iUnion₂_eq_univ_iff.2 fun y => ?_
  rcases hs.inter_nhds_nonempty (mem_nhds_right y hU) with ⟨x, hxs, hxy : (x, y) ∈ U⟩
  exact ⟨x, hxs, hxy⟩

/-- The uniform neighborhoods of all points of a dense indexed collection cover the whole space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant78f5eca7efafec2a27528dc8dfd2bf7c2eef1a1e1bc9633c4506d72ddb7d9cd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant78f5eca7efafec2a27528dc8dfd2bf7c2eef1a1e1bc9633c4506d72ddb7d9cd4.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24e49871f060d354d1fb66058d9e35e6fcce9a4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
