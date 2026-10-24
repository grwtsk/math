# MonoidalCategory.inducingFunctorData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa86ade7c705cb0daffb2c6e3bad1012c36cf3fb9db4c206a5f2f6188c7a5f14",
  "kind": "def",
  "lexical_name": "MonoidalCategory.inducingFunctorData",
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
  "slug": "monoidalcategory-inducingfunctordata--0bf6d3195f8542dae87d2a7d",
  "source": {
    "blob": "97bc570523d1a8edb28ee6edb555105902439ad3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 57,
    "path": "GRWTSK/Algebra/LinearAlgebra/Monoidal/Variant8eaaca29a740e3ab30c421b76ab6e7c4a043eca4a13706c5ec38fdac3133dcdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bf6d3195f8542dae87d2a7d5ced6250d7c4b4f930eda4077adfe7db92990fea",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Monoidal/Variant8eaaca29a740e3ab30c421b76ab6e7c4a043eca4a13706c5ec38fdac3133dcdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa86ade7c705cb0daffb2c6e3bad1012c36cf3fb9db4c206a5f2f6188c7a5f14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def MonoidalCategory.inducingFunctorData :
    Monoidal.InducingFunctorData (forget₂ (CoalgCat R) (ModuleCat R)) where
  μIso _ _ := Iso.refl _
  whiskerLeft_eq X Y Z f := by ext; rfl
  whiskerRight_eq X f := by ext; rfl
  tensorHom_eq f g := by ext; rfl
  εIso := Iso.refl _
  associator_eq X Y Z := ModuleCat.hom_ext <| TensorProduct.ext <| TensorProduct.ext <| by ext; rfl
  leftUnitor_eq X := ModuleCat.hom_ext <| TensorProduct.ext <| by ext; rfl
  rightUnitor_eq X := ModuleCat.hom_ext <| TensorProduct.ext <| by ext; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Monoidal/Variant8eaaca29a740e3ab30c421b76ab6e7c4a043eca4a13706c5ec38fdac3133dcdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Monoidal/Variant8eaaca29a740e3ab30c421b76ab6e7c4a043eca4a13706c5ec38fdac3133dcdc.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97bc570523d1a8edb28ee6edb555105902439ad3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
