# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc65a30c1aaa361bda1da3d759d269c42f8475c58299fcdd6145f8cc4d223770",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--dddefb612476ccbf4e628b00",
  "source": {
    "blob": "048f47e51a68d48a51e16525a0e10eb6455491bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 186,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variante52e5e2b29988b32df28d142d70cde0430e6ecf141f0cb68b932525dbced15c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dddefb612476ccbf4e628b00bdec3d781b5a6d1dbdca03ba9013a2997c0fa03a",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Dioph/Variante52e5e2b29988b32df28d142d70cde0430e6ecf141f0cb68b932525dbced15c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc65a30c1aaa361bda1da3d759d269c42f8475c58299fcdd6145f8cc4d223770`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CommRing (Poly α) where
  __ := (inferInstance : AddCommGroup (Poly α))
  __ := (inferInstance : AddGroupWithOne (Poly α))
  mul := (· * ·)
  npow := @npowRec _ ⟨(1 : Poly α)⟩ ⟨(· * ·)⟩
  mul_zero _ := by ext; rw [mul_apply, zero_apply, mul_zero]
  zero_mul _ := by ext; rw [mul_apply, zero_apply, zero_mul]
  mul_one _ := by ext; rw [mul_apply, one_apply, mul_one]
  one_mul _ := by ext; rw [mul_apply, one_apply, one_mul]
  mul_comm _ _ := by ext; simp_rw [mul_apply, mul_comm]
  mul_assoc _ _ _ := by ext; simp_rw [mul_apply, mul_assoc]
  left_distrib _ _ _ := by ext; simp_rw [add_apply, mul_apply]; apply mul_add
  right_distrib _ _ _ :=  by ext; simp only [add_apply, mul_apply]; apply add_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Dioph/Variante52e5e2b29988b32df28d142d70cde0430e6ecf141f0cb68b932525dbced15c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variante52e5e2b29988b32df28d142d70cde0430e6ecf141f0cb68b932525dbced15c9.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `048f47e51a68d48a51e16525a0e10eb6455491bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
