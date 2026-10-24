# includeRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52074d08444f2499ef19cabf32ea173693d59b395f1192ebd952b3c1d37dbb8d",
  "kind": "def",
  "lexical_name": "includeRight",
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
  "slug": "includeright--8ad36f734b39e2c48ab086e6",
  "source": {
    "blob": "e1293004ac5374da86d7d1c09f2a7a2ff167da0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 284,
    "path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ad36f734b39e2c48ab086e6735b656ad365818db030e6b6ec1f1085af86c210",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52074d08444f2499ef19cabf32ea173693d59b395f1192ebd952b3c1d37dbb8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def includeRight : B →ₐ[R] (𝒜 ᵍ⊗[R] ℬ) :=
  AlgHom.ofLinearMap (R := R) (A := B) (B := 𝒜 ᵍ⊗[R] ℬ)
    (f := {
       toFun := fun b => 1 ᵍ⊗ₜ b
       map_add' := by simp [tmul, TensorProduct.tmul_add]
       map_smul' := by simp [tmul, TensorProduct.tmul_smul] })
    (map_one := rfl)
    (map_mul := by
      rw [LinearMap.map_mul_iff]
      refine DirectSum.decompose_lhom_ext ℬ fun i₁ => ?_
      ext b₁ b₂ : 2
      dsimp
      rw [tmul_coe_mul_one_tmul])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1293004ac5374da86d7d1c09f2a7a2ff167da0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
