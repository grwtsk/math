# restrictedYoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5edaa2afd0701c8cc73def2442a7e48d5ddec1d8edb65ef6f913807464e3a8a",
  "kind": "def",
  "lexical_name": "restrictedYoneda",
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
  "slug": "restrictedyoneda--74798d19787989abb2fabeea",
  "source": {
    "blob": "cbe835578c22a4d4df1754fedfaedf7f6615d933",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 223,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7d42fe729ebec1ae9d9390c2117309b7bd4e41edafea266dfe162a017979c015.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74798d19787989abb2fabeea2483163e1de74da0fb457b6737aa75b8ea71b64a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7d42fe729ebec1ae9d9390c2117309b7bd4e41edafea266dfe162a017979c015.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5edaa2afd0701c8cc73def2442a7e48d5ddec1d8edb65ef6f913807464e3a8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrictedYoneda (A : Cᵒᵖ ⥤ Type v) :
    Over A ⥤ (CostructuredArrow yoneda A)ᵒᵖ ⥤ Type v where
  obj η := restrictedYonedaObj η.hom
  map ε := restrictedYonedaObjMap₁ ε.left ε.w

/-- Further restricting the functor
`restrictedYoneda : Over A ⥤ (CostructuredArrow yoneda A)ᵒᵖ ⥤ Type v` along the forgetful
functor in the first argument recovers the Yoneda embedding
`CostructuredArrow yoneda A ⥤ (CostructuredArrow yoneda A)ᵒᵖ ⥤ Type v`. This basically follows
from the fact that the Yoneda embedding on `C` is fully faithful. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7d42fe729ebec1ae9d9390c2117309b7bd4e41edafea266dfe162a017979c015.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7d42fe729ebec1ae9d9390c2117309b7bd4e41edafea266dfe162a017979c015.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbe835578c22a4d4df1754fedfaedf7f6615d933` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
