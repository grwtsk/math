# actual_prime_green_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2d241ab-6d30-1f3c-d31f-3e8e4f570c83",
  "kind": "theorem",
  "lexical_name": "actual_prime_green_decomposition",
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
  "slug": "actual-prime-green-decomposition--df6c8e789b9feabf8f7b6a1b",
  "source": {
    "blob": "c7f6354a41f5b7fb5907b2ef9bfd4696af622965",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerGreen/Variant06838b2b73763fed26648be7faca115cf5e36cb9d0d92772f41ad83b29e1e140.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df6c8e789b9feabf8f7b6a1b43734c0d72e3cb93cb2f0eef3e69768bcce56c59",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerGreen/Variant06838b2b73763fed26648be7faca115cf5e36cb9d0d92772f41ad83b29e1e140.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2d241ab-6d30-1f3c-d31f-3e8e4f570c83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_prime_green_decomposition {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    profileWork (fun j => ArithmeticPrimitive.cumulativeDiscrepancy
      ordinaryPrimeCoefficient (N + j)) (actualSuffix N K) K =
      completeMangoldtWork N K - primePowerWork N K := by
  rw [actual_green_work_eq_prime_atoms hN]
  unfold completeMangoldtWork primePowerWork
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro j _hj
  have hn : 2 ≤ N + j + 1 := by omega
  rw [centeredMangoldt_apply hn, ordinaryPrimeCoefficient_at_source_index hn]
  unfold primeLogAtom
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerGreen/Variant06838b2b73763fed26648be7faca115cf5e36cb9d0d92772f41ad83b29e1e140.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerGreen/Variant06838b2b73763fed26648be7faca115cf5e36cb9d0d92772f41ad83b29e1e140.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7f6354a41f5b7fb5907b2ef9bfd4696af622965` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
