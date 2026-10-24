# SemiSimplexCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bdb128ebb79f37a6f3931747c579f0c920f9510856f436093d538ae9c717641d",
  "kind": "structure",
  "lexical_name": "SemiSimplexCategory",
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
  "slug": "semisimplexcategory--28c079f1d6ed2d22bb0b95b6",
  "source": {
    "blob": "3225b3698150b35a68ab6fad2599daa5e7b4abf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 31,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SemiSimplexCategory/Variantd83431814b02e0b164dd838f511b68249aaa9f2752b9261f4488bdfa46f2ae4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28c079f1d6ed2d22bb0b95b6e1fe43f4c6ef3b2682f408a695453cf73422ed28",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SemiSimplexCategory/Variantd83431814b02e0b164dd838f511b68249aaa9f2752b9261f4488bdfa46f2ae4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bdb128ebb79f37a6f3931747c579f0c920f9510856f436093d538ae9c717641d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SemiSimplexCategory : Type where
  /-- Constructor `ℕ → SemiSimplexCategory`. -/
  mk ::
  /-- The length of an object in `SemiSimplexCategory` -/
  len : ℕ

namespace SemiSimplexCategory

/-- The object of `SemiSimplexCategory` corresponding to `n : ℕ` is denoted `⦋n⦌ₛ`. -/
scoped[Simplicial] notation "⦋" n "⦌ₛ" => SemiSimplexCategory.mk n

/-- The type of morphisms in the semi-simplex category are order embeddings.
This type is made irreducible: use `SemiSimplexCategory.homEquiv` to make
the conversion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SemiSimplexCategory/Variantd83431814b02e0b164dd838f511b68249aaa9f2752b9261f4488bdfa46f2ae4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SemiSimplexCategory/Variantd83431814b02e0b164dd838f511b68249aaa9f2752b9261f4488bdfa46f2ae4a.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3225b3698150b35a68ab6fad2599daa5e7b4abf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
