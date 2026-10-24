# autMulEquivOfIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d072bca51603277bd9eb6a645857b412089c7902c261b609b3e5c008bb2a41ae",
  "kind": "def",
  "lexical_name": "autMulEquivOfIso",
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
  "slug": "autmulequivofiso--1fa3f7415f73bd736525728c",
  "source": {
    "blob": "b91f7da59da8316a6951fc8d48261136e17f9090",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 179,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant869dfa9c2c5e89bc1f04a6f85bc065b50df09a58195ff762a6676226f6c1ec75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1fa3f7415f73bd736525728c08257c7a1f1ab44e38cb1d4cf6d3b214919be17c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant869dfa9c2c5e89bc1f04a6f85bc065b50df09a58195ff762a6676226f6c1ec75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d072bca51603277bd9eb6a645857b412089c7902c261b609b3e5c008bb2a41ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def autMulEquivOfIso {X Y : C} (h : X ≅ Y) : Aut X ≃* Aut Y where
  toFun x := ⟨h.inv ≫ x.hom ≫ h.hom, h.inv ≫ x.inv ≫ h.hom, _, _⟩
  invFun y := ⟨h.hom ≫ y.hom ≫ h.inv, h.hom ≫ y.inv ≫ h.inv, _, _⟩
  left_inv _ := by aesop_cat
  right_inv _ := by aesop_cat
  map_mul' := by simp [Aut_mul_def]
set_option linter.uppercaseLean3 false in
#align category_theory.Aut.Aut_mul_equiv_of_iso CategoryTheory.Aut.autMulEquivOfIso

end Aut

namespace Functor

variable {D : Type u'} [Category.{v'} D] (f : C ⥤ D)

/-- `f.map` as a monoid hom between endomorphism monoids. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant869dfa9c2c5e89bc1f04a6f85bc065b50df09a58195ff762a6676226f6c1ec75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant869dfa9c2c5e89bc1f04a6f85bc065b50df09a58195ff762a6676226f6c1ec75.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b91f7da59da8316a6951fc8d48261136e17f9090` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
