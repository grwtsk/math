# projected_core_is_center

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e86ff6e18643cc18d51a6555bdc3e31ecfbaae0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 11,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/15c4aeb1d27e6de31d468c04689dd297facfe2a9ae5bb9252d22194ef0ced12c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee04d4fa-1170-616c-253d-9f8acbae9e0c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f68e819-759e-8351-adb5-5947cf410654",
  "kind": "theorem",
  "lexical_name": "projected_core_is_center",
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
  "slug": "projected-core-is-center--ef6661c5c30765f7fb0f1ae1",
  "source": {
    "blob": "7e86ff6e18643cc18d51a6555bdc3e31ecfbaae0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 15,
    "line": 11,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RadoProjectionCorrect/Variant15c4aeb1d27e6de31d468c04689dd297facfe2a9ae5bb9252d22194ef0ced12c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef6661c5c30765f7fb0f1ae17db4be8a1edd6c262747f4590610d3895e99ff64",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RadoProjectionCorrect/Variant15c4aeb1d27e6de31d468c04689dd297facfe2a9ae5bb9252d22194ef0ced12c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f68e819-759e-8351-adb5-5947cf410654`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–15.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem projected_core_is_center :
    Think.Pipeline.Center.RadoProjectedHeatflow.canonicalizationPass.projectedCore =
      "formal/Think/Pipeline/Center" :=
  Think.Pipeline.Center.RadoProjectedHeatflow.projectedCore_is_center

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RadoProjectionCorrect/Variant15c4aeb1d27e6de31d468c04689dd297facfe2a9ae5bb9252d22194ef0ced12c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RadoProjectionCorrect/Variant15c4aeb1d27e6de31d468c04689dd297facfe2a9ae5bb9252d22194ef0ced12c.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e86ff6e18643cc18d51a6555bdc3e31ecfbaae0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
