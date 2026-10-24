# mem_ae_of_mem_ae_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99cdf70e-675f-5b22-c9e5-4fcc5870b2b7",
  "kind": "theorem",
  "lexical_name": "mem_ae_of_mem_ae_map",
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
  "slug": "mem-ae-of-mem-ae-map--c05a808c87ae89bd3204f22e",
  "source": {
    "blob": "bd37beb4c257507472a7c9ca9c8c62ed259f9171",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 253,
    "path": "GRWTSK/Analysis/MeasureTheory/Map/Variant31443c6cde2d3fc37e8d1f52566e2b7ca0efa7027aef2ea8f0e889662a5b11a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c05a808c87ae89bd3204f22e818fa2e5114a478fe49d0a421f30d4ac88825c19",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Map/Variant31443c6cde2d3fc37e8d1f52566e2b7ca0efa7027aef2ea8f0e889662a5b11a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99cdf70e-675f-5b22-c9e5-4fcc5870b2b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_ae_of_mem_ae_map {f : α → β} (hf : AEMeasurable f μ) {s : Set β}
    (hs : s ∈ ae (μ.map f)) : f ⁻¹' s ∈ ae μ :=
  (tendsto_ae_map hf).eventually hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Map/Variant31443c6cde2d3fc37e8d1f52566e2b7ca0efa7027aef2ea8f0e889662a5b11a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Map/Variant31443c6cde2d3fc37e8d1f52566e2b7ca0efa7027aef2ea8f0e889662a5b11a2.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd37beb4c257507472a7c9ca9c8c62ed259f9171` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
