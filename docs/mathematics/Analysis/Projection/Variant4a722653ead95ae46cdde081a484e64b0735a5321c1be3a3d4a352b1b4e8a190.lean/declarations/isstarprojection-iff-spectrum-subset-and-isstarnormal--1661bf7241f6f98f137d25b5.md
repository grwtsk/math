# isStarProjection_iff_spectrum_subset_and_isStarNormal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da150fb874877b119b2d55bfe253efa53d31afa4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a722653ead95ae46cdde081a484e64b0735a5321c1be3a3d4a352b1b4e8a190.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9fa12c26-cff7-9b8c-e5f1-7f9f0d2ba1a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:981811e8-6e25-be46-2d35-46be41d76022",
  "kind": "theorem",
  "lexical_name": "isStarProjection_iff_spectrum_subset_and_isStarNormal",
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
  "slug": "isstarprojection-iff-spectrum-subset-and-isstarnormal--1661bf7241f6f98f137d25b5",
  "source": {
    "blob": "da150fb874877b119b2d55bfe253efa53d31afa4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 79,
    "path": "GRWTSK/Analysis/Projection/Variant4a722653ead95ae46cdde081a484e64b0735a5321c1be3a3d4a352b1b4e8a190.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1661bf7241f6f98f137d25b54875dc3621262e0f573db9e823696c25c9591d04",
  "verification": {
    "reference": "docs/verification/Analysis/Projection/Variant4a722653ead95ae46cdde081a484e64b0735a5321c1be3a3d4a352b1b4e8a190.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:981811e8-6e25-be46-2d35-46be41d76022`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isStarProjection_iff_spectrum_subset_and_isStarNormal [Algebra ℂ A]
    [NonUnitalContinuousFunctionalCalculus ℂ A IsStarNormal] {p : A} :
    IsStarProjection p ↔ spectrum ℂ p ⊆ {0, 1} ∧ IsStarNormal p :=
  isStarProjection_iff_isIdempotentElem_and_isStarNormal (p := p).eq ▸
    and_congr_left_iff.mpr fun h ↦ isIdempotentElem_iff_spectrum_subset ℂ p h

end Unital

namespace IsStarProjection

variable {A : Type*} [NonUnitalCStarAlgebra A] [PartialOrder A] [StarOrderedRing A] {p q : A}

open CFC in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Projection/Variant4a722653ead95ae46cdde081a484e64b0735a5321c1be3a3d4a352b1b4e8a190.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Projection/Variant4a722653ead95ae46cdde081a484e64b0735a5321c1be3a3d4a352b1b4e8a190.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da150fb874877b119b2d55bfe253efa53d31afa4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
