# map_cstarMatrix_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4bb4794-0568-0e25-9023-be6be29e4db2",
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
  "slug": "map-cstarmatrix-nonneg--68126c7384511cc02a8bc23d",
  "source": {
    "blob": "4876e1c310265e5d5193b5527e7bffc822da6036",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 139,
    "path": "GRWTSK/Analysis/CompletelyPositiveMap/Variantc97eca4a5b7f7651828e8a92b987fcbd6a1d3f8faf2e8b7a4f52f7ded7ffe331.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68126c7384511cc02a8bc23dacc4d11104dd0ff4d43b95783ea20a482a8b74e2",
  "verification": {
    "reference": "docs/verification/Analysis/CompletelyPositiveMap/Variantc97eca4a5b7f7651828e8a92b987fcbd6a1d3f8faf2e8b7a4f52f7ded7ffe331.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4bb4794-0568-0e25-9023-be6be29e4db2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_cstarMatrix_nonneg {n : Type*} [Fintype n] (φ : A₁ →CP A₂) (M : CStarMatrix n n A₁)
    (hM : 0 ≤ M) : 0 ≤ M.map φ := by
  let k := Fintype.card n
  let e := Fintype.equivFinOfCardEq (rfl : Fintype.card n = k)
  have hmain : 0 ≤ (reindexₐ ℂ A₁ e M).mapₗ (φ : A₁ →ₗ[ℂ] A₂) := by
    simp only [mapₗ, LinearMap.coe_coe, LinearMap.coe_mk, AddHom.coe_mk]
    exact CompletelyPositiveMapClass.map_cstarMatrix_nonneg' _ k _ (map_nonneg _ hM)
  rw [← mapₗ_reindexₐ] at hmain
  have hrw :
      reindexₐ ℂ A₂ e.symm ((reindexₐ ℂ A₂ e) (M.map (φ : A₁ → A₂))) = M.map (φ : A₁ → A₂) := by
    simp
  rw [← hrw]
  exact map_nonneg _ hmain

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

[Verification target and public status](../../../../../verification/Analysis/CompletelyPositiveMap/Variantc97eca4a5b7f7651828e8a92b987fcbd6a1d3f8faf2e8b7a4f52f7ded7ffe331.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CompletelyPositiveMap/Variantc97eca4a5b7f7651828e8a92b987fcbd6a1d3f8faf2e8b7a4f52f7ded7ffe331.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4876e1c310265e5d5193b5527e7bffc822da6036` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
