# orthogonalBilin_id_map_dualMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5eb22d6d-983a-46ae-1ec8-c5a4a0544343",
  "kind": "theorem",
  "lexical_name": "orthogonalBilin_id_map_dualMap",
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
  "slug": "orthogonalbilin-id-map-dualmap--31f845f91bb5fad33f12fe11",
  "source": {
    "blob": "9766619b092010ea7d84b0398d2db4f23e7d2b51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 209,
    "path": "GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31f845f91bb5fad33f12fe11687b581d0463f488f4a905893cc12ce9e4000261",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5eb22d6d-983a-46ae-1ec8-c5a4a0544343`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orthogonalBilin_id_map_dualMap (q : M₁ →ₗ[R₁] M₁') (S : Submodule R₁ (Dual R₁ M₁')) :
    orthogonalBilin .id (S.map q.dualMap) = comap q (orthogonalBilin .id S) := by
  ext x; simp

end Map

end Submodule

namespace LinearMap

section Orthogonal

variable {K K₁ V V₁ V₂ : Type*}
variable [Field K] [AddCommGroup V] [Module K V] [Field K₁] [AddCommGroup V₁] [Module K₁ V₁]
  [AddCommGroup V₂] [Module K V₂] {J : K →+* K} {J₁ : K₁ →+* K} {J₁' : K₁ →+* K}

-- ↓ This lemma only applies in fields as we require `a * b = 0 → a = 0 ∨ b = 0`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9766619b092010ea7d84b0398d2db4f23e7d2b51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
