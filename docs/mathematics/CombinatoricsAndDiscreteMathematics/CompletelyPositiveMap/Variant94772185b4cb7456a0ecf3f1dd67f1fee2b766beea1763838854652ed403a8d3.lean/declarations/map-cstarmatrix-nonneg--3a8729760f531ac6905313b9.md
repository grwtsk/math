# map_cstarMatrix_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3206e9605d0e9648d320cb4aec41f38480b47a33",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94772185b4cb7456a0ecf3f1dd67f1fee2b766beea1763838854652ed403a8d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af581853-5daa-0215-769b-5d6f89371699",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c308e59-f3ec-2945-2ed6-1de7a12c08c8",
  "kind": "lemma",
  "lexical_name": "map_cstarMatrix_nonneg",
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
  "slug": "map-cstarmatrix-nonneg--3a8729760f531ac6905313b9",
  "source": {
    "blob": "3206e9605d0e9648d320cb4aec41f38480b47a33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 132,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CompletelyPositiveMap/Variant94772185b4cb7456a0ecf3f1dd67f1fee2b766beea1763838854652ed403a8d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a8729760f531ac6905313b9c48af3ec280c00db46a800c084aaef03fbd92910",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CompletelyPositiveMap/Variant94772185b4cb7456a0ecf3f1dd67f1fee2b766beea1763838854652ed403a8d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c308e59-f3ec-2945-2ed6-1de7a12c08c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_cstarMatrix_nonneg {n : Type*} [Fintype n] (φ : A₁ →CP A₂) (M : CStarMatrix n n A₁)
    (hM : 0 ≤ M) : 0 ≤ M.map φ := by
  let k := Fintype.card n
  let e := Fintype.equivFinOfCardEq (rfl : Fintype.card n = k)
  have hmain : 0 ≤ (reindexₐ ℂ A₁ e M).mapₗ (φ : A₁ →ₗ[ℂ] A₂) := by
    simp only [mapₗ, LinearMap.coe_ofClass, LinearMap.coe_mk, AddHom.coe_mk]
    exact CompletelyPositiveMapClass.map_cstarMatrix_nonneg' _ k _ (map_nonneg _ hM)
  rw [← mapₗ_reindexₐ] at hmain
  simpa [reindexₐ_symm] using map_nonneg (reindexₐ ℂ A₂ e).symm hmain

end CompletelyPositiveMap

namespace NonUnitalStarAlgHomClass

variable {F A₁ A₂ : Type*} [NonUnitalCStarAlgebra A₁] [NonUnitalCStarAlgebra A₂] [PartialOrder A₁]
  [PartialOrder A₂] [StarOrderedRing A₁] [StarOrderedRing A₂] [FunLike F A₁ A₂]
  [NonUnitalAlgHomClass F ℂ A₁ A₂] [StarHomClass F A₁ A₂]

open CStarMatrix CFC in
/-- Non-unital star algebra homomorphisms are completely positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CompletelyPositiveMap/Variant94772185b4cb7456a0ecf3f1dd67f1fee2b766beea1763838854652ed403a8d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CompletelyPositiveMap/Variant94772185b4cb7456a0ecf3f1dd67f1fee2b766beea1763838854652ed403a8d3.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3206e9605d0e9648d320cb4aec41f38480b47a33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
