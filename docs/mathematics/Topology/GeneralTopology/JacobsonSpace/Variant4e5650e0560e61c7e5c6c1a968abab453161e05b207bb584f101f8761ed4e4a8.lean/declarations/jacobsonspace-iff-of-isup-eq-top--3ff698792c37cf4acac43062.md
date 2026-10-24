# jacobsonSpace_iff_of_iSup_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "789a939a8cea22ee0d0408b4fcac220fae0ff75e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:520453ff-5253-b8ed-2d0b-a794f24bd293",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba2f103b-021f-3de6-af9b-0e87c0494367",
  "kind": "lemma",
  "lexical_name": "jacobsonSpace_iff_of_iSup_eq_top",
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
  "slug": "jacobsonspace-iff-of-isup-eq-top--3ff698792c37cf4acac43062",
  "source": {
    "blob": "789a939a8cea22ee0d0408b4fcac220fae0ff75e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 176,
    "path": "GRWTSK/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ff698792c37cf4acac43062d5b7ea71b689aaa485f66ec5ffc5819a49448790",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba2f103b-021f-3de6-af9b-0e87c0494367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma jacobsonSpace_iff_of_iSup_eq_top {ι : Type*} {U : ι → Opens X} (hU : iSup U = ⊤) :
    JacobsonSpace X ↔ ∀ i, JacobsonSpace (U i) :=
  (IsOpenCover.mk hU).jacobsonSpace_iff
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `789a939a8cea22ee0d0408b4fcac220fae0ff75e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
