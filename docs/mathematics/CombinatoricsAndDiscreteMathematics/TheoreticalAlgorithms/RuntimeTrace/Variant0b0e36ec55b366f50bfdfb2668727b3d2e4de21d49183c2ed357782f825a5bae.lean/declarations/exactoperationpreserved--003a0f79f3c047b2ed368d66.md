# exactOperationPreserved

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1454ae34-5a02-d860-a2ea-d7481a3cc737",
  "kind": "theorem",
  "lexical_name": "exactOperationPreserved",
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
  "slug": "exactoperationpreserved--003a0f79f3c047b2ed368d66",
  "source": {
    "blob": "c1d6688e2546382505a31947d4bc4ed050c1897e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 136,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuntimeTrace/Variant0b0e36ec55b366f50bfdfb2668727b3d2e4de21d49183c2ed357782f825a5bae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:003a0f79f3c047b2ed368d66ed17fc3433209a9e9880edcb1a3ce25cda2acb33",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuntimeTrace/Variant0b0e36ec55b366f50bfdfb2668727b3d2e4de21d49183c2ed357782f825a5bae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1454ae34-5a02-d860-a2ea-d7481a3cc737`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exactOperationPreserved :
    ∃ manifest request trace operator formalOutput,
      decodeManifest submission.manifestWire = some manifest ∧
      decodeRequest submission.requestWire = some request ∧
      decodeTrace submission.traceWire = some trace ∧
      manifest.findOperator request.operatorId = some operator ∧
      operator.matrix.apply request.input = some formalOutput ∧
      trace.observedOutput = formalOutput :=
  acceptedTrace_operation_preserved exactSubmissionAccepted

/-! An alternate manifest can be wholly self-consistent and therefore pass the
bounded verifier.  It still cannot pass production acceptance against the
repository-selected commitment. -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuntimeTrace/Variant0b0e36ec55b366f50bfdfb2668727b3d2e4de21d49183c2ed357782f825a5bae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuntimeTrace/Variant0b0e36ec55b366f50bfdfb2668727b3d2e4de21d49183c2ed357782f825a5bae.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d6688e2546382505a31947d4bc4ed050c1897e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
