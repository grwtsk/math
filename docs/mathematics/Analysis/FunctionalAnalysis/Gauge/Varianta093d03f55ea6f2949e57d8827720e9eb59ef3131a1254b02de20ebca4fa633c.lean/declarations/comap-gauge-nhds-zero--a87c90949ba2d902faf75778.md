# comap_gauge_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab1ed118-799b-451a-025e-855ee5cbc68b",
  "kind": "theorem",
  "lexical_name": "comap_gauge_nhds_zero",
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
  "slug": "comap-gauge-nhds-zero--a87c90949ba2d902faf75778",
  "source": {
    "blob": "f2adfaaa314239c42376b77fbb198c381a8e6b8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 422,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Gauge/Varianta093d03f55ea6f2949e57d8827720e9eb59ef3131a1254b02de20ebca4fa633c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a87c90949ba2d902faf75778cca292eafb4696f04fdba367d6cd5101a7a662ec",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Gauge/Varianta093d03f55ea6f2949e57d8827720e9eb59ef3131a1254b02de20ebca4fa633c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab1ed118-799b-451a-025e-855ee5cbc68b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_gauge_nhds_zero (hb : Bornology.IsVonNBounded ℝ s) (h₀ : s ∈ 𝓝 0) :
    comap (gauge s) (𝓝 0) = 𝓝 0 :=
  (comap_gauge_nhds_zero_le (absorbent_nhds_zero h₀) hb).antisymm
    (tendsto_gauge_nhds_zero h₀).le_comap

end ContinuousSMul

section TopologicalVectorSpace

open Filter

variable [TopologicalSpace E] [IsTopologicalAddGroup E] [ContinuousSMul ℝ E]

/-- If `s` is a convex neighborhood of the origin in a topological real vector space, then `gauge s`
is continuous. If the ambient space is a normed space, then `gauge s` is Lipschitz continuous, see
`Convex.lipschitz_gauge`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Gauge/Varianta093d03f55ea6f2949e57d8827720e9eb59ef3131a1254b02de20ebca4fa633c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Gauge/Varianta093d03f55ea6f2949e57d8827720e9eb59ef3131a1254b02de20ebca4fa633c.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2adfaaa314239c42376b77fbb198c381a8e6b8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
