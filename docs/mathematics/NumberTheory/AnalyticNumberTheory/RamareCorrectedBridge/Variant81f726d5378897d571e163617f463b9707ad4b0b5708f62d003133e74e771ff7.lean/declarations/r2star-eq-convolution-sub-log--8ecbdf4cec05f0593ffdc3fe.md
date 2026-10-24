# r2Star_eq_convolution_sub_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc5d4f7bddc48e8e02422bac8d7b700317c7436c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 472,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf9fd598-439b-bb53-2486-7ef65f57ce2c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bbce17b6-065d-543a-6b65-1f8e1a2079e4",
  "kind": "theorem",
  "lexical_name": "r2Star_eq_convolution_sub_log",
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
  "slug": "r2star-eq-convolution-sub-log--8ecbdf4cec05f0593ffdc3fe",
  "source": {
    "blob": "fc5d4f7bddc48e8e02422bac8d7b700317c7436c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 472,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ecbdf4cec05f0593ffdc3fedc1c03ff18e12038ecac9220e9610a2f01758e66",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbce17b6-065d-543a-6b65-1f8e1a2079e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 472–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem r2Star_eq_convolution_sub_log (N : Nat) :
    r2Star N =
      (∑ n ∈ Finset.Icc 1 N,
        (ArithmeticFunction.vonMangoldt *
          ArithmeticFunction.vonMangoldt) n) -
      (∑ n ∈ Finset.Icc 1 N,
        ArithmeticFunction.vonMangoldt n * Real.log n) +
      2 * (N : Real) * Real.eulerMascheroniConstant := by
  unfold r2Star r2Coeff
  rw [Finset.sum_add_distrib, Finset.sum_sub_distrib]
  simp only [Finset.sum_const, Nat.card_Icc]
  push_cast
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean#L472).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc5d4f7bddc48e8e02422bac8d7b700317c7436c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
