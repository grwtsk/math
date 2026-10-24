# arithmeticResidual_zero_damping_endpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "486ed2e5d2483eee0c070116c2eeed20c956daed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b139576a69b846684c7d80c893f0a5ac1d71bd84988e82be1941d98a7922205.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e5d5dc5-eea0-0417-2fba-4a7ccd230ba3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45ae9ed3-c638-e2d3-bd6c-75d49626082f",
  "kind": "theorem",
  "lexical_name": "arithmeticResidual_zero_damping_endpoint",
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
  "slug": "arithmeticresidual-zero-damping-endpoint--39e4adcfa27524da20af8d9d",
  "source": {
    "blob": "486ed2e5d2483eee0c070116c2eeed20c956daed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 121,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant0b139576a69b846684c7d80c893f0a5ac1d71bd84988e82be1941d98a7922205.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39e4adcfa27524da20af8d9d7ae7ac5f162455352507fafb251ce9dc9edce107",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant0b139576a69b846684c7d80c893f0a5ac1d71bd84988e82be1941d98a7922205.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45ae9ed3-c638-e2d3-bd6c-75d49626082f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmeticResidual_zero_damping_endpoint (X : ℕ) (hX : 1 ≤ X) :
    arithmeticResidual X 0 (X : ℝ) =
      ((X : ℝ) * FiniteMobiusController.mobiusReciprocalSum X : ℂ) := by
  have hX0 : (X : ℝ) ≠ 0 := by exact_mod_cast (show X ≠ 0 by omega)
  rw [arithmeticResidual_eq_divisor_prefix_closed X 0 (X : ℝ) hX
    (by exact_mod_cast hX) le_rfl]
  simp only [Complex.ofReal_zero, add_zero, correctedNumerator_half, mul_zero,
    neg_zero, zero_mul, dampedDivisorCoefficient, Real.exp_zero, mul_one,
    CoprimeCount.sum_moebius_divisors,
    div_self hX0, Nat.floor_one, Nat.cast_one, Nat.floor_natCast]
  simp [hX]

end
end DivisorFloorTransportScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @DivisorFloorTransportScratch.floor_sum_divisors
#print DivisorFloorTransportScratch.floor_sum_divisors
#print axioms DivisorFloorTransportScratch.floor_sum_divisors
#check @DivisorFloorTransportScratch.divisor_prefix_eq_floor
#print DivisorFloorTransportScratch.divisor_prefix_eq_floor
#print axioms DivisorFloorTransportScratch.divisor_prefix_eq_floor
#check @DivisorFloorTransportScratch.arithmeticResidual_eq_divisor_prefix_closed
#print DivisorFloorTransportScratch.arithmeticResidual_eq_divisor_prefix_closed
#print axioms DivisorFloorTransportScratch.arithmeticResidual_eq_divisor_prefix_closed
#check @DivisorFloorTransportScratch.arithmeticResidual_eq_divisor_prefix
#print DivisorFloorTransportScratch.arithmeticResidual_eq_divisor_prefix
#print axioms DivisorFloorTransportScratch.arithmeticResidual_eq_divisor_prefix
#check @DivisorFloorTransportScratch.arithmeticResidual_zero_of_lt_cutoff
#print DivisorFloorTransportScratch.arithmeticResidual_zero_of_lt_cutoff
#print axioms DivisorFloorTransportScratch.arithmeticResidual_zero_of_lt_cutoff
#check @DivisorFloorTransportScratch.arithmeticResidual_zero_damping_endpoint
#print DivisorFloorTransportScratch.arithmeticResidual_zero_damping_endpoint
#print axioms DivisorFloorTransportScratch.arithmeticResidual_zero_damping_endpoint
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant0b139576a69b846684c7d80c893f0a5ac1d71bd84988e82be1941d98a7922205.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorFullAudit/Variant0b139576a69b846684c7d80c893f0a5ac1d71bd84988e82be1941d98a7922205.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `486ed2e5d2483eee0c070116c2eeed20c956daed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
