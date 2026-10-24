# actual_prime_green_le_complete_minus_squares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc053b01-36e7-7c26-050d-8728b2b1fcfb",
  "kind": "theorem",
  "lexical_name": "actual_prime_green_le_complete_minus_squares",
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
  "slug": "actual-prime-green-le-complete-minus-squares--73ce8bbfbf5bac1bb5105214",
  "source": {
    "blob": "6b16730c050b3cd2ef7231fa0cbe242da3c29599",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 90,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareGreen/Variantdc8bfb60f6a788f61290a891d11aac4166dea8f44e84cac888d3349197ff9556.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73ce8bbfbf5bac1bb510521401b36d8e0050f29befb3730c40564a0532a565a9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareGreen/Variantdc8bfb60f6a788f61290a891d11aac4166dea8f44e84cac888d3349197ff9556.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc053b01-36e7-7c26-050d-8728b2b1fcfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_prime_green_le_complete_minus_squares {N K : ℕ} (hN : 1 ≤ N)
    (hpositive : ∀ j : ℕ, j < K → 0 ≤ actualSuffix N K j) :
    profileWork (fun j => ArithmeticPrimitive.cumulativeDiscrepancy
      ordinaryPrimeCoefficient (N + j)) (actualSuffix N K) K ≤
      completeMangoldtWork N K - primeSquareWork N K := by
  rw [actual_prime_green_decomposition hN]
  exact sub_le_sub_left (prime_square_work_le_higher_powers hpositive) _

end
end GRWTSK.RiemannHypothesis.Conversation.PrimeSquareGreen
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareGreen/Variantdc8bfb60f6a788f61290a891d11aac4166dea8f44e84cac888d3349197ff9556.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareGreen/Variantdc8bfb60f6a788f61290a891d11aac4166dea8f44e84cac888d3349197ff9556.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b16730c050b3cd2ef7231fa0cbe242da3c29599` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
