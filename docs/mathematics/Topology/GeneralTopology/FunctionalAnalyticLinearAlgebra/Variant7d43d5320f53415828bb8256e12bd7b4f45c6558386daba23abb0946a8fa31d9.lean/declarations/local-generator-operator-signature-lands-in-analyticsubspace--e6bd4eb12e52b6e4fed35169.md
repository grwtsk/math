# local_generator_operator_signature_lands_in_analyticSubspace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "238d9fa2019c172305c471d42655127b6b2b02a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 363,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b49ae753-e317-8106-55c4-388b9d709aa2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f81ad6f-3978-f79a-246d-c0dcae68088a",
  "kind": "theorem",
  "lexical_name": "local_generator_operator_signature_lands_in_analyticSubspace",
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
  "slug": "local-generator-operator-signature-lands-in-analyticsubspace--e6bd4eb12e52b6e4fed35169",
  "source": {
    "blob": "238d9fa2019c172305c471d42655127b6b2b02a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 363,
    "path": "GRWTSK/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6bd4eb12e52b6e4fed351697ad5d3637345f325121ce23761d721f68cb06d3f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f81ad6f-3978-f79a-246d-c0dcae68088a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem local_generator_operator_signature_lands_in_analyticSubspace
    (S : LocalGeneratorOperatorSignature (K := K)
      (Global := Global) (Local := Local) (Coeff := Coeff) (Data := Data))
    {F : Global} {d : Data}
    (h : S.dataPredicate F d) :
    S.context.restrict.toLinearMap F ∈ S.context.analyticSubspace :=
  local_coefficient_fiber_witness_lands_in_analyticSubspace S.context
    (S.recognizesFiber F d h)

/--
Intrinsic global function signature of an analytic generator after linear
functional-analytic normalization.

Generator data must produce a coefficient family in the global equalizer and
identification fiber.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variant7d43d5320f53415828bb8256e12bd7b4f45c6558386daba23abb0946a8fa31d9.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `238d9fa2019c172305c471d42655127b6b2b02a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
