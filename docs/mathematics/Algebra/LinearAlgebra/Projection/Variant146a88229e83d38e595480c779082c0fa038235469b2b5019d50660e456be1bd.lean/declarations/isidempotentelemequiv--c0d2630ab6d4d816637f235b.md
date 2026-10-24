# isIdempotentElemEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cefc2b9edbddec90024584463505dd9eca0c8c5d0c8e80967ee4fc7377f8789e",
  "kind": "def",
  "lexical_name": "isIdempotentElemEquiv",
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
  "slug": "isidempotentelemequiv--c0d2630ab6d4d816637f235b",
  "source": {
    "blob": "c8301c1e1a16cdc65d3910803feb624ad9bebff3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 354,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projection/Variant146a88229e83d38e595480c779082c0fa038235469b2b5019d50660e456be1bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0d2630ab6d4d816637f235b61a94b5ce6046f5bec134e0e8fb45aba5b003fde",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projection/Variant146a88229e83d38e595480c779082c0fa038235469b2b5019d50660e456be1bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cefc2b9edbddec90024584463505dd9eca0c8c5d0c8e80967ee4fc7377f8789e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def isIdempotentElemEquiv :
    { f : Module.End R E // IsIdempotentElem f ∧ range f = p } ≃
    { f : E →ₗ[R] p // ∀ x : p, f x = x } where
  toFun f := ⟨f.1.codRestrict _ fun x ↦ by simp_rw [← f.2.2]; exact mem_range_self f.1 x,
    fun ⟨x, hx⟩ ↦ Subtype.ext <| by
      obtain ⟨x, rfl⟩ := f.2.2.symm ▸ hx
      exact DFunLike.congr_fun f.2.1 x⟩
  invFun f := ⟨p.subtype ∘ₗ f.1, LinearMap.ext fun x ↦ by simp [f.2], le_antisymm
    ((range_comp_le_range _ _).trans_eq p.range_subtype)
    fun x hx ↦ ⟨x, Subtype.ext_iff.1 <| f.2 ⟨x, hx⟩⟩⟩
  left_inv _ := rfl
  right_inv _ := rfl

end Submodule

namespace LinearMap

open Submodule

/--
A linear endomorphism of a module `E` is a projection onto a submodule `p` if it sends every element
of `E` to `p` and fixes every element of `p`.
The definition allow more generally any `FunLike` type and not just linear maps, so that it can be
used for example with `ContinuousLinearMap` or `Matrix`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projection/Variant146a88229e83d38e595480c779082c0fa038235469b2b5019d50660e456be1bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projection/Variant146a88229e83d38e595480c779082c0fa038235469b2b5019d50660e456be1bd.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8301c1e1a16cdc65d3910803feb624ad9bebff3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
