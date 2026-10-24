# toMatrix_isIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86b5f8e3-9e4d-0693-354e-f6766eed218c",
  "kind": "theorem",
  "lexical_name": "toMatrix_isIntegral",
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
  "slug": "tomatrix-isintegral--a4025b46491e6d4e73f0a770",
  "source": {
    "blob": "ea84f5e04d127797b96e535ffaa546ca20b03ed8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 186,
    "path": "GRWTSK/Algebra/PowerBasis/Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4025b46491e6d4e73f0a7708869ed6c90561d51b811add06667994e8cae7ff6",
  "verification": {
    "reference": "docs/verification/Algebra/PowerBasis/Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86b5f8e3-9e4d-0693-354e-f6766eed218c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toMatrix_isIntegral {B B' : PowerBasis K S} {P : R[X]} (h : aeval B.gen P = B'.gen)
    (hB : IsIntegral R B.gen) (hmin : minpoly K B.gen = (minpoly R B.gen).map (algebraMap R K)) :
    ∀ i j, IsIntegral R (B.basis.toMatrix B'.basis i j) := by
  intro i j
  rw [B.basis.toMatrix_apply, B'.coe_basis]
  refine' repr_pow_isIntegral hB (fun i => _) hmin _ _
  rw [← h, aeval_eq_sum_range, LinearEquiv.map_sum, Finset.sum_apply']
  refine' IsIntegral.sum _ fun n _ => _
  rw [Algebra.smul_def, IsScalarTower.algebraMap_apply R K S, ← Algebra.smul_def,
    LinearEquiv.map_smul, algebraMap_smul]
  exact isIntegral_smul _ (repr_gen_pow_isIntegral hB hmin _ _)
#align power_basis.to_matrix_is_integral PowerBasis.toMatrix_isIntegral

end PowerBasis

end IsIntegral
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PowerBasis/Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PowerBasis/Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea84f5e04d127797b96e535ffaa546ca20b03ed8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
