# convolution_tendsto_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:565b681f-7df4-0cbe-7f9a-c0d950d3ebd8",
  "kind": "theorem",
  "lexical_name": "convolution_tendsto_right",
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
  "slug": "convolution-tendsto-right--e135cd2533b15a4ef39357be",
  "source": {
    "blob": "edd59d913195a9d28bba780666aea0e50dbd23ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 96,
    "path": "GRWTSK/Topology/GeneralTopology/Convolution/Variantbac3d84abafd1f68cb22efa67f44dd39938e9f15b5c0f1a6472e17144b11c6d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e135cd2533b15a4ef39357beda07134e926d93d9321020116f210b4c8bc18e40",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Convolution/Variantbac3d84abafd1f68cb22efa67f44dd39938e9f15b5c0f1a6472e17144b11c6d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:565b681f-7df4-0cbe-7f9a-c0d950d3ebd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem convolution_tendsto_right {ι} {φ : ι → ContDiffBump (0 : G)} {g : ι → G → E'}
    {k : ι → G} {x₀ : G} {z₀ : E'} {l : Filter ι} (hφ : Tendsto (fun i => (φ i).rOut) l (𝓝 0))
    (hig : ∀ᶠ i in l, AEStronglyMeasurable (g i) μ) (hcg : Tendsto (uncurry g) (l ×ˢ 𝓝 x₀) (𝓝 z₀))
    (hk : Tendsto k l (𝓝 x₀)) :
    Tendsto (fun i => ((φ i).normed μ ⋆[lsmul ℝ ℝ, μ] g i) (k i)) l (𝓝 z₀) :=
  convolution_tendsto_right (eventually_of_forall fun i => (φ i).nonneg_normed)
    (eventually_of_forall fun i => (φ i).integral_normed) (tendsto_support_normed_smallSets hφ) hig
    hcg hk
#align cont_diff_bump.convolution_tendsto_right ContDiffBump.convolution_tendsto_right

/-- Special case of `ContDiffBump.convolution_tendsto_right` where `g` is continuous,
  and the limit is taken only in the first function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Convolution/Variantbac3d84abafd1f68cb22efa67f44dd39938e9f15b5c0f1a6472e17144b11c6d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Convolution/Variantbac3d84abafd1f68cb22efa67f44dd39938e9f15b5c0f1a6472e17144b11c6d6.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edd59d913195a9d28bba780666aea0e50dbd23ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
