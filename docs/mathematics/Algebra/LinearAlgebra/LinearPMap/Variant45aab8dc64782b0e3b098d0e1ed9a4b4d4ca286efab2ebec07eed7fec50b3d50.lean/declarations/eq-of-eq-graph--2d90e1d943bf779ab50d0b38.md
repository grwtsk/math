# eq_of_eq_graph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "714240dc1f4aac388a5a0264cacd1d5d1f4d3f78",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 865,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45aab8dc64782b0e3b098d0e1ed9a4b4d4ca286efab2ebec07eed7fec50b3d50.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46482e12-5c3f-e302-eab4-5599ee2c03ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3844320c-74e8-6e13-276c-df7a595983ca",
  "kind": "theorem",
  "lexical_name": "eq_of_eq_graph",
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
  "slug": "eq-of-eq-graph--2d90e1d943bf779ab50d0b38",
  "source": {
    "blob": "714240dc1f4aac388a5a0264cacd1d5d1f4d3f78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 878,
    "line": 865,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variant45aab8dc64782b0e3b098d0e1ed9a4b4d4ca286efab2ebec07eed7fec50b3d50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d90e1d943bf779ab50d0b38adf7dfc01d2b9dedc88a496bd5ab10ce32ab211d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearPMap/Variant45aab8dc64782b0e3b098d0e1ed9a4b4d4ca286efab2ebec07eed7fec50b3d50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3844320c-74e8-6e13-276c-df7a595983ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 865–878.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_eq_graph {f g : E →ₗ.[R] F} (h : f.graph = g.graph) : f = g := by
  apply dExt
  · ext
    exact mem_domain_iff_of_eq_graph h
  · apply (le_of_le_graph h.le).2

end Graph

end LinearPMap

namespace Submodule

section SubmoduleToLinearPMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearPMap/Variant45aab8dc64782b0e3b098d0e1ed9a4b4d4ca286efab2ebec07eed7fec50b3d50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variant45aab8dc64782b0e3b098d0e1ed9a4b4d4ca286efab2ebec07eed7fec50b3d50.lean#L865).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `714240dc1f4aac388a5a0264cacd1d5d1f4d3f78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
