# rTensorOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:496909d530436c740527ca1a71d741d5137009067fd9d34429b696febbe4ee58",
  "kind": "def",
  "lexical_name": "rTensorOne",
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
  "slug": "rtensorone--067be71a7bb29d674feb1fed",
  "source": {
    "blob": "29800b1d83dccae7dbe5927eb9f80de1c0b1ab0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 216,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:067be71a7bb29d674feb1fed974fcdff84cfd02e3f96e3535e3d3f215236689f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:496909d530436c740527ca1a71d741d5137009067fd9d34429b696febbe4ee58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rTensorOne : M ⊗[R] (⊥ : Subalgebra R S) ≃ₗ[R] M :=
  LinearEquiv.ofLinearMap M.rTensorOne' ((TensorProduct.comm R _ _).toLinearMap ∘ₗ
    TensorProduct.mk R (⊥ : Subalgebra R S) M 1) (by ext; simp) <| TensorProduct.ext' fun n r ↦ by
  change rTensorOne' M _ ⊗ₜ[R] 1 = n ⊗ₜ[R] r
  obtain ⟨x, h⟩ := Algebra.mem_bot.1 r.2
  replace h : algebraMap R _ x = r := Subtype.val_injective h
  rw [← h, rTensorOne'_tmul, TensorProduct.smul_tmul, Algebra.smul_def, mul_one]

variable {M} in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29800b1d83dccae7dbe5927eb9f80de1c0b1ab0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
