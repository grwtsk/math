# extendRCLikeₗ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0607e219a25f00e210d8ce6f663ee29c2673d3892d7b6f761dacc2bfcf1ae106",
  "kind": "def",
  "lexical_name": "extendRCLikeₗ",
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
  "slug": "extendrclike--3bb6444a0c395ac223210bce",
  "source": {
    "blob": "88d7706e8546bda5b87821bd217d968dd35c9b46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 97,
    "path": "GRWTSK/Algebra/LinearAlgebra/Extend/Variant2918ccf04007723a6b643b7bb2ca60efd1c4db0a4311f9c589c92451e916e594.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bb6444a0c395ac223210bcefe4540b56ea3899dba6f7f465524a4a95a30b87a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Extend/Variant2918ccf04007723a6b643b7bb2ca60efd1c4db0a4311f9c589c92451e916e594.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0607e219a25f00e210d8ce6f663ee29c2673d3892d7b6f761dacc2bfcf1ae106`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def extendRCLikeₗ : Dual ℝ F ≃ₗ[ℝ] Dual 𝕜 F where
  toFun := extendRCLike (𝕜 := 𝕜)
  invFun f := RCLike.reLm.comp (f.restrictScalars ℝ)
  left_inv f := by ext; simp
  right_inv f := by ext; apply RCLike.ext <;> simp
  map_add' := by intros; ext; simp [extendRCLike_apply]; ring
  map_smul' := by intros; ext; simp [extendRCLike_apply, real_smul_eq_coe_mul]; ring

end Module.Dual

namespace StrongDual

variable [TopologicalSpace F] [AddCommGroup F] [Module 𝕜 F] [ContinuousConstSMul 𝕜 F]
variable [Module ℝ F] [IsScalarTower ℝ 𝕜 F]

/-- Extend `fr : StrongDual ℝ F` to `StrongDual 𝕜 F`.

Norm properties of this extension can be found in
`Mathlib/Analysis/Normed/Module/RCLike/Extend.lean`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Extend/Variant2918ccf04007723a6b643b7bb2ca60efd1c4db0a4311f9c589c92451e916e594.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Extend/Variant2918ccf04007723a6b643b7bb2ca60efd1c4db0a4311f9c589c92451e916e594.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88d7706e8546bda5b87821bd217d968dd35c9b46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
