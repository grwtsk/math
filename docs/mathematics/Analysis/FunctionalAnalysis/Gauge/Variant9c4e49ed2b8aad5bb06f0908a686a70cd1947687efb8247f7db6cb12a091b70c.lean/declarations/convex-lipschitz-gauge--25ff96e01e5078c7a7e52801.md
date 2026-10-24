# Convex.lipschitz_gauge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5fc9e7888a61101780115dcb6ddbde21e125e1bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 596,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5d45972-d556-7a54-dc4a-1dc5b32acbe7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a283c8c-224a-4a53-ed17-cc742281ed18",
  "kind": "theorem",
  "lexical_name": "Convex.lipschitz_gauge",
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
  "slug": "convex-lipschitz-gauge--25ff96e01e5078c7a7e52801",
  "source": {
    "blob": "5fc9e7888a61101780115dcb6ddbde21e125e1bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 600,
    "line": 596,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25ff96e01e5078c7a7e52801cc520a945bbc3d83d2591dac725d77158de55f66",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a283c8c-224a-4a53-ed17-cc742281ed18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 596–600.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Convex.lipschitz_gauge (hc : Convex ℝ s) (h₀ : s ∈ 𝓝 (0 : E)) :
    ∃ K, LipschitzWith K (gauge s) :=
  let ⟨r, hr₀, hr⟩ := Metric.mem_nhds_iff.1 h₀
  ⟨(⟨r, hr₀.le⟩ : ℝ≥0)⁻¹, hc.lipschitzWith_gauge hr₀ hr⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variant9c4e49ed2b8aad5bb06f0908a686a70cd1947687efb8247f7db6cb12a091b70c.lean#L596).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fc9e7888a61101780115dcb6ddbde21e125e1bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
