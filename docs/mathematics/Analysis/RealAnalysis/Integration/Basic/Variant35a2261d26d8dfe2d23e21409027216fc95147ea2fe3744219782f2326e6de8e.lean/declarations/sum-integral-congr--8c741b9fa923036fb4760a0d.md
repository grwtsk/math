# sum_integral_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d6091b8a7da0397a7e4e9c6d3d15c3ca2a85990",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 608,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35a2261d26d8dfe2d23e21409027216fc95147ea2fe3744219782f2326e6de8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22cac8b0-4206-1a47-b354-4c8dab93d2cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1cbb7110-8bff-328e-3721-8ecbfe8c2c17",
  "kind": "theorem",
  "lexical_name": "sum_integral_congr",
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
  "slug": "sum-integral-congr--8c741b9fa923036fb4760a0d",
  "source": {
    "blob": "8d6091b8a7da0397a7e4e9c6d3d15c3ca2a85990",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 620,
    "line": 608,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant35a2261d26d8dfe2d23e21409027216fc95147ea2fe3744219782f2326e6de8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c741b9fa923036fb4760a0d2c6da31e7a19bf4c294527ffa4b3d3b28a3f78d9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant35a2261d26d8dfe2d23e21409027216fc95147ea2fe3744219782f2326e6de8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cbb7110-8bff-328e-3721-8ecbfe8c2c17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 608–620.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_integral_congr (h : Integrable I l f vol) {π₁ π₂ : Prepartition I}
    (hU : π₁.iUnion = π₂.iUnion) :
    ∑ J ∈ π₁.boxes, integral J l f vol = ∑ J ∈ π₂.boxes, integral J l f vol := by
  refine tendsto_nhds_unique (h.tendsto_integralSum_sum_integral π₁) ?_
  rw [l.toFilteriUnion_congr _ hU]
  exact h.tendsto_integralSum_sum_integral π₂

/-- If `f` is integrable on `I`, then `fun J ↦ integral J l f vol` is box-additive on subboxes of
`I`: if `π₁`, `π₂` are two prepartitions of `I` covering the same part of `I`, the sum of integrals
of `f` over the boxes of `π₁` is equal to the sum of integrals of `f` over the boxes of `π₂`.

See also `BoxIntegral.Integrable.sum_integral_congr` for an unbundled version. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant35a2261d26d8dfe2d23e21409027216fc95147ea2fe3744219782f2326e6de8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant35a2261d26d8dfe2d23e21409027216fc95147ea2fe3744219782f2326e6de8e.lean#L608).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d6091b8a7da0397a7e4e9c6d3d15c3ca2a85990` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
