# weightedCenteredInterval_eq_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:face5da1-8eb8-5394-c83e-ca2d87aaab92",
  "kind": "theorem",
  "lexical_name": "weightedCenteredInterval_eq_abel",
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
  "slug": "weightedcenteredinterval-eq-abel--c3753f1c8af4e4319ce7c5be",
  "source": {
    "blob": "fe3442ce6f7c9afb2fae17e14be1d834119cca50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 61,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd6fa1cb431a1fc7d815b83ddebea893fd5d6325d7c04bcf9cc191abfe070115b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3753f1c8af4e4319ce7c5be5a33c1cb84e6bc5f36202c004559f4e56fe5a157",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd6fa1cb431a1fc7d815b83ddebea893fd5d6325d7c04bcf9cc191abfe070115b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:face5da1-8eb8-5394-c83e-ca2d87aaab92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedCenteredInterval_eq_abel (A : ℝ) (m U L H : ℕ) (hA : 1 ≤ A)
    (hm : 1 ≤ m) (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    weightedCenteredInterval A m U L H = abelDiscrepancyMoment A m U L H := by
  have hA0 : 0 < A := by linarith
  have hL0 : 0 < (L : ℝ) := by exact_mod_cast (by omega : 0 < L)
  have hi := rowWeight_deriv_integrable A m hA0 hm (L : ℝ) H hL0
  have hd (x : ℝ) (hx : x ∈ Icc (L : ℝ) H) : DifferentiableAt ℝ (rowWeight A m) x :=
    (rowWeight_hasDerivAt A x m hA0 hm (hL0.trans_le hx.1)).differentiableAt
  have h := sum_mul_eq_sub_sub_integral_mul' (anchoredCenteredBeta U L) hLH hd hi
  have hl : (∑ n ∈ Finset.Icc 0 L, anchoredCenteredBeta U L n) = 0 := by
    rw [anchored_prefix_eq_interval, Finset.Ioc_eq_empty_of_le le_rfl, Finset.sum_empty]
  have hh : (∑ n ∈ Finset.Icc 0 H, anchoredCenteredBeta U L n) =
      -discrepancyPrefix U L (H : ℝ) := by
    simpa only [Nat.floor_natCast] using anchored_prefix_eq_discrepancy U L (H : ℝ)
      hU hUL (by exact_mod_cast hLH)
  have hs : (∑ n ∈ Finset.Ioc L H, rowWeight A m (n : ℝ) * anchoredCenteredBeta U L n) =
      weightedCenteredInterval A m U L H := by
    apply Finset.sum_congr rfl
    intro n hn
    simp only [anchoredCenteredBeta, if_pos (Finset.mem_Ioc.mp hn).1]
    ring
  rw [hs, hl, hh, mul_zero, sub_zero] at h
  have he : (∫ x in Ioc (L : ℝ) (H : ℝ), deriv (rowWeight A m) x *
      (∑ n ∈ Finset.Icc 0 ⌊x⌋₊, anchoredCenteredBeta U L n)) =
      -(∫ x in Ioc (L : ℝ) (H : ℝ), deriv (rowWeight A m) x * discrepancyPrefix U L x) := by
    rw [← integral_neg]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro x hx
    dsimp only
    rw [anchored_prefix_eq_discrepancy U L x hU hUL hx.1.le]
    ring
  rw [he] at h
  unfold abelDiscrepancyMoment
  linarith

end
end EstimateWeightedBetaAbel
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd6fa1cb431a1fc7d815b83ddebea893fd5d6325d7c04bcf9cc191abfe070115b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd6fa1cb431a1fc7d815b83ddebea893fd5d6325d7c04bcf9cc191abfe070115b.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe3442ce6f7c9afb2fae17e14be1d834119cca50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
