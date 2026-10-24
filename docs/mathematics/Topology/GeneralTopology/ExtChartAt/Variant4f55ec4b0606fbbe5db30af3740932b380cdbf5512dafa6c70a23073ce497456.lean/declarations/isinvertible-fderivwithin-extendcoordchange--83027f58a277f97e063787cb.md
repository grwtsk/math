# isInvertible_fderivWithin_extendCoordChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "335787a6cfec75aa7327c40f1c571937620f330a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 404,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4f55ec4b0606fbbe5db30af3740932b380cdbf5512dafa6c70a23073ce497456.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28516af4-89c9-549f-57cb-0a38b804701e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5244d184-b33d-02fd-629d-c0dd81cc8eee",
  "kind": "lemma",
  "lexical_name": "isInvertible_fderivWithin_extendCoordChange",
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
  "slug": "isinvertible-fderivwithin-extendcoordchange--83027f58a277f97e063787cb",
  "source": {
    "blob": "335787a6cfec75aa7327c40f1c571937620f330a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 404,
    "path": "GRWTSK/Topology/GeneralTopology/ExtChartAt/Variant4f55ec4b0606fbbe5db30af3740932b380cdbf5512dafa6c70a23073ce497456.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83027f58a277f97e063787cb33a91f9072b9a73c237fe3cd0c097449fe2a8652",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtChartAt/Variant4f55ec4b0606fbbe5db30af3740932b380cdbf5512dafa6c70a23073ce497456.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5244d184-b33d-02fd-629d-c0dd81cc8eee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 404–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isInvertible_fderivWithin_extendCoordChange (hn : n ≠ 0)
    (he : e ∈ maximalAtlas I n M) (he' : e' ∈ maximalAtlas I n M)
    {x : E} (hx : x ∈ (I.extendCoordChange e e').source) :
    ContinuousLinearMap.IsInvertible <|
      fderivWithin 𝕜 (I.extendCoordChange e e') (I.extendCoordChange e e').source x := by
  set φ := I.extendCoordChange e e'
  have hφ : ContDiffOn 𝕜 n φ φ.source := I.contDiffOn_extendCoordChange he he'
  have hφ' : ContDiffOn 𝕜 n φ.symm φ.target := I.contDiffOn_extendCoordChange_symm he he'
  refine .of_inverse (g := (fderivWithin 𝕜 φ.symm φ.target (φ x))) ?_ ?_
  · rw [← φ.left_inv hx, φ.right_inv (φ.map_source hx), ← fderivWithin_comp,
      fderivWithin_congr' φ.rightInvOn.eqOn (φ.map_source hx), fderivWithin_id]
    · exact I.uniqueDiffOn_extendCoordChange_source _ (φ.map_source hx)
    · exact (φ.left_inv hx ▸ ((hφ _ hx).differentiableWithinAt hn) :)
    · exact (hφ' _ (φ.map_source hx)).differentiableWithinAt hn
    · exact φ.mapsTo_symm
    · exact I.uniqueDiffOn_extendCoordChange_source _ (φ.map_source hx)
  · rw [← fderivWithin_comp, fderivWithin_congr' φ.leftInvOn.eqOn hx, fderivWithin_id]
    · exact I.uniqueDiffOn_extendCoordChange_source _ hx
    · exact (hφ' _ (φ.map_source hx)).differentiableWithinAt hn
    · exact (hφ _ hx).differentiableWithinAt hn
    · exact φ.mapsTo
    · exact I.uniqueDiffOn_extendCoordChange_source _ hx

end ModelWithCorners

open OpenPartialHomeomorph

variable [ChartedSpace H M] [ChartedSpace H' M']

variable (I) in
/-- The preferred extended chart on a manifold with corners around a point `x`, from a neighborhood
of `x` to the model vector space. -/
@[simp, mfld_simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtChartAt/Variant4f55ec4b0606fbbe5db30af3740932b380cdbf5512dafa6c70a23073ce497456.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtChartAt/Variant4f55ec4b0606fbbe5db30af3740932b380cdbf5512dafa6c70a23073ce497456.lean#L404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `335787a6cfec75aa7327c40f1c571937620f330a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
