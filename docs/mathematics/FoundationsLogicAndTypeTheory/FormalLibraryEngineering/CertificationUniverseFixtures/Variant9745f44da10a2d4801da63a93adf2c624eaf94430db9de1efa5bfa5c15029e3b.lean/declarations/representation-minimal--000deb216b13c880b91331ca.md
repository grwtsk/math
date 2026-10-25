# representation_minimal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a177fb66a66ca48acd6f0f16df1c6cb075a98c7c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/9745f44da10a2d4801da63a93adf2c624eaf94430db9de1efa5bfa5c15029e3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50bb1977-7c9e-dbf3-979c-428d8515d871",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8afbdc1b-77d3-ebaf-d10f-a66f59d7161e",
  "kind": "theorem",
  "lexical_name": "representation_minimal",
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
  "slug": "representation-minimal--000deb216b13c880b91331ca",
  "source": {
    "blob": "a177fb66a66ca48acd6f0f16df1c6cb075a98c7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CertificationUniverseFixtures/Variant9745f44da10a2d4801da63a93adf2c624eaf94430db9de1efa5bfa5c15029e3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:000deb216b13c880b91331cac5845c36469e5760dabcbdbaefdd5bc96d1bcafd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CertificationUniverseFixtures/Variant9745f44da10a2d4801da63a93adf2c624eaf94430db9de1efa5bfa5c15029e3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8afbdc1b-77d3-ebaf-d10f-a66f59d7161e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem representation_minimal :
    SufficientRepresentation.IsMinimal.{u, v, w, a, b} representation := by
  intro R
  refine ⟨fun r => ⟨(R.recover ⟨()⟩ r).down⟩, ?_⟩
  funext s
  apply ULift.ext
  exact (congrArg ULift.down (R.recover_compress ⟨()⟩ s)).symm

/-- The lifted identity reconstruction retains the arbitrary competitor universe. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CertificationUniverseFixtures/Variant9745f44da10a2d4801da63a93adf2c624eaf94430db9de1efa5bfa5c15029e3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CertificationUniverseFixtures/Variant9745f44da10a2d4801da63a93adf2c624eaf94430db9de1efa5bfa5c15029e3b.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a177fb66a66ca48acd6f0f16df1c6cb075a98c7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
