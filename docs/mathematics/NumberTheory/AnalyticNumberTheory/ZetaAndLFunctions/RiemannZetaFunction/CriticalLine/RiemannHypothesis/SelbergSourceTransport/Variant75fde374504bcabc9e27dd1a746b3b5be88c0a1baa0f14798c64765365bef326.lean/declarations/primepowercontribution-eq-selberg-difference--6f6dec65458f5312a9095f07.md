# primePowerContribution_eq_selberg_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42cbc2ed65d8f624303a531c302e48b172187e63",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/75fde374504bcabc9e27dd1a746b3b5be88c0a1baa0f14798c64765365bef326.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27517475-2485-f8db-a70f-df79c5969b92",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76974a39-a9a8-2033-d8a8-8dca9662c7e0",
  "kind": "theorem",
  "lexical_name": "primePowerContribution_eq_selberg_difference",
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
  "slug": "primepowercontribution-eq-selberg-difference--6f6dec65458f5312a9095f07",
  "source": {
    "blob": "42cbc2ed65d8f624303a531c302e48b172187e63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransport/Variant75fde374504bcabc9e27dd1a746b3b5be88c0a1baa0f14798c64765365bef326.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f6dec65458f5312a9095f0711ea3f389a8c739639489ec33c7acedf533b8246",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransport/Variant75fde374504bcabc9e27dd1a746b3b5be88c0a1baa0f14798c64765365bef326.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76974a39-a9a8-2033-d8a8-8dca9662c7e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primePowerContribution_eq_selberg_difference (A : ℝ) :
    primePowerContribution explicitSecondDerivative A =
      (∑ n ∈ Cutoff.primeIndices A, selbergCoefficient n * selbergSourceWeight A n) -
        mangoldtConvolutionContribution A := by
  unfold mangoldtConvolutionContribution
  rw [← Finset.sum_sub_distrib]
  change (∑ n ∈ Cutoff.primeIndices A,
    ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
      sourceCorrelation explicitSecondDerivative A (Real.log n)) = _
  apply Finset.sum_congr rfl
  intro n hn
  have hn2 : 2 ≤ n := ((Cutoff.mem_primeIndices_iff A n).mp hn).1
  have h := weighted_selberg_identity A n hn2
  linarith

/-- Both signed weighted convolutions remain in the unchanged quadratic source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransport/Variant75fde374504bcabc9e27dd1a746b3b5be88c0a1baa0f14798c64765365bef326.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransport/Variant75fde374504bcabc9e27dd1a746b3b5be88c0a1baa0f14798c64765365bef326.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42cbc2ed65d8f624303a531c302e48b172187e63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
