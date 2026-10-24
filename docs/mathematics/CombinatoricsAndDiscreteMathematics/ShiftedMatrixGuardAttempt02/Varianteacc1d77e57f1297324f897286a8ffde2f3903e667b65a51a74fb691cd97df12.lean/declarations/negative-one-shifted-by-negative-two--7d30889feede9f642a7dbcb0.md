# negative_one_shifted_by_negative_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "261fe003f823aff3c01e126ce6c94a629c5532bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/eacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f26243c3-358d-8160-199d-2f1e61898383",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2b5d048-aed4-e13f-6463-cf7e2850b3f9",
  "kind": "theorem",
  "lexical_name": "negative_one_shifted_by_negative_two",
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
  "slug": "negative-one-shifted-by-negative-two--7d30889feede9f642a7dbcb0",
  "source": {
    "blob": "261fe003f823aff3c01e126ce6c94a629c5532bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d30889feede9f642a7dbcb0b58d1f6ebc5fd556fb42b3609a1fb85d7cc12bb4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2b5d048-aed4-e13f-6463-cf7e2850b3f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negative_one_shifted_by_negative_two :
    shifted (- (1 : Matrix (Fin 1) (Fin 1) ℝ)) (-2) = 1 := by
  ext i j
  fin_cases i
  fin_cases j
  norm_num [shifted]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt02/Varianteacc1d77e57f1297324f897286a8ffde2f3903e667b65a51a74fb691cd97df12.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `261fe003f823aff3c01e126ce6c94a629c5532bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
