# IsZero.of_full_of_faithful_of_isZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "313829cbd48dbb54d72a5fdf51811251b14dca5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 218,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/16dbf7daab126ea3d8e146745c02ea718895eedfa5c808e60836cab91266716a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6377b15b-cbde-2c87-b1bf-147a3d21f66d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f51230c-f917-5773-2fe1-61165121816c",
  "kind": "lemma",
  "lexical_name": "IsZero.of_full_of_faithful_of_isZero",
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
  "slug": "iszero-of-full-of-faithful-of-iszero--f6e4bd8401afcd7168e53705",
  "source": {
    "blob": "313829cbd48dbb54d72a5fdf51811251b14dca5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 218,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant16dbf7daab126ea3d8e146745c02ea718895eedfa5c808e60836cab91266716a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6e4bd8401afcd7168e53705ba58ddf69935bd705c2da19e5f7394773912e663",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant16dbf7daab126ea3d8e146745c02ea718895eedfa5c808e60836cab91266716a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f51230c-f917-5773-2fe1-61165121816c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsZero.of_full_of_faithful_of_isZero
    (F : C ⥤ D) [F.Full] [F.Faithful] (X : C) (hX : IsZero (F.obj X)) :
    IsZero X := by
  have h : F.FullyFaithful := .ofFullyFaithful _
  have (Y : C) := (hX.unique_to (F.obj Y)).some
  have (Y : C) := (hX.unique_from (F.obj Y)).some
  exact ⟨fun Y ↦ ⟨h.homEquiv.unique⟩, fun Y ↦ ⟨h.homEquiv.unique⟩⟩

namespace HasZeroObject

variable [HasZeroObject C]

/-- There is a unique morphism from the zero object to any object `X`. -/
@[to_dual (attr := instance_reducible)
/-- There is a unique morphism from any object `X` to the zero object. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant16dbf7daab126ea3d8e146745c02ea718895eedfa5c808e60836cab91266716a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant16dbf7daab126ea3d8e146745c02ea718895eedfa5c808e60836cab91266716a.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `313829cbd48dbb54d72a5fdf51811251b14dca5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
