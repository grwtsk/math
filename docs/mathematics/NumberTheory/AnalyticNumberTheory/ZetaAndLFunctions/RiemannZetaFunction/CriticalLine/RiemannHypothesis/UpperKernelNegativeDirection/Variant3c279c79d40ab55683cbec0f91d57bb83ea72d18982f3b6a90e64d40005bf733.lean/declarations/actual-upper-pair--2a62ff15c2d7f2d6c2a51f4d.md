# actual_upper_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ef771d2e14b81a25b5a6aefc222ebc0b8fc1326a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 21,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c279c79d40ab55683cbec0f91d57bb83ea72d18982f3b6a90e64d40005bf733.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f35f579-322e-a114-6c06-e0916422ad61",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b5f8ab3-17b9-8092-def9-ab4a9de0a600",
  "kind": "theorem",
  "lexical_name": "actual_upper_pair",
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
  "slug": "actual-upper-pair--2a62ff15c2d7f2d6c2a51f4d",
  "source": {
    "blob": "ef771d2e14b81a25b5a6aefc222ebc0b8fc1326a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 21,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperKernelNegativeDirection/Variant3c279c79d40ab55683cbec0f91d57bb83ea72d18982f3b6a90e64d40005bf733.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a62ff15c2d7f2d6c2a51f4d43a240ec7b0254aa7cabfd52709bdd7a37337bf4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperKernelNegativeDirection/Variant3c279c79d40ab55683cbec0f91d57bb83ea72d18982f3b6a90e64d40005bf733.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b5f8ab3-17b9-8092-def9-ab4a9de0a600`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_upper_pair :
    23 ∈ Ioc (⌊Real.exp (Real.log (32 : ℝ))⌋₊ / 2) ⌊Real.exp (Real.log (32 : ℝ))⌋₊ ∧
    17 ∈ Ioc (⌊Real.exp (Real.log (32 : ℝ))⌋₊ / 2) ⌊Real.exp (Real.log (32 : ℝ))⌋₊ := by
  norm_num [Real.exp_log (by norm_num : (0 : ℝ) < 32), Finset.mem_Ioc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperKernelNegativeDirection/Variant3c279c79d40ab55683cbec0f91d57bb83ea72d18982f3b6a90e64d40005bf733.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperKernelNegativeDirection/Variant3c279c79d40ab55683cbec0f91d57bb83ea72d18982f3b6a90e64d40005bf733.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef771d2e14b81a25b5a6aefc222ebc0b8fc1326a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
