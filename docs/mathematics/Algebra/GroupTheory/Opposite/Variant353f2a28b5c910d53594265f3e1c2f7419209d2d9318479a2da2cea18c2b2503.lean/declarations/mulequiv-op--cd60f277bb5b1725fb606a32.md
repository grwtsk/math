# MulEquiv.op

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48d53223dbc67833780c8ceb7b2408840ac4f8be8b1fe3ffebbaa8fcb4f66e46",
  "kind": "def",
  "lexical_name": "MulEquiv.op",
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
  "slug": "mulequiv-op--cd60f277bb5b1725fb606a32",
  "source": {
    "blob": "d1ca2c46bce4acd3347e80df2e59c38526de1d55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 655,
    "line": 629,
    "path": "GRWTSK/Algebra/GroupTheory/Opposite/Variant353f2a28b5c910d53594265f3e1c2f7419209d2d9318479a2da2cea18c2b2503.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd60f277bb5b1725fb606a32e9cfa68c77c47054f470f63121615653d7bc570a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Opposite/Variant353f2a28b5c910d53594265f3e1c2f7419209d2d9318479a2da2cea18c2b2503.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48d53223dbc67833780c8ceb7b2408840ac4f8be8b1fe3ffebbaa8fcb4f66e46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 629–655.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MulEquiv.op {α β} [Mul α] [Mul β] : α ≃* β ≃ (αᵐᵒᵖ ≃* βᵐᵒᵖ) where
  toFun f :=
    { toFun := MulOpposite.op ∘ f ∘ unop, invFun := MulOpposite.op ∘ f.symm ∘ unop,
      left_inv := fun x => unop_injective (f.symm_apply_apply x.unop),
      right_inv := fun x => unop_injective (f.apply_symm_apply x.unop),
      map_mul' := fun x y => unop_injective (f.map_mul y.unop x.unop) }
  invFun f :=
    { toFun := unop ∘ f ∘ MulOpposite.op, invFun := unop ∘ f.symm ∘ MulOpposite.op,
      left_inv := fun x => by simp,
      right_inv := fun x => by simp,
      map_mul' := fun x y => congr_arg unop (f.map_mul (MulOpposite.op y) (MulOpposite.op x)) }
  left_inv _ := rfl
  right_inv _ := rfl
#align mul_equiv.op MulEquiv.op
#align add_equiv.op AddEquiv.op
#align mul_equiv.op_symm_apply_symm_apply MulEquiv.op_symm_apply_symm_apply
#align mul_equiv.op_apply_apply MulEquiv.op_apply_apply
#align mul_equiv.op_apply_symm_apply MulEquiv.op_apply_symm_apply
#align mul_equiv.op_symm_apply_apply MulEquiv.op_symm_apply_apply
#align add_equiv.op_symm_apply_symm_apply AddEquiv.op_symm_apply_symm_apply
#align add_equiv.op_apply_apply AddEquiv.op_apply_apply
#align add_equiv.op_apply_symm_apply AddEquiv.op_apply_symm_apply
#align add_equiv.op_symm_apply_apply AddEquiv.op_symm_apply_apply

/-- The 'unopposite' of an iso `αᵐᵒᵖ ≃* βᵐᵒᵖ`. Inverse to `MulEquiv.op`. -/
@[to_additive (attr := simp)
  "The 'unopposite' of an iso `αᵃᵒᵖ ≃+ βᵃᵒᵖ`. Inverse to `AddEquiv.op`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Opposite/Variant353f2a28b5c910d53594265f3e1c2f7419209d2d9318479a2da2cea18c2b2503.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Opposite/Variant353f2a28b5c910d53594265f3e1c2f7419209d2d9318479a2da2cea18c2b2503.lean#L629).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1ca2c46bce4acd3347e80df2e59c38526de1d55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
