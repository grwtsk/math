# iSup_basicOpen_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:468eeb96-f155-5bdc-1bd7-e279fe150ffc",
  "kind": "lemma",
  "lexical_name": "iSup_basicOpen_eq_top",
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
  "slug": "isup-basicopen-eq-top--c42bce1321c8fdce301e1038",
  "source": {
    "blob": "c41860c281085da54a5202a6691d8eca3c4f9775",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 94,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantc852e2caf2abf10cbea05db4a1a174463e7662536edddfe8d66ff9e7b16cef06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c42bce1321c8fdce301e10382ae4b24d18ddff954835fce10f255d4f73ad959a",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variantc852e2caf2abf10cbea05db4a1a174463e7662536edddfe8d66ff9e7b16cef06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:468eeb96-f155-5bdc-1bd7-e279fe150ffc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iSup_basicOpen_eq_top {ι : Type*} (f : ι → A)
    (hf : (HomogeneousIdeal.irrelevant 𝒜).toIdeal ≤ Ideal.span (Set.range f)) :
    ⨆ i, Proj.basicOpen 𝒜 (f i) = ⊤ := by
  classical
  refine top_le_iff.mp fun x hx ↦ TopologicalSpace.Opens.mem_iSup.mpr ?_
  by_contra! H
  simp only [mem_basicOpen, Decidable.not_not] at H
  refine x.not_irrelevant_le (hf.trans ?_)
  rwa [Ideal.span_le, Set.range_subset_iff]

/-- If `{ xᵢ }` are homogeneous and span `A` as an `A₀` algebra, then `D₊(xᵢ)` covers `Proj A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variantc852e2caf2abf10cbea05db4a1a174463e7662536edddfe8d66ff9e7b16cef06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantc852e2caf2abf10cbea05db4a1a174463e7662536edddfe8d66ff9e7b16cef06.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c41860c281085da54a5202a6691d8eca3c4f9775` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
