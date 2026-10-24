# Tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76b2820e84fb025f7ca2a892b0b1b165bc7183a2e78a793cf8f41ea0b77835cb",
  "kind": "def",
  "lexical_name": "Tendsto",
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
  "slug": "tendsto--4b1ee5e512c4c2da2b4f15ed",
  "source": {
    "blob": "760285d16af8795fa73313254a28aa651c9d0883",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 422,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantd0b1e4022a3910b2768e8786a3a66d701db0cb4c59c055b3bd17ec4cd28a60e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b1ee5e512c4c2da2b4f15edb1980c43017ac1dd2c9baf0dca4b8b4a8d62170a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantd0b1e4022a3910b2768e8786a3a66d701db0cb4c59c055b3bd17ec4cd28a60e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76b2820e84fb025f7ca2a892b0b1b165bc7183a2e78a793cf8f41ea0b77835cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Tendsto (f : α → β) (l₁ : Filter α) (l₂ : Filter β) :=
  l₁.map f ≤ l₂

/-- The inverse map of a filter. A set `s` belongs to `Filter.comap m f` if either of the following
equivalent conditions hold.

1. There exists a set `t ∈ f` such that `m ⁻¹' t ⊆ s`. This is used as a definition.
2. The set `kernImage m s = {y | ∀ x, m x = y → x ∈ s}` belongs to `f`, see `Filter.mem_comap'`.
3. The set `(m '' sᶜ)ᶜ` belongs to `f`, see `Filter.mem_comap_iff_compl` and
   `Filter.compl_mem_comap`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantd0b1e4022a3910b2768e8786a3a66d701db0cb4c59c055b3bd17ec4cd28a60e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantd0b1e4022a3910b2768e8786a3a66d701db0cb4c59c055b3bd17ec4cd28a60e5.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `760285d16af8795fa73313254a28aa651c9d0883` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
