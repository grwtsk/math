# betaRow_eq_actual_on_long_under_large_coverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e15cf8b-e307-bc4c-9dc3-e12a3e6f045d",
  "kind": "theorem",
  "lexical_name": "betaRow_eq_actual_on_long_under_large_coverage",
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
  "slug": "betarow-eq-actual-on-long-under-large-coverage--eaaca27243b5727c3b46c6da",
  "source": {
    "blob": "023de6858c4f50d9c524931c0a0945e00b57bde8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 106,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLargePrimeLinear/Variant347bd1a04d4400516f4c15c2a08c293d8d1509b8e7b263e2e2969fda455d12ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaaca27243b5727c3b46c6da52716a38646cc8ba2a9eae11bfe24d26672a7ff1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLargePrimeLinear/Variant347bd1a04d4400516f4c15c2a08c293d8d1509b8e7b263e2e2969fda455d12ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e15cf8b-e307-bc4c-9dc3-e12a3e6f045d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem betaRow_eq_actual_on_long_under_large_coverage (P L : Finset ℕ) (U N n : ℕ)
    (hP : ∀ r ∈ P, r.Prime) (hlarge : ∀ r ∈ L, U < r)
    (hcover : ∀ r, r.Prime → r ≤ max U N → r ∈ P ∪ L) (hU : 1 ≤ U)
    (hn : n ∈ Finset.Ioc U N) :
    disclosedBetaRow P U n = centeredCoefficient U n := by
  have hPU : ∀ r, r.Prime → r ≤ U → r ∈ P := by
    intro r hr hRU
    rcases Finset.mem_union.mp (hcover r hr (hRU.trans (le_max_left _ _))) with h | h
    · exact h
    · have := hlarge r h
      omega
  unfold disclosedBetaRow centeredCoefficient
  rw [RH16Tandem.SourcePrimeDisclosureActual.centeredDisclosure_eq_actual_centeredBeta
    P U n hP hPU hU (Finset.mem_Ioc.mp hn).1]

/-- The remaining large-prime work uses the literal actual centered row, not a disclosure proxy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLargePrimeLinear/Variant347bd1a04d4400516f4c15c2a08c293d8d1509b8e7b263e2e2969fda455d12ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLargePrimeLinear/Variant347bd1a04d4400516f4c15c2a08c293d8d1509b8e7b263e2e2969fda455d12ae.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `023de6858c4f50d9c524931c0a0945e00b57bde8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
