# restr_mem_maximalAtlas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de76bc478d9e7b57cbba8b0e1bce1f6b18631986",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0f73add-9488-8860-1a9f-85d7128b9e25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0b509e1-4a51-796c-a555-edcc138df369",
  "kind": "theorem",
  "lexical_name": "restr_mem_maximalAtlas",
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
  "slug": "restr-mem-maximalatlas--ad9bd47a8b66e2433f48fa33",
  "source": {
    "blob": "de76bc478d9e7b57cbba8b0e1bce1f6b18631986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 197,
    "path": "GRWTSK/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad9bd47a8b66e2433f48fa335d70b63314a1d3d8eabd10966d96e3b2b89fd32b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0b509e1-4a51-796c-a555-edcc138df369`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restr_mem_maximalAtlas [ClosedUnderRestriction G]
    {e : OpenPartialHomeomorph M H} (he : e ∈ G.maximalAtlas M) {s : Set M} (hs : IsOpen s) :
    e.restr s ∈ G.maximalAtlas M :=
  fun _e' he' ↦ ⟨restr_mem_maximalAtlas_aux1 G he he' hs, restr_mem_maximalAtlas_aux2 G he he' hs⟩

end MaximalAtlas

section Singleton

variable {α : Type*} [TopologicalSpace α]

namespace OpenPartialHomeomorph

variable (e : OpenPartialHomeomorph α H)

/-- If a single open partial homeomorphism `e` from a space `α` into `H` has source covering the
whole space `α`, then that open partial homeomorphism induces an `H`-charted space structure on `α`.
(This condition is equivalent to `e` being an open embedding of `α` into `H`; see
`IsOpenEmbedding.singletonChartedSpace`.) -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de76bc478d9e7b57cbba8b0e1bce1f6b18631986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
