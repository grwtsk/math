# PartialHomeomorph.toStructomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2350138bf0c03944baab401ac8ece1896b73c02ed0af6cea0d9fcdec474cf510",
  "kind": "def",
  "lexical_name": "PartialHomeomorph.toStructomorph",
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
  "slug": "partialhomeomorph-tostructomorph--0b1e0f2870aee3491a76780f",
  "source": {
    "blob": "74c23f180d2dede9651863f616ffa757b9c3dd0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1481,
    "line": 1459,
    "path": "GRWTSK/Topology/GeneralTopology/ChartedSpace/Variantb7b962587603bd1cdb10b41fb37abf2481546e05088de8a831ec1bfd3bcd345d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b1e0f2870aee3491a76780fdf259e73dac10a336060cf57ff855656b3a932a6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ChartedSpace/Variantb7b962587603bd1cdb10b41fb37abf2481546e05088de8a831ec1bfd3bcd345d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2350138bf0c03944baab401ac8ece1896b73c02ed0af6cea0d9fcdec474cf510`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1459–1481.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PartialHomeomorph.toStructomorph {e : PartialHomeomorph M H} (he : e ∈ atlas H M)
    [HasGroupoid M G] [ClosedUnderRestriction G] :
    let s : Opens M := { carrier := e.source, is_open' := e.open_source }
    let t : Opens H := { carrier := e.target, is_open' := e.open_target }
    Structomorph G s t := by
  intro s t
  by_cases h : Nonempty e.source
  · exact { e.toHomeomorphSourceTarget with
      mem_groupoid :=
        -- The atlas of H on itself has only one chart, hence c' is the inclusion.
        -- Then, compatibility of `G` *almost* yields our claim --- except that `e` is a chart
        -- on `M` and `c` is one on `s`: we need to show that restricting `e` to `s` and composing
        -- with `c'` yields a chart in the maximal atlas of `s`.
        fun c c' hc hc' ↦ G.compatible_of_mem_maximalAtlas (G.subset_maximalAtlas hc)
          (G.restriction_mem_maximalAtlas_subtype he h c' hc') }
  · have : IsEmpty s := not_nonempty_iff.mp h
    have : IsEmpty t := isEmpty_coe_sort.mpr
      (by convert e.image_source_eq_target ▸ image_eq_empty.mpr (isEmpty_coe_sort.mp this))
    exact { Homeomorph.empty with
      -- `c'` cannot exist: it would be the restriction of `chartAt H x` at some `x ∈ t`.
      mem_groupoid := fun _ c' _ ⟨_, ⟨x, _⟩, _⟩ ↦ (this.false x).elim }

end HasGroupoid
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ChartedSpace/Variantb7b962587603bd1cdb10b41fb37abf2481546e05088de8a831ec1bfd3bcd345d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ChartedSpace/Variantb7b962587603bd1cdb10b41fb37abf2481546e05088de8a831ec1bfd3bcd345d.lean#L1459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74c23f180d2dede9651863f616ffa757b9c3dd0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
