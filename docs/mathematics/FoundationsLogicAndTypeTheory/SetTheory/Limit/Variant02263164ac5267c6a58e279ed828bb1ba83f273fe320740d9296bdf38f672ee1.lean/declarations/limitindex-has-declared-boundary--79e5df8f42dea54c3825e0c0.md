# limitIndex_has_declared_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb2b1424f4dece477ce9cf5ef06d420e42c69bbd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02263164ac5267c6a58e279ed828bb1ba83f273fe320740d9296bdf38f672ee1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fbe0f4af-bd9e-ca42-222d-90871b85bda5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29aa09b9-eb98-cbc5-994d-a21bb0ba4f7e",
  "kind": "theorem",
  "lexical_name": "limitIndex_has_declared_boundary",
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
  "slug": "limitindex-has-declared-boundary--79e5df8f42dea54c3825e0c0",
  "source": {
    "blob": "eb2b1424f4dece477ce9cf5ef06d420e42c69bbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Limit/Variant02263164ac5267c6a58e279ed828bb1ba83f273fe320740d9296bdf38f672ee1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79e5df8f42dea54c3825e0c0c99fdb9dc93ea102d7dc619ff987ad1d57b01b02",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Limit/Variant02263164ac5267c6a58e279ed828bb1ba83f273fe320740d9296bdf38f672ee1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29aa09b9-eb98-cbc5-994d-a21bb0ba4f7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem limitIndex_has_declared_boundary
    {registered : RegisteredCountableLimit}
    (certificate :
      LimitIndexCertificate registered) :
    (⨆ stage : Nat,
      (certificate.stageIndex stage).value) =
        registered.target := by
  apply le_antisymm
  · apply Ordinal.iSup_le
    intro stage
    rw [certificate.stageMatchesFundamentalSequence]
    exact (registered.belowTarget stage).le
  · apply le_of_forall_lt
    intro candidate candidate_lt
    obtain ⟨stage, stage_ge⟩ :=
      certificate.cofinal candidate_lt
    exact stage_ge.trans
      (Ordinal.le_iSup
        (fun n : Nat =>
          (certificate.stageIndex n).value)
        stage)

end Mathematics.StratifiedBoundary.OrdinalTally
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Limit/Variant02263164ac5267c6a58e279ed828bb1ba83f273fe320740d9296bdf38f672ee1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Limit/Variant02263164ac5267c6a58e279ed828bb1ba83f273fe320740d9296bdf38f672ee1.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb2b1424f4dece477ce9cf5ef06d420e42c69bbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
