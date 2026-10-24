# fourthCumulant_eq_centeredFourth_sub_pairings

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9640606c4deca2edf568c65cb20b9a96bcc50dfe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 343,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b56865bb-f13f-6e5c-2655-90a19439a236",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:594375a6-4e8a-8da7-e70d-c9e476e5b013",
  "kind": "theorem",
  "lexical_name": "fourthCumulant_eq_centeredFourth_sub_pairings",
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
  "slug": "fourthcumulant-eq-centeredfourth-sub-pairings--1cb3217a1ee02115aaea3852",
  "source": {
    "blob": "9640606c4deca2edf568c65cb20b9a96bcc50dfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 343,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cb3217a1ee02115aaea38523d3a94fc8ba6d8eae218ce8de4c9fa7d9b25411e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:594375a6-4e8a-8da7-e70d-c9e476e5b013`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourthCumulant_eq_centeredFourth_sub_pairings
    (theta u v w z : E) :
    F.fourthCumulantCovector theta u v w z =
      F.fourthCentralMomentOperator theta u v w z
        -
      F.covarianceOperator theta u v *
        F.covarianceOperator theta w z
        -
      F.covarianceOperator theta u w *
        F.covarianceOperator theta v z
        -
      F.covarianceOperator theta u z *
        F.covarianceOperator theta v w := by
  rw [F.fourthCumulantCovector_apply,
    ← F.fourthCentralMomentOperator_apply,
    F.covarianceOperator_symmetric theta z w,
    F.covarianceOperator_symmetric theta z v,
    F.covarianceOperator_symmetric theta z u]
  ring

/-- Literal fourth iterated Fréchet derivative of the log-partition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9640606c4deca2edf568c65cb20b9a96bcc50dfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
