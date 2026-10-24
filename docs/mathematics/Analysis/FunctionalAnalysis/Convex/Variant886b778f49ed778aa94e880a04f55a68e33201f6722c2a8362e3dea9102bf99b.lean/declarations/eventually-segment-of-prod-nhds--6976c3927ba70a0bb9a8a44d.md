# Eventually.segment_of_prod_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:017c04ca-bb42-9a6e-7059-9fea0abe2283",
  "kind": "theorem",
  "lexical_name": "Eventually.segment_of_prod_nhds",
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
  "slug": "eventually-segment-of-prod-nhds--6976c3927ba70a0bb9a8a44d",
  "source": {
    "blob": "d117987a83e30aaabe8d0c32a0e4ba5ceaebc9e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 220,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6976c3927ba70a0bb9a8a44d46a80c5872b8c0b0f3fa31d856e2e7ee79841871",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:017c04ca-bb42-9a6e-7059-9fea0abe2283`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Eventually.segment_of_prod_nhds (hy : Tendsto y f (𝓝 x)) (hz : Tendsto z f (𝓝 x))
    (hr : ∀ᶠ p in f ×ˢ 𝓝 x, r p.1 p.2) : ∀ᶠ χ in f, ∀ v ∈ [y χ -[ℝ] z χ], r χ v := by
  obtain ⟨p, hp, δ, hδ, hr⟩ := eventually_prod_nhds_iff.mp hr
  rw [Metric.tendsto_nhds] at hy hz
  filter_upwards [hp, hy δ hδ, hz δ hδ] with χ hp hy hz
  exact fun v hv => hr hp <| convex_iff_segment_subset.mp (convex_ball x δ) hy hz hv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d117987a83e30aaabe8d0c32a0e4ba5ceaebc9e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
