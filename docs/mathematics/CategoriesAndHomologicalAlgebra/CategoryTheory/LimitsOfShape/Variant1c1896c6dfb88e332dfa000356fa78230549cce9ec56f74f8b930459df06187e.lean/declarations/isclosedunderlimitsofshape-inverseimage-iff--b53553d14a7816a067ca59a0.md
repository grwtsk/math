# isClosedUnderLimitsOfShape_inverseImage_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7ff2cdc-4aa2-6d21-ff4a-ad01310da09c",
  "kind": "lemma",
  "lexical_name": "isClosedUnderLimitsOfShape_inverseImage_iff",
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
  "slug": "isclosedunderlimitsofshape-inverseimage-iff--b53553d14a7816a067ca59a0",
  "source": {
    "blob": "9c885cc5e9fcf9515654585e37977719b8ec9583",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 264,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfShape/Variant1c1896c6dfb88e332dfa000356fa78230549cce9ec56f74f8b930459df06187e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b53553d14a7816a067ca59a0e572444040f328ca5c463c351948b15370a93df6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfShape/Variant1c1896c6dfb88e332dfa000356fa78230549cce9ec56f74f8b930459df06187e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7ff2cdc-4aa2-6d21-ff4a-ad01310da09c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isClosedUnderLimitsOfShape_inverseImage_iff (P : ObjectProperty D)
    [P.IsClosedUnderIsomorphisms] (e : C ≌ D) :
    (P.inverseImage e.functor).IsClosedUnderLimitsOfShape J ↔ P.IsClosedUnderLimitsOfShape J := by
  refine ⟨fun H ↦ ?_, fun _ ↦ inferInstance⟩
  convert!
    (inferInstance :
      ((P.inverseImage e.functor).inverseImage e.inverse).IsClosedUnderLimitsOfShape J)
  ext X
  simpa using P.prop_iff_of_iso (e.counitIso.app X).symm

end ObjectProperty

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfShape/Variant1c1896c6dfb88e332dfa000356fa78230549cce9ec56f74f8b930459df06187e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfShape/Variant1c1896c6dfb88e332dfa000356fa78230549cce9ec56f74f8b930459df06187e.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c885cc5e9fcf9515654585e37977719b8ec9583` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
