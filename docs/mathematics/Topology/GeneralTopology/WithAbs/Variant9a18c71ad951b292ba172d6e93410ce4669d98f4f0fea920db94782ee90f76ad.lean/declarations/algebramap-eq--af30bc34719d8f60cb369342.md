# algebraMap_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7dae5619196cc0d3a3edf283e68a9241a9691aa8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a18c71ad951b292ba172d6e93410ce4669d98f4f0fea920db94782ee90f76ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a023127-1508-513f-5902-daf3ba7733fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e688d44-f021-d275-579c-771d6cabba66",
  "kind": "theorem",
  "lexical_name": "algebraMap_eq",
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
  "slug": "algebramap-eq--af30bc34719d8f60cb369342",
  "source": {
    "blob": "7dae5619196cc0d3a3edf283e68a9241a9691aa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 142,
    "path": "GRWTSK/Topology/GeneralTopology/WithAbs/Variant9a18c71ad951b292ba172d6e93410ce4669d98f4f0fea920db94782ee90f76ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af30bc34719d8f60cb369342b753eaefd5f266f5c3951893f54e3f9d938dcb3a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WithAbs/Variant9a18c71ad951b292ba172d6e93410ce4669d98f4f0fea920db94782ee90f76ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e688d44-f021-d275-579c-771d6cabba66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algebraMap_eq : algebraMap v.Completion w.Completion =
    UniformSpace.Completion.mapRingHom (WithAbs.map v w (algebraMap K L))
      (WithAbs.isometry_map v w).continuous := by
  refine DFunLike.ext' (extension_unique ?_ ?_ ?_).symm
  · exact (uniformContinuous_coe (WithAbs w)).comp (isometry_map v w).uniformContinuous
  · exact uniformContinuous_addMonoidHom_of_continuous (continuous_algebraMap _ _)
  · exact fun _ ↦ IsScalarTower.algebraMap_apply ..

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WithAbs/Variant9a18c71ad951b292ba172d6e93410ce4669d98f4f0fea920db94782ee90f76ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WithAbs/Variant9a18c71ad951b292ba172d6e93410ce4669d98f4f0fea920db94782ee90f76ad.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7dae5619196cc0d3a3edf283e68a9241a9691aa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
