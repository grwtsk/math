# lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f55a3a62f333912324e4cfec951b3720149464b117c68c6be8e01abe4c18177",
  "kind": "def",
  "lexical_name": "lift",
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
  "slug": "lift--2fbec2ccf6b56c7f95d994ec",
  "source": {
    "blob": "59ee7f399ea4f40573d848d06a5deeb06b6e2c88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 136,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2fbec2ccf6b56c7f95d994ecbda5ee30b1236af597583cf166991bdabdecd4d8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f55a3a62f333912324e4cfec951b3720149464b117c68c6be8e01abe4c18177`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lift {A : Type*} [Semiring A] [Algebra R A] : (M →ₗ[R] A) ≃ (TensorAlgebra R M →ₐ[R] A) :=
  { toFun :=
      RingQuot.liftAlgHom R ∘ fun f =>
        ⟨FreeAlgebra.lift R (⇑f), fun x y (h : Rel R M x y) => by
          induction h <;>
            simp only [Algebra.smul_def, FreeAlgebra.lift_ι_apply, LinearMap.map_smulₛₗ,
              RingHom.id_apply, map_mul, AlgHom.commutes, map_add]⟩
    invFun := fun F => F.toLinearMap.comp (ι R)
    left_inv := fun f => by
      rw [ι]
      ext1 x
      exact (RingQuot.liftAlgHom_mkAlgHom_apply _ _ _ _).trans (FreeAlgebra.lift_ι_apply f x)
    right_inv := fun F =>
      RingQuot.ringQuot_ext' _ _ _ <|
        FreeAlgebra.hom_ext <|
          funext fun x => by
            rw [ι]
            exact
              (RingQuot.liftAlgHom_mkAlgHom_apply _ _ _ _).trans (FreeAlgebra.lift_ι_apply _ _) }
#align tensor_algebra.lift TensorAlgebra.lift

variable {R}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59ee7f399ea4f40573d848d06a5deeb06b6e2c88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
