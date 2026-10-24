# Grp.forget₂MonAdj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:302ab2fa577da3b4b523ccbd3e723b07dbfe9272fbcd4b22f260c80ebdac2d81",
  "kind": "def",
  "lexical_name": "Grp.forget₂MonAdj",
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
  "slug": "grp-forget-monadj--53bd265570a9d090dc8ffa65",
  "source": {
    "blob": "a720e881e5c9db31be3ea8540696d5ac4e75bc5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 185,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant0767a2f2c39fcd90d5cae44d542541895435fd834d6a44a0595d0063d4f1cfa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53bd265570a9d090dc8ffa65cc5f97d7e22b1951be69185e64572ee0c7beed0e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant0767a2f2c39fcd90d5cae44d542541895435fd834d6a44a0595d0063d4f1cfa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:302ab2fa577da3b4b523ccbd3e723b07dbfe9272fbcd4b22f260c80ebdac2d81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Grp.forget₂MonAdj : forget₂ Grp MonCat ⊣ MonCat.units.{u} := Adjunction.mk' {
  homEquiv _ Y :=
    { toFun f := ofHom (MonoidHom.toHomUnits f.hom)
      invFun f := MonCat.ofHom ((Units.coeHom Y).comp f.hom)
      left_inv _ := MonCat.ext fun _ => rfl
      right_inv _ := Grp.ext fun _ => Units.ext rfl }
  unit :=
    { app X := ofHom (@toUnits X _)
      naturality _ _ _ := Grp.ext fun _ => Units.ext rfl }
  counit :=
    { app X := MonCat.ofHom (Units.coeHom X)
      naturality _ _ _ := MonCat.ext fun _ => rfl } }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant0767a2f2c39fcd90d5cae44d542541895435fd834d6a44a0595d0063d4f1cfa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant0767a2f2c39fcd90d5cae44d542541895435fd834d6a44a0595d0063d4f1cfa5.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a720e881e5c9db31be3ea8540696d5ac4e75bc5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
