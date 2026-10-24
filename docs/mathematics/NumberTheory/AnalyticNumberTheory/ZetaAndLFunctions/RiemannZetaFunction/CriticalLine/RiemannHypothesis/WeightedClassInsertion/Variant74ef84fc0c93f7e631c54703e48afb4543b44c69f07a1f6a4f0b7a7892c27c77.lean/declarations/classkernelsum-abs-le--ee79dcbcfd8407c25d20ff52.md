# classKernelSum_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d85a7e5413f0dd23799d93307307e26cb60d6845",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74ef84fc0c93f7e631c54703e48afb4543b44c69f07a1f6a4f0b7a7892c27c77.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b282c7a6-f3fc-4bac-1eb5-11f88699d7c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b9ae401-d000-0dd8-36ab-e8ff98a0fd53",
  "kind": "theorem",
  "lexical_name": "classKernelSum_abs_le",
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
  "slug": "classkernelsum-abs-le--ee79dcbcfd8407c25d20ff52",
  "source": {
    "blob": "d85a7e5413f0dd23799d93307307e26cb60d6845",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 113,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedClassInsertion/Variant74ef84fc0c93f7e631c54703e48afb4543b44c69f07a1f6a4f0b7a7892c27c77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee79dcbcfd8407c25d20ff527feca774d0a1b3fc6fdc16b64e3570cfc187f1bd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedClassInsertion/Variant74ef84fc0c93f7e631c54703e48afb4543b44c69f07a1f6a4f0b7a7892c27c77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b9ae401-d000-0dd8-36ab-e8ff98a0fd53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem classKernelSum_abs_le (A : ℝ) (h G : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h) :
    |classKernelSum A h G| ≤ (ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ)) *
      ∑ g ∈ Icc 1 G, 1 / (g : ℝ) := by
  unfold classKernelSum
  calc
    _ ≤ ∑ g ∈ Icc 1 G, |ThetaRemainder.thetaRemainder A (h * g ^ 2)| :=
      abs_sum_le_sum_abs _ _
    _ ≤ ∑ g ∈ Icc 1 G,
        (ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ)) * (1 / (g : ℝ)) := by
      apply sum_le_sum
      intro g hg
      exact classKernelTerm_abs_le A h g hA hh (mem_Icc.mp hg).1
    _ = _ := (mul_sum _ _ _).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedClassInsertion/Variant74ef84fc0c93f7e631c54703e48afb4543b44c69f07a1f6a4f0b7a7892c27c77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedClassInsertion/Variant74ef84fc0c93f7e631c54703e48afb4543b44c69f07a1f6a4f0b7a7892c27c77.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d85a7e5413f0dd23799d93307307e26cb60d6845` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
