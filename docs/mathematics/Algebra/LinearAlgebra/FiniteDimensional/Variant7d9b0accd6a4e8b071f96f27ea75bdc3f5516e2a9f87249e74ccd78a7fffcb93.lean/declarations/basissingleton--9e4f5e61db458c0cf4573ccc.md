# basisSingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0fb443f83e0febc66499c220e9536759c18ccd9a8d5dd67c8ffdad5e5987e17d",
  "kind": "def",
  "lexical_name": "basisSingleton",
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
  "slug": "basissingleton--9e4f5e61db458c0cf4573ccc",
  "source": {
    "blob": "a7b6dc188797b6b20926e3de9421df9b5b45f3d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 624,
    "line": 602,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant7d9b0accd6a4e8b071f96f27ea75bdc3f5516e2a9f87249e74ccd78a7fffcb93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e4f5e61db458c0cf4573ccc82ed0f7d44d6876e998a7c52a6486fe52afe5fc1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteDimensional/Variant7d9b0accd6a4e8b071f96f27ea75bdc3f5516e2a9f87249e74ccd78a7fffcb93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0fb443f83e0febc66499c220e9536759c18ccd9a8d5dd67c8ffdad5e5987e17d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 602–624.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def basisSingleton (ι : Type*) [Unique ι] (h : finrank K V = 1) (v : V)
    (hv : v ≠ 0) : Basis ι K V :=
  let b := basisUnique ι h
  let h : b.repr v default ≠ 0 := mt basisUnique.repr_eq_zero_iff.mp hv
  Basis.ofRepr
    { toFun := fun w => Finsupp.single default (b.repr w default / b.repr v default)
      invFun := fun f => f default • v
      map_add' := by simp [add_div]
      map_smul' := by simp [mul_div]
      left_inv := fun w => by
        apply_fun b.repr using b.repr.toEquiv.injective
        apply_fun Equiv.finsuppUnique
        simp only [LinearEquiv.map_smulₛₗ, Finsupp.coe_smul, Finsupp.single_eq_same,
          RingHom.id_apply, smul_eq_mul, Pi.smul_apply, Equiv.finsuppUnique_apply]
        exact div_mul_cancel _ h
      right_inv := fun f => by
        ext
        simp only [LinearEquiv.map_smulₛₗ, Finsupp.coe_smul, Finsupp.single_eq_same,
          RingHom.id_apply, smul_eq_mul, Pi.smul_apply]
        exact mul_div_cancel _ h }
#align finite_dimensional.basis_singleton FiniteDimensional.basisSingleton

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteDimensional/Variant7d9b0accd6a4e8b071f96f27ea75bdc3f5516e2a9f87249e74ccd78a7fffcb93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant7d9b0accd6a4e8b071f96f27ea75bdc3f5516e2a9f87249e74ccd78a7fffcb93.lean#L602).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7b6dc188797b6b20926e3de9421df9b5b45f3d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
