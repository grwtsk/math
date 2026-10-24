# preadditiveYoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c7bd795f9b0ec442bef7ec7ab0dd1074678d1d3c91f98c04c58cc97a2fa93003",
  "kind": "def",
  "lexical_name": "preadditiveYoneda",
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
  "slug": "preadditiveyoneda--e173b101192e05394d73526b",
  "source": {
    "blob": "7408e4fd011f1376bf2ce3be26db58e5bb6df21b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 52,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e173b101192e05394d73526b7aff1e086253ac0365e1d31129e4bcd59266c8d8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c7bd795f9b0ec442bef7ec7ab0dd1074678d1d3c91f98c04c58cc97a2fa93003`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preadditiveYoneda : C ⥤ Cᵒᵖ ⥤ AddCommGrp.{v} where
  obj Y := preadditiveYonedaObj Y ⋙ forget₂ _ _
  map f :=
    { app := fun _ => AddCommGrp.ofHom
        { toFun := fun g => g ≫ f
          map_zero' := Limits.zero_comp
          map_add' := fun _ _ => add_comp _ _ _ _ _ _ }
      naturality := fun _ _ _ => AddCommGrp.ext fun _ => Category.assoc _ _ _ }

/-- The Yoneda embedding for preadditive categories sends an object `X` to the copresheaf sending an
object `Y` to the `End X`-module of morphisms `X ⟶ Y`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7408e4fd011f1376bf2ce3be26db58e5bb6df21b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
