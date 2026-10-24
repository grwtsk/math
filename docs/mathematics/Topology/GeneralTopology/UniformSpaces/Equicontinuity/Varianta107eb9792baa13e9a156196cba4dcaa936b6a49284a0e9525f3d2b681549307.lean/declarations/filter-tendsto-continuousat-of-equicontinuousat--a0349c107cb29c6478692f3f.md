# Filter.Tendsto.continuousAt_of_equicontinuousAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bfc5072-3cd7-7b83-7b0a-8062c8daa8b2",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.continuousAt_of_equicontinuousAt",
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
  "slug": "filter-tendsto-continuousat-of-equicontinuousat--a0349c107cb29c6478692f3f",
  "source": {
    "blob": "3f3918835fb618e49c2296de4d36990368218b98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 446,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Varianta107eb9792baa13e9a156196cba4dcaa936b6a49284a0e9525f3d2b681549307.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0349c107cb29c6478692f3f03a4915200b349a2258c9624e4b8c7fa8686c457",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Varianta107eb9792baa13e9a156196cba4dcaa936b6a49284a0e9525f3d2b681549307.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bfc5072-3cd7-7b83-7b0a-8062c8daa8b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.continuousAt_of_equicontinuousAt {l : Filter ι} [l.NeBot] {F : ι → X → α}
    {f : X → α} {x₀ : X} (h₁ : Tendsto F l (𝓝 f)) (h₂ : EquicontinuousAt F x₀) :
    ContinuousAt f x₀ :=
  (equicontinuousAt_iff_range.mp h₂).closure.continuousAt
    ⟨f, mem_closure_of_tendsto h₁ <| eventually_of_forall mem_range_self⟩
#align filter.tendsto.continuous_at_of_equicontinuous_at Filter.Tendsto.continuousAt_of_equicontinuousAt

/-- A version of `Equicontinuous.closure` applicable to subsets of types which embed continuously
into `X → α` with the product topology. It turns out we don't need any other condition on the
embedding than continuity, but in practice this will mostly be applied to `FunLike` types where
the coercion is injective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Varianta107eb9792baa13e9a156196cba4dcaa936b6a49284a0e9525f3d2b681549307.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Varianta107eb9792baa13e9a156196cba4dcaa936b6a49284a0e9525f3d2b681549307.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f3918835fb618e49c2296de4d36990368218b98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
