# actual_readout_large_prime_sum_actual_beta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb538df2-0690-87d4-aba1-fdfc48e0346b",
  "kind": "theorem",
  "lexical_name": "actual_readout_large_prime_sum_actual_beta",
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
  "slug": "actual-readout-large-prime-sum-actual-beta--fbe902285115e80e70f96392",
  "source": {
    "blob": "fb7bf85228fc00eb97898ecdc2822b97629ae790",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 114,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLargePrimeLinear/Variantf7ce687b71563cb550b183c0c8fcb7fb91624d63349f379d42023365a5b53bd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbe902285115e80e70f9639255add8b043c3e2403b3a28cae7554bae0dcab991",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLargePrimeLinear/Variantf7ce687b71563cb550b183c0c8fcb7fb91624d63349f379d42023365a5b53bd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb538df2-0690-87d4-aba1-fdfc48e0346b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_readout_large_prime_sum_actual_beta (A : ℝ) (hA : 0 < A)
    (P L : Finset ℕ) (U N : ℕ)
    (hP : ∀ r ∈ P, r.Prime) (hL : ∀ r ∈ L, r.Prime)
    (hlarge : ∀ r ∈ L, U < r) (hdisj : Disjoint P L)
    (hcover : ∀ r, r.Prime → r ≤ max U N → r ∈ P ∪ L) (hU : 1 ≤ U) :
    readoutAt A hA U N - disclosedReadoutAt A hA U N P =
      ∑ p ∈ L, compensatedReadout (originalSourceL2 A hA) (Finset.Ioc U N)
        (freshMangoldtRow p) (centeredCoefficient U) 0 := by
  have hc : ∀ n ∈ Finset.Ioc U N, disclosedBetaRow P U n = centeredCoefficient U n :=
    fun n hn => betaRow_eq_actual_on_long_under_large_coverage P L U N n hP hlarge hcover hU hn
  have hprofile : finiteProfile (originalSourceL2 A hA) (Finset.Ioc U N) false false
      (disclosedBetaRow P U) = finiteProfile (originalSourceL2 A hA) (Finset.Ioc U N)
        false false (centeredCoefficient U) := by
    unfold finiteProfile
    exact Finset.sum_congr rfl (fun n hn => by rw [hc n hn])
  have hd (p : ℕ) : physicalDiagonal (originalSourceL2 A hA) (Finset.Ioc U N)
      (freshMangoldtRow p) (disclosedBetaRow P U) =
      physicalDiagonal (originalSourceL2 A hA) (Finset.Ioc U N)
        (freshMangoldtRow p) (centeredCoefficient U) := by
    unfold physicalDiagonal
    congr 1
    exact Finset.sum_congr rfl (fun n hn => by rw [hc n hn])
  rw [actual_readout_large_prime_sum A hA P L U N hP hL hlarge hdisj hcover hU]
  apply Finset.sum_congr rfl
  intro p _
  unfold compensatedReadout
  rw [hprofile, hd]

/-- The original readout splits at its literal short prime base horizon. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLargePrimeLinear/Variantf7ce687b71563cb550b183c0c8fcb7fb91624d63349f379d42023365a5b53bd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLargePrimeLinear/Variantf7ce687b71563cb550b183c0c8fcb7fb91624d63349f379d42023365a5b53bd2.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb7bf85228fc00eb97898ecdc2822b97629ae790` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
