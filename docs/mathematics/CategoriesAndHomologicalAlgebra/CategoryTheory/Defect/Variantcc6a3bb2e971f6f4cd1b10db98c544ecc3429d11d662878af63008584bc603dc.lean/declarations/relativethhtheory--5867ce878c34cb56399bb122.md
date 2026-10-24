# RelativeTHHTheory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ffbd68db93580b036d574e643c0a907860ff814c8639108e7e6c0edd1e6687d5",
  "kind": "structure",
  "lexical_name": "RelativeTHHTheory",
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
  "slug": "relativethhtheory--5867ce878c34cb56399bb122",
  "source": {
    "blob": "b3a445de3002486e981bdc4ded9e74c8b21de089",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Defect/Variantcc6a3bb2e971f6f4cd1b10db98c544ecc3429d11d662878af63008584bc603dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5867ce878c34cb56399bb122946805c73a0b9146074912b2288de94983e5a568",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Defect/Variantcc6a3bb2e971f6f4cd1b10db98c544ecc3429d11d662878af63008584bc603dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ffbd68db93580b036d574e643c0a907860ff814c8639108e7e6c0edd1e6687d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RelativeTHHTheory where
  Algebra : Type uSource
  SpectrumLike : Type uSpectrum
  [instCategoryAlgebra : Category.{vSource} Algebra]
  [instCategorySpectrumLike : Category.{vSpectrum} SpectrumLike]

  THH : Algebra → SpectrumLike
  relativeTHH : {A B : Algebra} → (A ⟶ B) → SpectrumLike
  comparison :
    {A B : Algebra} →
      (f : A ⟶ B) →
        relativeTHH f ⟶ THH B

attribute [instance] RelativeTHHTheory.instCategoryAlgebra
  RelativeTHHTheory.instCategorySpectrumLike

/-- Optional cyclotomic refinements of a supplied relative-THH interface. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Defect/Variantcc6a3bb2e971f6f4cd1b10db98c544ecc3429d11d662878af63008584bc603dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Defect/Variantcc6a3bb2e971f6f4cd1b10db98c544ecc3429d11d662878af63008584bc603dc.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3a445de3002486e981bdc4ded9e74c8b21de089` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
