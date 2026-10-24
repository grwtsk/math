# setLIntegral_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ceab01e59c172258e6c530cb297917c73e13f525",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b39cd653-83a5-5e81-26a4-676226924f2b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:879251e5-9f13-23d4-4a1f-338b3d5f1f21",
  "kind": "theorem",
  "lexical_name": "setLIntegral_subtype",
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
  "slug": "setlintegral-subtype--ca114817a634101ba8dcaf51",
  "source": {
    "blob": "ceab01e59c172258e6c530cb297917c73e13f525",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca114817a634101ba8dcaf516c8d4c994b75001552f40fc56b3068d3c9b62cc1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:879251e5-9f13-23d4-4a1f-338b3d5f1f21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setLIntegral_subtype {s : Set α} (hs : MeasurableSet s) (t : Set s) (f : α → ℝ≥0∞) :
    ∫⁻ x in t, f x ∂(μ.comap (↑)) = ∫⁻ x in (↑) '' t, f x ∂μ := by
  rw [(MeasurableEmbedding.subtype_coe hs).restrict_comap, lintegral_subtype_comap hs,
    restrict_restrict hs, inter_eq_right.2 (Subtype.coe_image_subset _ _)]

end Map

namespace MeasurePreserving

variable {g : α → β} (hg : MeasurePreserving g μ ν)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ceab01e59c172258e6c530cb297917c73e13f525` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
