# property_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c30470ac-5247-7ebd-42ae-c996063ce107",
  "kind": "theorem",
  "lexical_name": "property_formula",
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
  "slug": "property-formula--2db96e3a292272c1d45e5d67",
  "source": {
    "blob": "3afd23ac4163eb20e47f4eea799c3367960c3cfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1693,
    "line": 1682,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant96619f87217b73a35a28f88cf2d0fa9f230a8facfb23acad8c65a83f3763bf7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2db96e3a292272c1d45e5d67a87213e81a8af38167dc9b9c5852cd46864ed89e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant96619f87217b73a35a28f88cf2d0fa9f230a8facfb23acad8c65a83f3763bf7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c30470ac-5247-7ebd-42ae-c996063ce107`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1682–1693.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem property_formula (t : Fin 7) {v : Expr S} (hv : HasType P Γ v B.predType) (mv :
  WellModed γ v .data) :
    L.Formula (B.property L.code KY.code KP.code t v) := by
  fin_cases t
  · exact H.propertyG_formula KY KP hv mv
  · exact H.propertyC_formula KY KP 0 hv mv
  · exact H.propertyC_formula KY KP 1 hv mv
  · exact H.propertyC_formula KY KP 2 hv mv
  · exact H.propertyE_formula KY KP 1 hv mv
  · exact H.propertyE_formula KY KP 2 hv mv
  · exact H.propertyR_formula KY KP hv mv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant96619f87217b73a35a28f88cf2d0fa9f230a8facfb23acad8c65a83f3763bf7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant96619f87217b73a35a28f88cf2d0fa9f230a8facfb23acad8c65a83f3763bf7b.lean#L1682).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3afd23ac4163eb20e47f4eea799c3367960c3cfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
