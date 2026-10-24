# reference_source_inner_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f22632e575fbc6c29335331ed074746915b35fc7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 17,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fd786eeff50614d57aec9a69e02ab749d075f2ded029d51a74f930fc018ed2c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99821afa-4766-d6d3-e250-a0a47d64a18a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1550106-9609-c32c-92a3-1faed072d289",
  "kind": "theorem",
  "lexical_name": "reference_source_inner_re",
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
  "slug": "reference-source-inner-re--5df0ac8d006b01a037f97a65",
  "source": {
    "blob": "f22632e575fbc6c29335331ed074746915b35fc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 17,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarController/Variant3fd786eeff50614d57aec9a69e02ab749d075f2ded029d51a74f930fc018ed2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5df0ac8d006b01a037f97a65e935390e842c207082e805b660a6b949d4a7664f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarController/Variant3fd786eeff50614d57aec9a69e02ab749d075f2ded029d51a74f930fc018ed2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1550106-9609-c32c-92a3-1faed072d289`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reference_source_inner_re :
    (inner ℂ referenceVector (sourceOperator referenceVector)).re = kappa / 2 := by
  have h := exponential_inner_sourceOperator 1 (by norm_num) referenceVector
  change inner ℂ referenceVector (sourceOperator referenceVector) =
    actualLaplace 1 * inner ℂ referenceVector referenceVector at h
  have hr : inner ℂ referenceVector referenceVector = (1 / 2 : ℂ) := by
    change inner ℂ referenceVector (exponentialVector 1 (by norm_num)) = _
    rw [inner_reference_exponential]
    norm_num
  rw [hr] at h
  rw [h]
  simp [Complex.mul_re, kappa, div_eq_mul_inv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarController/Variant3fd786eeff50614d57aec9a69e02ab749d075f2ded029d51a74f930fc018ed2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarController/Variant3fd786eeff50614d57aec9a69e02ab749d075f2ded029d51a74f930fc018ed2c.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f22632e575fbc6c29335331ed074746915b35fc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
