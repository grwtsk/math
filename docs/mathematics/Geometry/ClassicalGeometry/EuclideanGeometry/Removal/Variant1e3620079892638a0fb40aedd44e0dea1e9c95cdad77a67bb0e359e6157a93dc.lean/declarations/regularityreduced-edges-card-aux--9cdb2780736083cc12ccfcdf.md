# regularityReduced_edges_card_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1ca3431-639b-783b-aba6-cb756874d0ac",
  "kind": "lemma",
  "lexical_name": "regularityReduced_edges_card_aux",
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
  "slug": "regularityreduced-edges-card-aux--9cdb2780736083cc12ccfcdf",
  "source": {
    "blob": "d1108f85e045784f9df861e35b74a91d6aa8dde1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 104,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant1e3620079892638a0fb40aedd44e0dea1e9c95cdad77a67bb0e359e6157a93dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cdb2780736083cc12ccfcdf99f81bfdf5abbea632676abd331b61aa33aad2fb",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant1e3620079892638a0fb40aedd44e0dea1e9c95cdad77a67bb0e359e6157a93dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1ca3431-639b-783b-aba6-cb756874d0ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma regularityReduced_edges_card_aux [Nonempty α] (hε : 0 < ε) (hP : P.IsEquipartition)
    (hPε : P.IsUniform G (ε/8)) (hP' : 4 / ε ≤ #P.parts) :
    2 * (#G.edgeFinset - #(G.regularityReduced P (ε/8) (ε/4)).edgeFinset : ℝ)
      < 2 * ε * (card α ^ 2 : ℕ) := by
  let A := (P.nonUniforms G (ε/8)).biUnion fun (U, V) ↦ U ×ˢ V
  let B := P.parts.biUnion offDiag
  let C := (P.sparsePairs G (ε/4)).biUnion fun (U, V) ↦ G.interedges U V
  calc
    _ = (#((univ ×ˢ univ).filter fun (x, y) ↦
          G.Adj x y ∧ ¬(G.regularityReduced P (ε / 8) (ε /4)).Adj x y) : ℝ) := by
      rw [univ_product_univ, mul_sub, filter_and_not, cast_card_sdiff]
      · norm_cast
        rw [two_mul_card_edgeFinset, two_mul_card_edgeFinset]
      · exact monotone_filter_right _ fun xy hxy ↦ regularityReduced_le hxy
    _ ≤ #(A ∪ B ∪ C) := by gcongr; exact unreduced_edges_subset
    _ ≤ #(A ∪ B) + #C := mod_cast (card_union_le _ _)
    _ ≤ #A + #B + #C := by gcongr; exact mod_cast card_union_le _ _
    _ < 4 * (ε / 8) * card α ^ 2 + _ + _ := by
      gcongr; exact hP.sum_nonUniforms_lt univ_nonempty (by positivity) hPε
    _ ≤ _ + ε / 2 * card α ^ 2 + 4 * (ε / 4) * card α ^ 2 := by
      gcongr
      · exact hP.card_biUnion_offDiag_le hε hP'
      · exact hP.card_interedges_sparsePairs_le (G := G) (ε := ε / 4) (by positivity)
    _ = 2 * ε * (card α ^ 2 : ℕ) := by norm_cast; ring

/-- **Triangle Removal Lemma**. If not all triangles can be removed by removing few edges (on the
order of `(card α)^2`), then there were many triangles to start with (on the order of
`(card α)^3`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant1e3620079892638a0fb40aedd44e0dea1e9c95cdad77a67bb0e359e6157a93dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant1e3620079892638a0fb40aedd44e0dea1e9c95cdad77a67bb0e359e6157a93dc.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1108f85e045784f9df861e35b74a91d6aa8dde1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
