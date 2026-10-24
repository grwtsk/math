# Filter.EventuallyEqSet.mem_interior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1821378c-a9a4-3f7e-a80f-a6ad9b1effed",
  "kind": "lemma",
  "lexical_name": "Filter.EventuallyEqSet.mem_interior",
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
  "slug": "filter-eventuallyeqset-mem-interior--74dda05e4e1ed1987daa4937",
  "source": {
    "blob": "b562cfb3898fd3638a705f73eccde11a69ca0783",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 323,
    "path": "GRWTSK/Topology/GeneralTopology/NhdsWithin/Variant95b616bfa166bf1d7860d38c06e3185520ca4c94185961581b95995cc0947e33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74dda05e4e1ed1987daa493701ae1aca7d26bc6624a0ae8bca72efb3a80ba611",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NhdsWithin/Variant95b616bfa166bf1d7860d38c06e3185520ca4c94185961581b95995cc0947e33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1821378c-a9a4-3f7e-a80f-a6ad9b1effed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Filter.EventuallyEqSet.mem_interior {x : α} {s t : Set α} (hst : s =ᶠ[𝓝 x] t)
    (h : x ∈ interior s) : x ∈ interior t := by
  rw [← nhdsWithin_eq_iff_eventuallyEqSet] at hst
  simpa [mem_interior_iff_mem_nhds, ← nhdsWithin_eq_nhds, hst] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NhdsWithin/Variant95b616bfa166bf1d7860d38c06e3185520ca4c94185961581b95995cc0947e33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NhdsWithin/Variant95b616bfa166bf1d7860d38c06e3185520ca4c94185961581b95995cc0947e33.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b562cfb3898fd3638a705f73eccde11a69ca0783` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
