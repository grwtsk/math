# preservesFilteredColimitsOfSize_of_univLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89569a13-608a-d5df-4a14-21a5300e0983",
  "kind": "lemma",
  "lexical_name": "preservesFilteredColimitsOfSize_of_univLE",
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
  "slug": "preservesfilteredcolimitsofsize-of-univle--a27d82cea98e7d0f2dfb8e14",
  "source": {
    "blob": "638cb1e7ce036f9f50cfafa42327f1f8bbbd3270",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 70,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a27d82cea98e7d0f2dfb8e1429b893746dd3aedaaeb34bd845c1f3da42f838f1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89569a13-608a-d5df-4a14-21a5300e0983`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesFilteredColimitsOfSize_of_univLE (F : C ⥤ D) [UnivLE.{w, w'}]
    [UnivLE.{w₂, w₂'}] [PreservesFilteredColimitsOfSize.{w', w₂'} F] :
      PreservesFilteredColimitsOfSize.{w, w₂} F where
  preserves_filtered_colimits J _ _ := by
    let e := ((ShrinkHoms.equivalence J).trans <| Shrink.equivalence _).symm
    haveI := IsFiltered.of_equivalence e.symm
    exact preservesColimitsOfShape_of_equiv e F

/--
`PreservesFilteredColimitsOfSize_shrink.{w, w'} F` tries to obtain
`PreservesFilteredColimitsOfSize.{w, w'} F` from some other `PreservesFilteredColimitsOfSize F`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `638cb1e7ce036f9f50cfafa42327f1f8bbbd3270` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
