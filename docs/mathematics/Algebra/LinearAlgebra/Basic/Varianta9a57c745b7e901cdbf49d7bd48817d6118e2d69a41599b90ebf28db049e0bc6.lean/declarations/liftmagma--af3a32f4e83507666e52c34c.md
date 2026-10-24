# liftMagma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:472331e8698712d1ea1276aebdbde851a75a0ea5d2894258adae161cad03132a",
  "kind": "def",
  "lexical_name": "liftMagma",
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
  "slug": "liftmagma--af3a32f4e83507666e52c34c",
  "source": {
    "blob": "acf4e3d53f85753325fdead176fa806be1ba130d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 69,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta9a57c745b7e901cdbf49d7bd48817d6118e2d69a41599b90ebf28db049e0bc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af3a32f4e83507666e52c34caff9c9f399afd15c9c0065182ce0ab62e1da0492",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianta9a57c745b7e901cdbf49d7bd48817d6118e2d69a41599b90ebf28db049e0bc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:472331e8698712d1ea1276aebdbde851a75a0ea5d2894258adae161cad03132a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftMagma [Module R A] [IsScalarTower R A A] [SMulCommClass R A A] :
    (M →ₙ* A) ≃ (R[M] →ₙₐ[R] A) where
  toFun f := {
    toAddMonoidHom :=
      (liftAddHom fun x ↦ (smulAddHom R A).flip (f x)).comp coeffAddEquiv.toAddMonoidHom
    map_smul' t' a := by simp [Finsupp.smul_sum, sum_smul_index', mul_smul]
    map_mul' a₁ a₂ := by
      simpa [mul_def, sum_sum_index, add_smul, Finsupp.mul_sum, Finsupp.sum_mul,
        smul_mul_smul_comm] using Finsupp.sum_comm ..
  }
  invFun F := F.toMulHom.comp (ofMagma R M)
  left_inv f := by ext; simp
  right_inv F := by ext; simp

end NonUnitalNonAssocAlgebra

/-! #### Algebra structure -/

section Algebra
variable [CommSemiring R] [Semiring A] [Algebra R A] [Monoid M] [Monoid N]

set_option backward.defeqAttrib.useBackward true in
/-- The instance `Algebra R A[M]` whenever we have `Algebra R A`.

In particular this provides the instance `Algebra R R[M]`. -/
@[to_additive (dont_translate := R A)
/-- The instance `Algebra R R[M]` whenever we have `Algebra R R`.

In particular this provides the instance `Algebra R R[M]`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianta9a57c745b7e901cdbf49d7bd48817d6118e2d69a41599b90ebf28db049e0bc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianta9a57c745b7e901cdbf49d7bd48817d6118e2d69a41599b90ebf28db049e0bc6.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acf4e3d53f85753325fdead176fa806be1ba130d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
