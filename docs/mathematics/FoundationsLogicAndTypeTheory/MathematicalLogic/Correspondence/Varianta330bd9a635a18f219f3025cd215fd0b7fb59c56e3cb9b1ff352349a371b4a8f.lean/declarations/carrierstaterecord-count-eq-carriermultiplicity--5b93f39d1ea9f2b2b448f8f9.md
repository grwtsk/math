# carrierStateRecord_count_eq_carrierMultiplicity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "01e449b1ce55c96a5a58f8604a4bec00e5cc678d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a330bd9a635a18f219f3025cd215fd0b7fb59c56e3cb9b1ff352349a371b4a8f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74b5cb6b-3663-2f75-35c2-eb6ee3e30166",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea1efd8b-8b98-6b4d-fbdb-6c2488aa3521",
  "kind": "theorem",
  "lexical_name": "carrierStateRecord_count_eq_carrierMultiplicity",
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
  "slug": "carrierstaterecord-count-eq-carriermultiplicity--5b93f39d1ea9f2b2b448f8f9",
  "source": {
    "blob": "01e449b1ce55c96a5a58f8604a4bec00e5cc678d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 160,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Varianta330bd9a635a18f219f3025cd215fd0b7fb59c56e3cb9b1ff352349a371b4a8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b93f39d1ea9f2b2b448f8f948aa4fc7848fc3c72be01649c057f62cff620cc1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Varianta330bd9a635a18f219f3025cd215fd0b7fb59c56e3cb9b1ff352349a371b4a8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea1efd8b-8b98-6b4d-fbdb-6c2488aa3521`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem carrierStateRecord_count_eq_carrierMultiplicity
    {size carrierCount : Nat}
    (record : CarrierStateRecord size carrierCount) :
    carrierCount = carrierMultiplicity size record.point :=
  (abstractCarrierState record).carrierCount_eq_carrierMultiplicity

/-! ## Codec invocation records -/

/-- A checked runtime codec invocation and its exact profile equation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Varianta330bd9a635a18f219f3025cd215fd0b7fb59c56e3cb9b1ff352349a371b4a8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Varianta330bd9a635a18f219f3025cd215fd0b7fb59c56e3cb9b1ff352349a371b4a8f.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01e449b1ce55c96a5a58f8604a4bec00e5cc678d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
