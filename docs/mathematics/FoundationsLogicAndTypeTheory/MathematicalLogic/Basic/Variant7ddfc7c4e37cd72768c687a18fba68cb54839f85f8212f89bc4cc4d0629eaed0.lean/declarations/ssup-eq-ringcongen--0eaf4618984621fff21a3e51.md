# sSup_eq_ringConGen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0961f41bb9b50a676a61820d94f0a7f1e036f2e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 249,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7ddfc7c4e37cd72768c687a18fba68cb54839f85f8212f89bc4cc4d0629eaed0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:55995465-3710-d807-ef3b-87a5ed2c0ce8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a71bf69c-0001-4b56-4765-5e17982c9531",
  "kind": "theorem",
  "lexical_name": "sSup_eq_ringConGen",
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
  "slug": "ssup-eq-ringcongen--0eaf4618984621fff21a3e51",
  "source": {
    "blob": "0961f41bb9b50a676a61820d94f0a7f1e036f2e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 249,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7ddfc7c4e37cd72768c687a18fba68cb54839f85f8212f89bc4cc4d0629eaed0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0eaf4618984621fff21a3e5183427ed68393d2e9f051adb1c9a24265969b298b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7ddfc7c4e37cd72768c687a18fba68cb54839f85f8212f89bc4cc4d0629eaed0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a71bf69c-0001-4b56-4765-5e17982c9531`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sSup_eq_ringConGen (S : Set (RingCon R)) :
    sSup S = ringConGen fun x y => ∃ c : RingCon R, c ∈ S ∧ c x y := by
  rw [ringConGen_eq]
  apply congr_arg sInf
  ext
  exact ⟨fun h _ _ ⟨r, hr⟩ => h hr.1 hr.2, fun h r hS _ _ hr => h _ _ ⟨r, hS, hr⟩⟩

/-- The supremum of a set of congruence relations is the same as the smallest congruence relation
    containing the supremum of the set's image under the map to the underlying binary relation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7ddfc7c4e37cd72768c687a18fba68cb54839f85f8212f89bc4cc4d0629eaed0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7ddfc7c4e37cd72768c687a18fba68cb54839f85f8212f89bc4cc4d0629eaed0.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0961f41bb9b50a676a61820d94f0a7f1e036f2e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
