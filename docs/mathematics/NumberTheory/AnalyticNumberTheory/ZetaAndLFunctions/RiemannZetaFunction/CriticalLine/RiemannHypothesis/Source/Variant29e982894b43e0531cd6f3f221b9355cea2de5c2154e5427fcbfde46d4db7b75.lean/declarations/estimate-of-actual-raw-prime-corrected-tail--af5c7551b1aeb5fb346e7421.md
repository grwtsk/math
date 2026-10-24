# estimate_of_actual_raw_prime_corrected_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3dc3e5e-cdd1-28f9-f979-e2e7bd12468f",
  "kind": "theorem",
  "lexical_name": "estimate_of_actual_raw_prime_corrected_tail",
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
  "slug": "estimate-of-actual-raw-prime-corrected-tail--af5c7551b1aeb5fb346e7421",
  "source": {
    "blob": "1264b91cc6486750a3b91a82e232135ee43629f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 182,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Source/Variant29e982894b43e0531cd6f3f221b9355cea2de5c2154e5427fcbfde46d4db7b75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af5c7551b1aeb5fb346e74216ad3561c377dfdd014c3516b7038376e48aac116",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Source/Variant29e982894b43e0531cd6f3f221b9355cea2de5c2154e5427fcbfde46d4db7b75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3dc3e5e-cdd1-28f9-f979-e2e7bd12468f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_actual_raw_prime_corrected_tail
    (D R : ℝ) (hR : 1 ≤ R)
    (hbound : ∀ A : ℝ, R ≤ A → rawPrimeCorrectedAt A ≤ D) :
    FormalResearch.RiemannHypothesis.CorrelationAssembly.EstimateObligation := by
  obtain ⟨C, hC, herr⟩ := actual_readout_raw_prime_fixed_error
  apply estimate_of_arithmeticReadout_tail
  refine ⟨max 0 (D + C), le_max_left _ _, R, hR, ?_⟩
  intro A hA hRA
  have hd := hbound A hRA
  have he := (abs_le.mp (herr A hA)).2
  exact (show arithmeticReadout A hA ≤ D + C by linarith).trans (le_max_right _ _)

end RH16RawMeanCancellation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Source/Variant29e982894b43e0531cd6f3f221b9355cea2de5c2154e5427fcbfde46d4db7b75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Source/Variant29e982894b43e0531cd6f3f221b9355cea2de5c2154e5427fcbfde46d4db7b75.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1264b91cc6486750a3b91a82e232135ee43629f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
