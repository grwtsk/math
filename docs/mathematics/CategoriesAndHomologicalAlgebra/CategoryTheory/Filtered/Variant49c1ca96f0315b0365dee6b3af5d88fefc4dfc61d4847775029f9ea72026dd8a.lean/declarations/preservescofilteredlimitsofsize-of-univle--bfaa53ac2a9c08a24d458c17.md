# preservesCofilteredLimitsOfSize_of_univLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:956b44b1-c05b-2484-15fc-b782ad843411",
  "kind": "lemma",
  "lexical_name": "preservesCofilteredLimitsOfSize_of_univLE",
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
  "slug": "preservescofilteredlimitsofsize-of-univle--bfaa53ac2a9c08a24d458c17",
  "source": {
    "blob": "638cb1e7ce036f9f50cfafa42327f1f8bbbd3270",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 186,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfaa53ac2a9c08a24d458c172f6ebb36e2ed1ebfc80b74bef7a3e6d0b49da21c",
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

Occurrence: `result:956b44b1-c05b-2484-15fc-b782ad843411`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesCofilteredLimitsOfSize_of_univLE (F : C ⥤ D) [UnivLE.{w, w'}]
    [UnivLE.{w₂, w₂'}] [PreservesCofilteredLimitsOfSize.{w', w₂'} F] :
      PreservesCofilteredLimitsOfSize.{w, w₂} F where
  preserves_cofiltered_limits J _ _ := by
    let e := ((ShrinkHoms.equivalence J).trans <| Shrink.equivalence _).symm
    haveI := IsCofiltered.of_equivalence e.symm
    exact preservesLimitsOfShape_of_equiv e F

/--
`PreservesCofilteredLimitsOfSizeShrink.{w, w'} F` tries to obtain
`PreservesCofilteredLimitsOfSize.{w, w'} F` from some other `PreservesCofilteredLimitsOfSize F`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant49c1ca96f0315b0365dee6b3af5d88fefc4dfc61d4847775029f9ea72026dd8a.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `638cb1e7ce036f9f50cfafa42327f1f8bbbd3270` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
