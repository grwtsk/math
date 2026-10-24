# effectiveEpiStructOfRegularEpi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e1b95e54c93a5a05a7268a87c4c2a806ac42bc0b7fb7ac88337d84fe86f43c7",
  "kind": "def",
  "lexical_name": "effectiveEpiStructOfRegularEpi",
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
  "slug": "effectiveepistructofregularepi--a8413f5b641ca8e063d68cd4",
  "source": {
    "blob": "315af1d5be2eebab74997529251149e649bf8e42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 31,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Variantfaa74c3c7534b55c08d0e029eac28854f0363d1f4f70d61a002ba4a8cbd4a522.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8413f5b641ca8e063d68cd46cbe20cc47564f5f8a4cb9a65cd2cd53cb6d7503",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Variantfaa74c3c7534b55c08d0e029eac28854f0363d1f4f70d61a002ba4a8cbd4a522.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e1b95e54c93a5a05a7268a87c4c2a806ac42bc0b7fb7ac88337d84fe86f43c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def effectiveEpiStructOfRegularEpi {B X : C} (f : X ⟶ B) [RegularEpi f] :
    EffectiveEpiStruct f where
  desc _ h := Cofork.IsColimit.desc isColimit _ (h _ _ w)
  fac _ _ := Cofork.IsColimit.π_desc' isColimit _ _
  uniq _ _ _ hg := Cofork.IsColimit.hom_ext isColimit (hg.trans
    (Cofork.IsColimit.π_desc' _ _ _).symm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Variantfaa74c3c7534b55c08d0e029eac28854f0363d1f4f70d61a002ba4a8cbd4a522.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Variantfaa74c3c7534b55c08d0e029eac28854f0363d1f4f70d61a002ba4a8cbd4a522.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `315af1d5be2eebab74997529251149e649bf8e42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
