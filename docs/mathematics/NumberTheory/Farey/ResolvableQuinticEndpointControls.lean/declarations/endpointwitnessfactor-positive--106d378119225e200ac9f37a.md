# endpointWitnessFactor_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6246d38f-8d0a-224b-d823-eec20ba63ce0",
  "kind": "theorem",
  "lexical_name": "endpointWitnessFactor_positive",
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
  "slug": "endpointwitnessfactor-positive--106d378119225e200ac9f37a",
  "source": {
    "blob": "28d8456db1dc7c6243b51275b8216e3f1ff89c71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 67,
    "path": "GRWTSK/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:106d378119225e200ac9f37a3ba11019613a23f9c5b13e99a650ab9f38577199",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6246d38f-8d0a-224b-d823-eec20ba63ce0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem endpointWitnessFactor_positive :
    0 < endpointWitnessFactor.eval endpointWitnessCell.left ∧
      0 < endpointWitnessFactor.eval endpointWitnessCell.right := by
  constructor
  · norm_num [endpointWitnessCell, Cell.left, endpointWitnessFactor,
      Polynomial.eval_add, Polynomial.eval_sub]
  · norm_num [endpointWitnessCell, Cell.right, endpointWitnessFactor,
      Polynomial.eval_add, Polynomial.eval_sub]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28d8456db1dc7c6243b51275b8216e3f1ff89c71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
