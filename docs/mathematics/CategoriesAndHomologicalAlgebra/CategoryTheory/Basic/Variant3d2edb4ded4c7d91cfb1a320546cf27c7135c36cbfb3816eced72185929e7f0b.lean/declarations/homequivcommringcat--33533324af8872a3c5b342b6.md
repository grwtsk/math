# homEquivCommRingCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72cc9e79903b311a6f1c8c87c3780d669fc013bd95c5b94aae7fc6350ace9cf4",
  "kind": "def",
  "lexical_name": "homEquivCommRingCat",
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
  "slug": "homequivcommringcat--33533324af8872a3c5b342b6",
  "source": {
    "blob": "7722e974c9f4501bb566acf024a10e0a6706ec40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 161,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3d2edb4ded4c7d91cfb1a320546cf27c7135c36cbfb3816eced72185929e7f0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33533324af8872a3c5b342b64e97577299b047ef7a72ebea3d5af90731486e51",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3d2edb4ded4c7d91cfb1a320546cf27c7135c36cbfb3816eced72185929e7f0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72cc9e79903b311a6f1c8c87c3780d669fc013bd95c5b94aae7fc6350ace9cf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homEquivCommRingCat :
    (A ⟶ B) ≃ {f : CommRingCat.of A ⟶ ↧B // f.hom.comp (algebraMap R A) = algebraMap R B} where
  toFun f := ⟨CommRingCat.ofHom f.hom, congr($f.hom.comp_algebraMap)⟩
  invFun f := CommAlgCat.ofHom ⟨f.val.hom, fun r ↦ congr($f.prop r)⟩
  left_inv _ := rfl
  right_inv _ := rfl

/-- Build an isomorphism in the category `CommAlgCat R` from an `AlgEquiv` between commutative
`Algebra`s. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3d2edb4ded4c7d91cfb1a320546cf27c7135c36cbfb3816eced72185929e7f0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3d2edb4ded4c7d91cfb1a320546cf27c7135c36cbfb3816eced72185929e7f0b.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7722e974c9f4501bb566acf024a10e0a6706ec40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
