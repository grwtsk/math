# acceptedTrace_operation_preserved

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9221b92-da85-c191-439a-65a40454f32b",
  "kind": "theorem",
  "lexical_name": "acceptedTrace_operation_preserved",
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
  "slug": "acceptedtrace-operation-preserved--4f166a265b49a9c9b4cd1d8b",
  "source": {
    "blob": "712d1f5bbead423413b1ce63df8a5673b7c33af6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1107,
    "line": 1095,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant97a3b22c491265612999cfeaadd630a2d4416f8f0ad85ce6723b7d3f4357a0be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f166a265b49a9c9b4cd1d8bff31a7b35c0aa9692d0849b359a14a9e9ab3820d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant97a3b22c491265612999cfeaadd630a2d4416f8f0ad85ce6723b7d3f4357a0be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9221b92-da85-c191-439a-65a40454f32b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1095–1107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem acceptedTrace_operation_preserved
    {Index : Type} {kernel : PositiveKernel Index} {dimension : Nat}
    {commitment : CanonicalTraceCommitment kernel dimension}
    (accepted : AcceptedTrace commitment)
    (row column : Fin dimension) :
    ∃ trace, decodeTrace commitment.traceWire = some trace ∧
      exactComplexToComplex (trace.gram.at row column) =
        finiteGram kernel commitment.formalIndices row column := by
  obtain ⟨trace, decoded, represented⟩ := acceptedTrace_represents accepted
  exact ⟨trace, decoded, represented row column⟩

/-- Point norms and canonical symbolic-factor-column digests are recomputed from the
accepted exact Gram rather than trusted as foreign annotations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant97a3b22c491265612999cfeaadd630a2d4416f8f0ad85ce6723b7d3f4357a0be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant97a3b22c491265612999cfeaadd630a2d4416f8f0ad85ce6723b7d3f4357a0be.lean#L1095).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `712d1f5bbead423413b1ce63df8a5673b7c33af6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
