# isEverywherePos_everywherePosSubset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:471b2bf7-8a52-84b0-359d-339556e37fe1",
  "kind": "lemma",
  "lexical_name": "isEverywherePos_everywherePosSubset",
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
  "slug": "iseverywherepos-everywherepossubset--b9b29ec4768460f6a9cc11bd",
  "source": {
    "blob": "9803a5400a6aeb655a6bb7b5807be18f4b5253f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 150,
    "path": "GRWTSK/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9b29ec4768460f6a9cc11bd5a81b7173318845e2511c3c55f101e17c722ad8b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:471b2bf7-8a52-84b0-359d-339556e37fe1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isEverywherePos_everywherePosSubset
    [OpensMeasurableSpace α] [InnerRegular μ] (hs : MeasurableSet s) :
    μ.IsEverywherePos (μ.everywherePosSubset s) := by
  intro x hx n hn
  rcases mem_nhdsWithin_iff_exists_mem_nhds_inter.1 hn with ⟨u, u_mem, hu⟩
  have A : 0 < μ (u ∩ s) := by
    have : u ∩ s ∈ 𝓝[s] x := by rw [inter_comm]; exact inter_mem_nhdsWithin s u_mem
    exact hx.2 _ this
  have B : u ∩ μ.everywherePosSubset s =ᵐ[μ] u ∩ s :=
    .inter .rfl (everywherePosSubset_ae_eq hs)
  rw [← B.measure_eq] at A
  exact A.trans_le (measure_mono hu)

/-- In a space with an inner regular measure for finite measure sets, the everywhere positive subset
of a measurable set of finite measure is itself everywhere positive. This is not obvious as
`μ.everywherePosSubset s` is defined as the points whose neighborhoods intersect `s` along positive
measure subsets, but this does not say they also intersect `μ.everywherePosSubset s` along positive
measure subsets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9803a5400a6aeb655a6bb7b5807be18f4b5253f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
