# four_mode_coverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d33175d49dd960b739df0216197def0c4bc1ea0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd1d345c65bf7935e2c2ee219758cc25c4b74c67fc2efe6c9a2a54f1ddc49d0e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fae96631-afb9-21fb-e7c2-54c6e647e80f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79282bad-5830-9331-4901-17b1b190112e",
  "kind": "theorem",
  "lexical_name": "four_mode_coverage",
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
  "slug": "four-mode-coverage--1c41e7cef06e02bc09edae3a",
  "source": {
    "blob": "d33175d49dd960b739df0216197def0c4bc1ea0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 70,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coverage/Variantfd1d345c65bf7935e2c2ee219758cc25c4b74c67fc2efe6c9a2a54f1ddc49d0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c41e7cef06e02bc09edae3a5f894537f13425288ce6c42418c1c27db62aad9d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Coverage/Variantfd1d345c65bf7935e2c2ee219758cc25c4b74c67fc2efe6c9a2a54f1ddc49d0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79282bad-5830-9331-4901-17b1b190112e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem four_mode_coverage (theory : InvariantTheory) :
    let presentations := fourModePresentation theory
    presentations.formalHypotactic.mode = .formalHypotaxis ∧
    presentations.formalParatactic.mode = .formalParataxis ∧
    presentations.pragmaticParatactic.mode = .pragmaticParataxis ∧
    presentations.pragmaticHypotactic.mode = .pragmaticHypotaxis ∧
    classify origin presentations.formalHypotactic.coordinate =
      .formalHypotaxis ∧
    classify origin presentations.formalParatactic.coordinate =
      .formalParataxis ∧
    classify origin presentations.pragmaticParatactic.coordinate =
      .pragmaticParataxis ∧
    classify origin presentations.pragmaticHypotactic.coordinate =
      .pragmaticHypotaxis ∧
    presentations.formalHypotactic.semanticValue =
      presentations.formalParatactic.semanticValue ∧
    presentations.formalParatactic.semanticValue =
      presentations.pragmaticParatactic.semanticValue ∧
      presentations.pragmaticParatactic.semanticValue =
      presentations.pragmaticHypotactic.semanticValue := by
  norm_num [fourModePresentation, classify, quadrantCoordinate, origin]

/-- Every target Boolean state has exactly one scalar relative to the baseline. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Coverage/Variantfd1d345c65bf7935e2c2ee219758cc25c4b74c67fc2efe6c9a2a54f1ddc49d0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coverage/Variantfd1d345c65bf7935e2c2ee219758cc25c4b74c67fc2efe6c9a2a54f1ddc49d0e.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d33175d49dd960b739df0216197def0c4bc1ea0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
