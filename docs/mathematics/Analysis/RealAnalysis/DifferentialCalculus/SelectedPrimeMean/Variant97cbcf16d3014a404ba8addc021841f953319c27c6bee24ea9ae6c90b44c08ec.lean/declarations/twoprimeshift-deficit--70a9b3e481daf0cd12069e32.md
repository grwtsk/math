# twoPrimeShift_deficit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:322e46ce-8ec1-7a7d-68d8-eaabd621781d",
  "kind": "theorem",
  "lexical_name": "twoPrimeShift_deficit",
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
  "slug": "twoprimeshift-deficit--70a9b3e481daf0cd12069e32",
  "source": {
    "blob": "c2f1d8c0c77b62a5d0d9e70fd2eaaec0687372f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 67,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SelectedPrimeMean/Variant97cbcf16d3014a404ba8addc021841f953319c27c6bee24ea9ae6c90b44c08ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70a9b3e481daf0cd12069e32ec318bc7c34f22f6d5518677e29a4542b8fc2f63",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SelectedPrimeMean/Variant97cbcf16d3014a404ba8addc021841f953319c27c6bee24ea9ae6c90b44c08ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:322e46ce-8ec1-7a7d-68d8-eaabd621781d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoPrimeShift_deficit {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ twoPrimeLoss - twoPrimeShift A ∧
      twoPrimeLoss - twoPrimeShift A ≤ twoPrimeShiftError / A ^ 2 := by
  have hp : 0 < A := by linarith
  have h2 := correlation_deficit hA (Real.log 2)
  have h3 := correlation_deficit hA (Real.log 3)
  have hc2 : 0 ≤ Real.log 2 * Real.exp (-Real.log 2 / 2) := by positivity
  have hc3 : 0 ≤ Real.log 3 * Real.exp (-Real.log 3 / 2) := by positivity
  have he : twoPrimeLoss - twoPrimeShift A =
      Real.log 2 * Real.exp (-Real.log 2 / 2) *
        (1 - sourceCorrelation explicitSecondDerivative A (Real.log 2)) +
      Real.log 3 * Real.exp (-Real.log 3 / 2) *
        (1 - sourceCorrelation explicitSecondDerivative A (Real.log 3)) := by
    unfold twoPrimeLoss twoPrimeShift
    ring
  rw [he]
  constructor
  · exact add_nonneg (mul_nonneg hc2 h2.1) (mul_nonneg hc3 h3.1)
  · have hh := add_le_add (mul_le_mul_of_nonneg_left h2.2 hc2)
      (mul_le_mul_of_nonneg_left h3.2 hc3)
    refine hh.trans_eq ?_
    unfold twoPrimeShiftError
    field_simp

#print axioms correlation_deriv_zero
#print axioms correlation_deficit
#print axioms twoPrimeShift_deficit

end ContinuousResearch.SelectedPrimeMean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SelectedPrimeMean/Variant97cbcf16d3014a404ba8addc021841f953319c27c6bee24ea9ae6c90b44c08ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SelectedPrimeMean/Variant97cbcf16d3014a404ba8addc021841f953319c27c6bee24ea9ae6c90b44c08ec.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2f1d8c0c77b62a5d0d9e70fd2eaaec0687372f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
