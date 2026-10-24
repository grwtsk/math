# ae_map_mem_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f02a112-e1ed-50ab-5d9d-7dc961fa6000",
  "kind": "theorem",
  "lexical_name": "ae_map_mem_range",
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
  "slug": "ae-map-mem-range--52ba4fc82ebb1b9c83c3cbf0",
  "source": {
    "blob": "bd37beb4c257507472a7c9ca9c8c62ed259f9171",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 265,
    "path": "GRWTSK/Analysis/MeasureTheory/Map/Variant31443c6cde2d3fc37e8d1f52566e2b7ca0efa7027aef2ea8f0e889662a5b11a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52ba4fc82ebb1b9c83c3cbf0141800510f405796f1eb469d31bc0184be1830e9",
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

Occurrence: `result:3f02a112-e1ed-50ab-5d9d-7dc961fa6000`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_map_mem_range {m0 : MeasurableSpace α} {f : α → β} (hf : MeasurableSet (range f))
    {μ : Measure α} (h : AEMeasurable f μ) : ∀ᵐ x ∂μ.map f, x ∈ range f := by
  change range f ∈ ae (μ.map f)
  rw [mem_ae_map_iff h hf]
  filter_upwards using mem_range_self

end MeasureTheory

namespace MeasurableEmbedding

open MeasureTheory Measure

variable {m0 : MeasurableSpace α} {m1 : MeasurableSpace β} {f : α → β} {μ ν : Measure α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Map/Variant31443c6cde2d3fc37e8d1f52566e2b7ca0efa7027aef2ea8f0e889662a5b11a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Map/Variant31443c6cde2d3fc37e8d1f52566e2b7ca0efa7027aef2ea8f0e889662a5b11a2.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd37beb4c257507472a7c9ca9c8c62ed259f9171` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
