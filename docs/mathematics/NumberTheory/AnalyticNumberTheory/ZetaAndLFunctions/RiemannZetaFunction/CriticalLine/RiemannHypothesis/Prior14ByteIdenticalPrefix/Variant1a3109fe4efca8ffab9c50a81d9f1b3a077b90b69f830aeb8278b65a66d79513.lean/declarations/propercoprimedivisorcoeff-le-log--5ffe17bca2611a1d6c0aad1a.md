# properCoprimeDivisorCoeff_le_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8af4cd1-6a02-1551-0f27-771edeac2868",
  "kind": "theorem",
  "lexical_name": "properCoprimeDivisorCoeff_le_log",
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
  "slug": "propercoprimedivisorcoeff-le-log--5ffe17bca2611a1d6c0aad1a",
  "source": {
    "blob": "f9c7d5d0b4b2985ee924d219e38278ddec4920b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 76,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prior14ByteIdenticalPrefix/Variant1a3109fe4efca8ffab9c50a81d9f1b3a077b90b69f830aeb8278b65a66d79513.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ffe17bca2611a1d6c0aad1a1f534467d1c267439376f4fe5aaace3f4968f47b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prior14ByteIdenticalPrefix/Variant1a3109fe4efca8ffab9c50a81d9f1b3a077b90b69f830aeb8278b65a66d79513.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8af4cd1-6a02-1551-0f27-771edeac2868`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem properCoprimeDivisorCoeff_le_log (n : ℕ) :
    properCoprimeDivisorCoeff n ≤ Real.log (n : ℝ) := by
  unfold properCoprimeDivisorCoeff
  calc
    _ ≤ ∑ d ∈ n.divisors, ArithmeticFunction.vonMangoldt d := by
      apply Finset.sum_le_sum_of_subset_of_nonneg
      · exact properCoprimeDivisorInventory_subset_divisors n
      · intro d _ _
        exact ArithmeticFunction.vonMangoldt_nonneg
    _ = Real.log (n : ℝ) := ArithmeticFunction.vonMangoldt_sum

/-- Every coefficient below the first product has an empty filtered inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prior14ByteIdenticalPrefix/Variant1a3109fe4efca8ffab9c50a81d9f1b3a077b90b69f830aeb8278b65a66d79513.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prior14ByteIdenticalPrefix/Variant1a3109fe4efca8ffab9c50a81d9f1b3a077b90b69f830aeb8278b65a66d79513.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9c7d5d0b4b2985ee924d219e38278ddec4920b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
