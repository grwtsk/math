# isEventuallyConstant_of_isNoetherianObject

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09970580-bba4-31c6-b7c6-97cb178c2498",
  "kind": "lemma",
  "lexical_name": "isEventuallyConstant_of_isNoetherianObject",
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
  "slug": "iseventuallyconstant-of-isnoetherianobject--a478894304a810da83e54599",
  "source": {
    "blob": "3794b8f9b9f5bf9e4c198b68dbda64ad78d384a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 111,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant1fb21182a2576c6ea46a86de7247a595903be2adfa2378163bbb962a0a72c9c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a478894304a810da83e545991cc04252fdd7cdac0f3e235f8d0df525ba3e1511",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant1fb21182a2576c6ea46a86de7247a595903be2adfa2378163bbb962a0a72c9c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09970580-bba4-31c6-b7c6-97cb178c2498`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isEventuallyConstant_of_isNoetherianObject [IsNoetherianObject X]
    (F : ℕ ⥤ MonoOver X) : IsFiltered.IsEventuallyConstant F :=
  (isNoetherianObject_iff_isEventuallyConstant X).1 inferInstance F

variable {X Y}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant1fb21182a2576c6ea46a86de7247a595903be2adfa2378163bbb962a0a72c9c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant1fb21182a2576c6ea46a86de7247a595903be2adfa2378163bbb962a0a72c9c3.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3794b8f9b9f5bf9e4c198b68dbda64ad78d384a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
