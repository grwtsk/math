# PosSemidef.preInnerProductSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b72dd4be3f3179c657eb73a5272c369c112a14a2d533f3d7484aac69d4e9504",
  "kind": "def",
  "lexical_name": "PosSemidef.preInnerProductSpace",
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
  "slug": "possemidef-preinnerproductspace--813418feec0d37be1120e505",
  "source": {
    "blob": "5ed87a4e89156114c838a1c80a17bee923db0a8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 95,
    "path": "GRWTSK/Algebra/LinearAlgebra/PosDef/Variantec48fae81b5d1671f03af1ce765aa844caceb04b825c786823575d7ef0d6119b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:813418feec0d37be1120e5051137483843100a19febfff48b6e873d74c1964f2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PosDef/Variantec48fae81b5d1671f03af1ce765aa844caceb04b825c786823575d7ef0d6119b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b72dd4be3f3179c657eb73a5272c369c112a14a2d533f3d7484aac69d4e9504`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def PosSemidef.preInnerProductSpace {M : Matrix n n 𝕜} (hM : M.PosSemidef) :
    PreInnerProductSpace.Core 𝕜 (n → 𝕜) where
  inner x y := (M *ᵥ y) ⬝ᵥ star x
  conj_inner_symm x y := by
    rw [dotProduct_comm, star_dotProduct, starRingEnd_apply, star_star,
      star_mulVec, dotProduct_comm (M *ᵥ y), dotProduct_mulVec, hM.isHermitian.eq]
  re_inner_nonneg x := dotProduct_comm _ (star x) ▸ hM.re_dotProduct_nonneg x
  add_left := by simp only [star_add, dotProduct_add, forall_const]
  smul_left _ _ _ := by rw [← smul_eq_mul, ← dotProduct_smul, starRingEnd_apply, ← star_smul]

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
/-- A positive semi-definite matrix `M` induces a norm `‖x‖ = sqrt (re xᴴMx)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PosDef/Variantec48fae81b5d1671f03af1ce765aa844caceb04b825c786823575d7ef0d6119b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PosDef/Variantec48fae81b5d1671f03af1ce765aa844caceb04b825c786823575d7ef0d6119b.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ed87a4e89156114c838a1c80a17bee923db0a8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
