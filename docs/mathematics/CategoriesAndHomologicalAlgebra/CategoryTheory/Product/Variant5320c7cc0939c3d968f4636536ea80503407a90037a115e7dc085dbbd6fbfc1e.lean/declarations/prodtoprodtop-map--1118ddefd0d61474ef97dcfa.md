# prodToProdTop_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cefcf85f-62c7-8f7f-4988-ea10513b9e9a",
  "kind": "theorem",
  "lexical_name": "prodToProdTop_map",
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
  "slug": "prodtoprodtop-map--1118ddefd0d61474ef97dcfa",
  "source": {
    "blob": "5595ef618a86af2931f7b701a5a580cc616ad996",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 191,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1118ddefd0d61474ef97dcfa74c0a5ffa3c66159c529c58ed9db4b25d77a70c5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cefcf85f-62c7-8f7f-4988-ea10513b9e9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prodToProdTop_map {x₀ x₁ : πₓ A} {y₀ y₁ : πₓ B} (p₀ : x₀ ⟶ x₁) (p₁ : y₀ ⟶ y₁) :
    (prodToProdTop A B).map (X := (x₀, y₀)) (Y := (x₁, y₁)) (p₀, p₁) =
      Path.Homotopic.prod p₀ p₁ :=
  rfl
#align fundamental_groupoid_functor.prod_to_prod_Top_map FundamentalGroupoidFunctor.prodToProdTop_map

/-- Shows `prodToProdTop` is an isomorphism, whose inverse is precisely the product
of the induced left and right projections.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant5320c7cc0939c3d968f4636536ea80503407a90037a115e7dc085dbbd6fbfc1e.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5595ef618a86af2931f7b701a5a580cc616ad996` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
