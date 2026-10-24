# fstEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3968428fe2a59870c5e4ae4572342c3c07f8c2c024044574c5c697700ba740a6",
  "kind": "def",
  "lexical_name": "fstEquiv",
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
  "slug": "fstequiv--9c98e6ee45a90d1b3b4c7b49",
  "source": {
    "blob": "8eca3c9a17e67a231655ea81c7531716c597ab9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 631,
    "line": 618,
    "path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant5c3b7650f6531f44b8b6373a8d0857792bfce5d7818b6559a50f4ec7453d3e4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c98e6ee45a90d1b3b4c7b490a71240849a4e0c2d024bcd98ce87a5908a32aa7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Prod/Variant5c3b7650f6531f44b8b6373a8d0857792bfce5d7818b6559a50f4ec7453d3e4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3968428fe2a59870c5e4ae4572342c3c07f8c2c024044574c5c697700ba740a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 618–631.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fstEquiv : Submodule.fst R M M₂ ≃ₗ[R] M where -- Porting note: proofs were `tidy` or `simp`
  toFun x := x.1.1
  invFun m := ⟨⟨m, 0⟩, by simp only [fst, comap_bot, mem_ker, snd_apply]⟩
  map_add' := by simp only [AddSubmonoid.coe_add, coe_toAddSubmonoid, Prod.fst_add, Subtype.forall,
    implies_true, Prod.forall, forall_const]
  map_smul' := by simp only [SetLike.val_smul, Prod.smul_fst, RingHom.id_apply, Subtype.forall,
    implies_true, Prod.forall, forall_const]
  left_inv := by
    rintro ⟨⟨x, y⟩, hy⟩
    simp only [fst, comap_bot, mem_ker, snd_apply] at hy
    simpa only [Subtype.mk.injEq, Prod.mk.injEq, true_and] using hy.symm
  right_inv := by rintro x; rfl
#align submodule.fst_equiv Submodule.fstEquiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Prod/Variant5c3b7650f6531f44b8b6373a8d0857792bfce5d7818b6559a50f4ec7453d3e4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Prod/Variant5c3b7650f6531f44b8b6373a8d0857792bfce5d7818b6559a50f4ec7453d3e4f.lean#L618).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eca3c9a17e67a231655ea81c7531716c597ab9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
