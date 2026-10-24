# orthogonalDecomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:666dc182ee774c77f6129232f7668cb3799961f14001e8eb195e75aa5c395ba1",
  "kind": "def",
  "lexical_name": "orthogonalDecomposition",
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
  "slug": "orthogonaldecomposition--91685666c4b8fc8a5c312986",
  "source": {
    "blob": "88f8bf7c97c03fd128ddec72a0f44935069d501a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 97,
    "path": "GRWTSK/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91685666c4b8fc8a5c312986eaeca5c3606a2750b7375f60b9669b21e413d0fe",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:666dc182ee774c77f6129232f7668cb3799961f14001e8eb195e75aa5c395ba1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def orthogonalDecomposition : E ≃ₗᵢ[𝕜] WithLp 2 (K × Kᗮ) where
  __ := (K.prodEquivOfIsCompl Kᗮ K.isCompl_orthogonal).symm
    ≪≫ₗ (WithLp.linearEquiv 2 𝕜 (K × Kᗮ)).symm
  norm_map' _ := by
    rw [← sq_eq_sq₀ (by positivity) (by positivity), WithLp.prod_norm_sq_eq_of_L2,
      K.norm_sq_eq_add_norm_sq_projection]
    simp [starProjection_apply_eq_isComplProjection]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88f8bf7c97c03fd128ddec72a0f44935069d501a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
