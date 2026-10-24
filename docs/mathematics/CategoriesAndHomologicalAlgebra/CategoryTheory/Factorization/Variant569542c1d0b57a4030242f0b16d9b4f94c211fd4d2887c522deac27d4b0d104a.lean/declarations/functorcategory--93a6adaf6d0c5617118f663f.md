# functorCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f907878d877f224d32bf5e9eb9d8319111898c599c2068a42445fad5a32bbad",
  "kind": "def",
  "lexical_name": "functorCategory",
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
  "slug": "functorcategory--93a6adaf6d0c5617118f663f",
  "source": {
    "blob": "6200283e213a2171b1c8f09d0531e9810ad63c7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 207,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:93a6adaf6d0c5617118f663f28aa545d984cea35caf50a0bf9aeba42391dc129",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f907878d877f224d32bf5e9eb9d8319111898c599c2068a42445fad5a32bbad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def functorCategory :
    FunctorialFactorizationData (W₁.functorCategory J) (W₂.functorCategory J) where
  Z := functorCategory.Z data J
  i := { app := fun f => { app := fun j => (data.factorizationData (f.hom.app j)).i } }
  p := { app := fun f => { app := fun j => (data.factorizationData (f.hom.app j)).p } }
  hi _ _ := data.hi _
  hp _ _ := data.hp _

end

end FunctorialFactorizationData

/-- The functorial factorization axiom for two classes of morphisms `W₁` and `W₂` in a
category `C`. It asserts that any morphism can be factored in a functorial manner
as a morphism in `W₁` followed by a morphism in `W₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6200283e213a2171b1c8f09d0531e9810ad63c7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
