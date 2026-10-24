# prime_decoder_tail_transfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3f65740-939c-6071-cbe9-7f9be3ccac27",
  "kind": "theorem",
  "lexical_name": "prime_decoder_tail_transfer",
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
  "slug": "prime-decoder-tail-transfer--9edd9edc7d976b7d33abd9a2",
  "source": {
    "blob": "ddf8a6470ad34ed7aec34d8f054f38261675c661",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 160,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9edd9edc7d976b7d33abd9a2cee4e26d93fb49fe829a0965d0e320fe6960d3b0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3f65740-939c-6071-cbe9-7f9be3ccac27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_decoder_tail_transfer {η : ℝ} (hη : 0 < η)
    (hbudget : ∃ B : ℝ, 0 ≤ B ∧ ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A → -B ≤ densityReadout A (primeCorrected A
        (decodedTest A (mesh A (primeResolutionCount η A)) (primeResolutionCount η A)))) :
    CriticalRemovedPairedTailLowerBound := by
  obtain ⟨B,hB,R,hR,hreadout⟩ := hbudget
  refine ⟨B+η,by linarith,R,hR,?_⟩
  intro A hRA
  exact lower_transfer hη.le hB (prime_resolving_error hη (hR.trans hRA)) (hreadout A hRA)

#print axioms primeCorrected_at_atom
#print axioms primeCorrected_ae
#print axioms primeCorrected_integrable
#print axioms primeCorrected_primeLogSum
#print axioms primeCorrected_density_integral
#print axioms primeCorrected_readout_error
#print axioms primeCorrected_readout_increment
#print axioms primeResolutionCount_pos
#print axioms primeResolutionCount_monotone
#print axioms prime_resolution_budget
#print axioms prime_resolving_error
#print axioms prime_decoder_tail_transfer
end RH16Tandem.PrimeAtomDecoder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddf8a6470ad34ed7aec34d8f054f38261675c661` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
