# AddMonoidHom.toMultiplicative''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcc5f7f360a4365771c875d9453734f03f68646e66baab178ccb4138f2699623",
  "kind": "def",
  "lexical_name": "AddMonoidHom.toMultiplicative''",
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
  "slug": "addmonoidhom-tomultiplicative--4c572ccc148b4fd2a1124b3c",
  "source": {
    "blob": "af27d0d9e5d5e06f9ed01668f0706b434cac2f92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 470,
    "path": "GRWTSK/Algebra/GroupTheory/TypeTags/Variant7542c0f3c67b58a0f32a6ed94b90d22e5c12f90ab4cde5fbc9591dfd645646bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c572ccc148b4fd2a1124b3c9c7e9d17ef4566c9b0b004f8a714206264a1746a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/TypeTags/Variant7542c0f3c67b58a0f32a6ed94b90d22e5c12f90ab4cde5fbc9591dfd645646bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcc5f7f360a4365771c875d9453734f03f68646e66baab178ccb4138f2699623`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddMonoidHom.toMultiplicative'' [AddZeroClass α] [MulOneClass β] :
    (α →+ Additive β) ≃ (Multiplicative α →* β) where
  toFun f := {
    toFun := fun a => toMul (f (toAdd a))
    map_mul' := f.map_add
    map_one' := f.map_zero
  }
  invFun f := {
    toFun := fun a => ofMul (f (ofAdd a))
    map_add' := f.map_mul
    map_zero' := f.map_one
  }
  left_inv _ := rfl
  right_inv _ := rfl
#align add_monoid_hom.to_multiplicative'' AddMonoidHom.toMultiplicative''
#align add_monoid_hom.to_multiplicative''_symm_apply_apply AddMonoidHom.toMultiplicative''_symm_apply_apply
#align add_monoid_hom.to_multiplicative''_apply_apply AddMonoidHom.toMultiplicative''_apply_apply

/-- Reinterpret `Multiplicative α →* β` as `α →+ Additive β`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/TypeTags/Variant7542c0f3c67b58a0f32a6ed94b90d22e5c12f90ab4cde5fbc9591dfd645646bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/TypeTags/Variant7542c0f3c67b58a0f32a6ed94b90d22e5c12f90ab4cde5fbc9591dfd645646bc.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af27d0d9e5d5e06f9ed01668f0706b434cac2f92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
