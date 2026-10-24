# admittedProposal_channels_in_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95a5172640f15d73127accaf507f1a991cdb5d93",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 436,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dde9a86e39a37c91f2dced32963cc126a4143984d03c151b51a237abf3f4f294.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34a66857-2160-2bd9-d3fc-19dfdfca4d25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a914438-ba42-e87b-d08d-42448dc22b3d",
  "kind": "theorem",
  "lexical_name": "admittedProposal_channels_in_range",
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
  "slug": "admittedproposal-channels-in-range--524e216d8b3123169f872a3e",
  "source": {
    "blob": "95a5172640f15d73127accaf507f1a991cdb5d93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 436,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantdde9a86e39a37c91f2dced32963cc126a4143984d03c151b51a237abf3f4f294.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:524e216d8b3123169f872a3e116b62fabfa5eb1bf9377ed1c3117f1da49e4dc7",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantdde9a86e39a37c91f2dced32963cc126a4143984d03c151b51a237abf3f4f294.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a914438-ba42-e87b-d08d-42448dc22b3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem admittedProposal_channels_in_range
    (admitted : AdmittedProposal Host EdgeId) :
    InRawRange xyzFormatV1 admitted.proposal.source.x ∧
      InRawRange xyzFormatV1 admitted.proposal.source.y ∧
      InRawRange xyzFormatV1 admitted.proposal.source.z ∧
      InRawRange xyzFormatV1 admitted.proposal.proposed.x ∧
      InRawRange xyzFormatV1 admitted.proposal.proposed.y ∧
      InRawRange xyzFormatV1 admitted.proposal.proposed.z := by
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [← admitted.sourceRawMatches.1]
    exact admitted.source.value.x.inRange
  · rw [← admitted.sourceRawMatches.2.1]
    exact admitted.source.value.y.inRange
  · rw [← admitted.sourceRawMatches.2.2]
    exact admitted.source.value.z.inRange
  · rw [← admitted.outputRawMatches.1]
    exact admitted.output.value.x.inRange
  · rw [← admitted.outputRawMatches.2.1]
    exact admitted.output.value.y.inRange
  · rw [← admitted.outputRawMatches.2.2]
    exact admitted.output.value.z.inRange

/-! ## Exact operational rejection theorems

Each statement exposes the successful earlier gates required for its named
rejection to have precedence.  Consequently these are theorems about the
actual result of `verifyProposal`, not restatements of fields that are already
present in an `AdmittedProposal`.
-/

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantdde9a86e39a37c91f2dced32963cc126a4143984d03c151b51a237abf3f4f294.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantdde9a86e39a37c91f2dced32963cc126a4143984d03c151b51a237abf3f4f294.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95a5172640f15d73127accaf507f1a991cdb5d93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
