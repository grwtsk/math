# green_discrepancy_pairing_add_homogeneous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3f96770236168de80834b6d732470241bd593d92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5c2ad5af8da2f8b8093744e70862196ab15d89d6d0c787de9e1955339cd757e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6019d2ae-d1cb-d3af-bc5a-bd2909e7c3cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70cb0798-a89c-ef71-c843-71873621ef3c",
  "kind": "theorem",
  "lexical_name": "green_discrepancy_pairing_add_homogeneous",
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
  "slug": "green-discrepancy-pairing-add-homogeneous--42c08ca4580167c180049420",
  "source": {
    "blob": "3f96770236168de80834b6d732470241bd593d92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 79,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleGreenGauge/Variantf5c2ad5af8da2f8b8093744e70862196ab15d89d6d0c787de9e1955339cd757e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42c08ca4580167c180049420a1e65dfbd091c850a62c88fdc9318bab56a1047b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleGreenGauge/Variantf5c2ad5af8da2f8b8093744e70862196ab15d89d6d0c787de9e1955339cd757e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70cb0798-a89c-ef71-c843-71873621ef3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem green_discrepancy_pairing_add_homogeneous (A : ℝ) (hA : 1 ≤ A)
    (g f : ℝ → ℝ) (hg : ContDiff ℝ 4 g) (hf : ContDiff ℝ 4 f)
    (hcf : HasCompactSupport f) (hzero : ∀ t, poleSquaredDifferentialOperator g t = 0) :
    (∫ t, (primeSquareGreenResidual A t + g t) * poleSquaredDifferentialOperator f t) =
      lowerPowerDiscrepancy A ⟨f, hf.continuous⟩ := by
  simp_rw [add_mul]
  rw [integral_add (prime_square_green_operator_integrable A hA f hf hcf)
    (homogeneous_operator_pairing_integrable g f hg hf hcf),
    prime_square_green_weak_discrepancy A hA f hf hcf,
    homogeneous_operator_pairing_zero g f hg hf hcf hzero, add_zero]

/-- Every ordinary or generalized pole mode is an exact homogeneous gauge freedom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleGreenGauge/Variantf5c2ad5af8da2f8b8093744e70862196ab15d89d6d0c787de9e1955339cd757e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleGreenGauge/Variantf5c2ad5af8da2f8b8093744e70862196ab15d89d6d0c787de9e1955339cd757e.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f96770236168de80834b6d732470241bd593d92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
