# convolution_tendsto_right_of_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f10b97172c82f66a75cf2ddd2ff5661444185b67",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd573e15f78e590a5e8645a1a843879e023268376dac1e4f5f6868d4681c7b0c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c309ec6c-408c-edcd-31d2-5b0b8ddd7c0c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10d5f059-2b1a-7c2f-87e1-a18e50ccbbcc",
  "kind": "theorem",
  "lexical_name": "convolution_tendsto_right_of_continuous",
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
  "slug": "convolution-tendsto-right-of-continuous--35db03b5176721d1eb821a78",
  "source": {
    "blob": "f10b97172c82f66a75cf2ddd2ff5661444185b67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 100,
    "path": "GRWTSK/Topology/GeneralTopology/Convolution/Variantfd573e15f78e590a5e8645a1a843879e023268376dac1e4f5f6868d4681c7b0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35db03b5176721d1eb821a78b47a88623b81907fba319d45e07de96a3cc5bed0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Convolution/Variantfd573e15f78e590a5e8645a1a843879e023268376dac1e4f5f6868d4681c7b0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10d5f059-2b1a-7c2f-87e1-a18e50ccbbcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convolution_tendsto_right_of_continuous {ι} {φ : ι → ContDiffBump (0 : G)} {l : Filter ι}
    (hφ : Tendsto (fun i => (φ i).rOut) l (𝓝 0)) (hg : Continuous g) (x₀ : G) :
    Tendsto (fun i => ((φ i).normed μ ⋆[lsmul ℝ ℝ, μ] g) x₀) l (𝓝 (g x₀)) :=
  convolution_tendsto_right hφ (eventually_of_forall fun _ => hg.aestronglyMeasurable)
    ((hg.tendsto x₀).comp tendsto_snd) tendsto_const_nhds
#align cont_diff_bump.convolution_tendsto_right_of_continuous ContDiffBump.convolution_tendsto_right_of_continuous

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Convolution/Variantfd573e15f78e590a5e8645a1a843879e023268376dac1e4f5f6868d4681c7b0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Convolution/Variantfd573e15f78e590a5e8645a1a843879e023268376dac1e4f5f6868d4681c7b0c.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f10b97172c82f66a75cf2ddd2ff5661444185b67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
