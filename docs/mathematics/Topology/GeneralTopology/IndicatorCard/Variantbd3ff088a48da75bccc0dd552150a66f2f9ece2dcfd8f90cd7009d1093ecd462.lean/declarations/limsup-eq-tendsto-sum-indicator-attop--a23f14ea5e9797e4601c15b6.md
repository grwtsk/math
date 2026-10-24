# limsup_eq_tendsto_sum_indicator_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94724ba7-70b3-a8af-d17c-9cae0615516c",
  "kind": "lemma",
  "lexical_name": "limsup_eq_tendsto_sum_indicator_atTop",
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
  "slug": "limsup-eq-tendsto-sum-indicator-attop--a23f14ea5e9797e4601c15b6",
  "source": {
    "blob": "b43bb0a24772289a5c7712439dcab0ef4f8b9a35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 75,
    "path": "GRWTSK/Topology/GeneralTopology/IndicatorCard/Variantbd3ff088a48da75bccc0dd552150a66f2f9ece2dcfd8f90cd7009d1093ecd462.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a23f14ea5e9797e4601c15b64f6e6b67cba69424315baf15538313ec13b3c4c4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IndicatorCard/Variantbd3ff088a48da75bccc0dd552150a66f2f9ece2dcfd8f90cd7009d1093ecd462.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94724ba7-70b3-a8af-d17c-9cae0615516c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma limsup_eq_tendsto_sum_indicator_atTop {α R : Type*}
    [AddCommMonoid R] [PartialOrder R] [IsOrderedAddMonoid R]
    [AddLeftStrictMono R] [Archimedean R] {r : R} (h : 0 < r) (s : ℕ → Set α) :
    atTop.limsup s = { ω | atTop.Tendsto
      (fun n ↦ ∑ k ∈ Finset.range n, (s k).indicator (fun _ ↦ r) ω) atTop } := by
  nth_rw 1 [← Nat.cofinite_eq_atTop, cofinite.limsup_set_eq]
  ext ω
  rw [mem_setOf_eq, mem_setOf_eq, infinite_iff_tendsto_sum_indicator_atTop h, iff_eq_eq]
  congr

end Set
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IndicatorCard/Variantbd3ff088a48da75bccc0dd552150a66f2f9ece2dcfd8f90cd7009d1093ecd462.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IndicatorCard/Variantbd3ff088a48da75bccc0dd552150a66f2f9ece2dcfd8f90cd7009d1093ecd462.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b43bb0a24772289a5c7712439dcab0ef4f8b9a35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
