# tendsto_nhdsSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33b86f63-05ca-fbbd-269f-704ebdfc4b72",
  "kind": "theorem",
  "lexical_name": "tendsto_nhdsSet",
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
  "slug": "tendsto-nhdsset--e6e4a52e1ddeb89b4f5a53f2",
  "source": {
    "blob": "171028dd690792c08d89df66361b5edfaba72194",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 674,
    "line": 669,
    "path": "GRWTSK/Topology/MetricTopology/Thickening/Variant2dff1763f1f7c9ed4134069f0a2e96428bcc66e5651f23cd542aea2a268e9931.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6e4a52e1ddeb89b4f5a53f2d7d8f7ea5d072bf54a72b2f4e7e8118ee5808285",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Thickening/Variant2dff1763f1f7c9ed4134069f0a2e96428bcc66e5651f23cd542aea2a268e9931.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33b86f63-05ca-fbbd-269f-704ebdfc4b72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 669–674.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_nhdsSet {f : β → α} (hs₁ : IsCompact s) (hs₂ : Set.Nonempty s) :
    Tendsto f l (𝓝ˢ s) ↔ ∀ ε > 0, ∀ᶠ x in l, infDist (f x) s < ε := by
  rw [(hasBasis_nhdsSet_thickening hs₁).tendsto_right_iff]
  congrm (∀ ε hε, ?_)
  simp [mem_thickening_iff_infDist_lt hs₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Thickening/Variant2dff1763f1f7c9ed4134069f0a2e96428bcc66e5651f23cd542aea2a268e9931.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Thickening/Variant2dff1763f1f7c9ed4134069f0a2e96428bcc66e5651f23cd542aea2a268e9931.lean#L669).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `171028dd690792c08d89df66361b5edfaba72194` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
