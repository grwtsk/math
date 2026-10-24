# phaseResidues_targets_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b129d3f371524a86c93b1a0950e5ae0c0e0fe716",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a7fbbe631eb9b1388f256469699a0eb9b9e67f47d0f0ed1b52a61155c8910eaf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b3509a27-4b96-caff-7d09-98e4fd961468",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae97d454-1ade-0a1c-c07c-ddbdc68921a5",
  "kind": "theorem",
  "lexical_name": "phaseResidues_targets_correct",
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
  "slug": "phaseresidues-targets-correct--481b87a3f37a705b0c5c8dd4",
  "source": {
    "blob": "b129d3f371524a86c93b1a0950e5ae0c0e0fe716",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1132,
    "line": 1124,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f42617369632e6c65616e/Varianta7fbbe631eb9b1388f256469699a0eb9b9e67f47d0f0ed1b52a61155c8910eaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:481b87a3f37a705b0c5c8dd475587dfab59d5eeae8565b61ca64ba254f8c2d86",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f42617369632e6c65616e/Varianta7fbbe631eb9b1388f256469699a0eb9b9e67f47d0f0ed1b52a61155c8910eaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae97d454-1ade-0a1c-c07c-ddbdc68921a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1124–1132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phaseResidues_targets_correct :
    ∀ r ∈ phaseResidues, r.target = Target.CenterWeightedPipeline := by
  intro r hr
  rw [phaseResidues] at hr
  rcases List.mem_flatMap.mp hr with ⟨p, _hp, hrp⟩
  rw [Phase.residues] at hrp
  rcases List.mem_map.mp hrp with ⟨spec, _hs, rfl⟩
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f42617369632e6c65616e/Varianta7fbbe631eb9b1388f256469699a0eb9b9e67f47d0f0ed1b52a61155c8910eaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f42617369632e6c65616e/Varianta7fbbe631eb9b1388f256469699a0eb9b9e67f47d0f0ed1b52a61155c8910eaf.lean#L1124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b129d3f371524a86c93b1a0950e5ae0c0e0fe716` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
