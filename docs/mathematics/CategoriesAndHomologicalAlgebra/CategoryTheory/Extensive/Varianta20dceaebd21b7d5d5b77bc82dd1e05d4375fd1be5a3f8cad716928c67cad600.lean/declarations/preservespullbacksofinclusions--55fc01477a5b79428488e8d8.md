# PreservesPullbacksOfInclusions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e6ad43ccd11bb556c4e2a8f389893dc8b9c51d2c5735f5b0a71061b0fa856ca",
  "kind": "class",
  "lexical_name": "PreservesPullbacksOfInclusions",
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
  "slug": "preservespullbacksofinclusions--55fc01477a5b79428488e8d8",
  "source": {
    "blob": "400fb56da10be156e6cd5ef700f13a535fe5b96e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 77,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Varianta20dceaebd21b7d5d5b77bc82dd1e05d4375fd1be5a3f8cad716928c67cad600.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55fc01477a5b79428488e8d81eb7aa0f2e0936bff2ce9e9db1f14be0c62a2693",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Varianta20dceaebd21b7d5d5b77bc82dd1e05d4375fd1be5a3f8cad716928c67cad600.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e6ad43ccd11bb556c4e2a8f389893dc8b9c51d2c5735f5b0a71061b0fa856ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class PreservesPullbacksOfInclusions {C : Type*} [Category* C] {D : Type*} [Category* D]
    (F : C ⥤ D) [HasBinaryCoproducts C] where
  [preservesPullbackInl : ∀ {X Y Z : C} (f : Z ⟶ X ⨿ Y), PreservesLimit (cospan coprod.inl f) F]

attribute [instance] PreservesPullbacksOfInclusions.preservesPullbackInl

/-- A category is (finitary) pre-extensive if it has finite coproducts,
and binary coproducts are universal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Varianta20dceaebd21b7d5d5b77bc82dd1e05d4375fd1be5a3f8cad716928c67cad600.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Varianta20dceaebd21b7d5d5b77bc82dd1e05d4375fd1be5a3f8cad716928c67cad600.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `400fb56da10be156e6cd5ef700f13a535fe5b96e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
