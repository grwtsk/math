# tendsto_one_sub_nhdsWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79e7afca-bca2-3a5f-63a4-62024468e14d",
  "kind": "lemma",
  "lexical_name": "tendsto_one_sub_nhdsWithin",
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
  "slug": "tendsto-one-sub-nhdswithin--a97ff8f64aa05614f4985399",
  "source": {
    "blob": "925679930916da474288c858474ee4c850cb760a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/Poles/Variante5e1fbf5e82bae6d6005879f01f8ddbea03ad9a0763b6fe21b04c9d79920902d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a97ff8f64aa05614f4985399067d60f7cbcda2286a618061bc1eb24d05afc211",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Poles/Variante5e1fbf5e82bae6d6005879f01f8ddbea03ad9a0763b6fe21b04c9d79920902d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79e7afca-bca2-3a5f-63a4-62024468e14d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_one_sub_nhdsWithin : Tendsto (fun s : ℂ => 1 - s) (𝓝[≠] 1) (𝓝[≠] 0) := by
  refine tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within _ ?_ ?_
  · have : Tendsto (fun s : ℂ => 1 - s) (𝓝 1) (𝓝 (1 - 1)) := (continuous_const.sub continuous_id).tendsto 1
    simpa using this.mono_left nhdsWithin_le_nhds
  · filter_upwards [self_mem_nhdsWithin] with s hs
    rw [mem_compl_singleton_iff] at hs ⊢
    exact sub_ne_zero.mpr (Ne.symm hs)

/-- logDeriv of an analytic nonvanishing function is continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Poles/Variante5e1fbf5e82bae6d6005879f01f8ddbea03ad9a0763b6fe21b04c9d79920902d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Poles/Variante5e1fbf5e82bae6d6005879f01f8ddbea03ad9a0763b6fe21b04c9d79920902d.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `925679930916da474288c858474ee4c850cb760a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
