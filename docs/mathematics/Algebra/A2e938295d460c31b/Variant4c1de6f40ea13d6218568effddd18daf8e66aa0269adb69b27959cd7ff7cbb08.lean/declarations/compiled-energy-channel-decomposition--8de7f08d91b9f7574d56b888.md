# compiled_energy_channel_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba59d7e21e30ff8548bfccd520c05df50b1cf377",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 14,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c1de6f40ea13d6218568effddd18daf8e66aa0269adb69b27959cd7ff7cbb08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6bb7df2d-c0e7-c5f3-fc63-8d844204d816",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35252fb7-d82e-1f74-cf4c-11ccab5e68e7",
  "kind": "theorem",
  "lexical_name": "compiled_energy_channel_decomposition",
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
  "slug": "compiled-energy-channel-decomposition--8de7f08d91b9f7574d56b888",
  "source": {
    "blob": "ba59d7e21e30ff8548bfccd520c05df50b1cf377",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 14,
    "path": "GRWTSK/Algebra/A2e938295d460c31b/Variant4c1de6f40ea13d6218568effddd18daf8e66aa0269adb69b27959cd7ff7cbb08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8de7f08d91b9f7574d56b888cd6b96054fb8a05e43ba87524e3779cb146a636e",
  "verification": {
    "reference": "docs/verification/Algebra/A2e938295d460c31b/Variant4c1de6f40ea13d6218568effddd18daf8e66aa0269adb69b27959cd7ff7cbb08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35252fb7-d82e-1f74-cf4c-11ccab5e68e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compiled_energy_channel_decomposition
    (samples : Fin sampleCount → Residual) :
    compiledTotalEnergy samples =
      compiledEnergy samples Residual.localResidual +
      compiledEnergy samples Residual.coverageResidual +
      compiledEnergy samples Residual.sparseSynthesisResidual +
      compiledEnergy samples Residual.basisSpanResidual +
      compiledEnergy samples Residual.eventCycleResidual +
      compiledEnergy samples Residual.twistedCohomologyResidual := by
  simp [compiledTotalEnergy, compiledEnergy, Residual.total,
    Finset.sum_add_distrib]

end Mathematics.Trajectory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/A2e938295d460c31b/Variant4c1de6f40ea13d6218568effddd18daf8e66aa0269adb69b27959cd7ff7cbb08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/A2e938295d460c31b/Variant4c1de6f40ea13d6218568effddd18daf8e66aa0269adb69b27959cd7ff7cbb08.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba59d7e21e30ff8548bfccd520c05df50b1cf377` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
