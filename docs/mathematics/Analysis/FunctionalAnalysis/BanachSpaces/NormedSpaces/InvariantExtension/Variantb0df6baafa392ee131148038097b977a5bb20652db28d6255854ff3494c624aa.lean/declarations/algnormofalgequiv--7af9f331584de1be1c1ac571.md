# algNormOfAlgEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1b2f7c725a07e588ba8ba8cab4a1fb9f4b11951b5ab0ac46cdf2da1d2abce21",
  "kind": "def",
  "lexical_name": "algNormOfAlgEquiv",
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
  "slug": "algnormofalgequiv--7af9f331584de1be1c1ac571",
  "source": {
    "blob": "77d36b88c1da890a527b423b6821cdd0980552c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 60,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variantb0df6baafa392ee131148038097b977a5bb20652db28d6255854ff3494c624aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7af9f331584de1be1c1ac5719a93c10dd5f03123c3903985de1c2ccdd47f76a2",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variantb0df6baafa392ee131148038097b977a5bb20652db28d6255854ff3494c624aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1b2f7c725a07e588ba8ba8cab4a1fb9f4b11951b5ab0ac46cdf2da1d2abce21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def algNormOfAlgEquiv (σ : L ≃ₐ[K] L) :
    AlgebraNorm K L where
  toFun x     := Classical.choose (exists_nonarchimedean_pow_mul_seminorm_of_finiteDimensional
    h_fin hu.isNonarchimedean_norm) (σ x)
  map_zero'   := by simp [map_eq_zero_iff_eq_zero, EmbeddingLike.map_eq_zero_iff]
  add_le' x y := by simp [map_add σ, map_add_le_add]
  neg' x      := by simp [map_neg σ, map_neg_eq_map]
  mul_le' x y := by simp [map_mul σ, map_mul_le_mul]
  smul' x y   := by simp [map_smul σ, map_smul_eq_mul]
  eq_zero_of_map_eq_zero' x hx := EmbeddingLike.map_eq_zero_iff.mp (eq_zero_of_map_eq_zero _ hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variantb0df6baafa392ee131148038097b977a5bb20652db28d6255854ff3494c624aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InvariantExtension/Variantb0df6baafa392ee131148038097b977a5bb20652db28d6255854ff3494c624aa.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77d36b88c1da890a527b423b6821cdd0980552c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
