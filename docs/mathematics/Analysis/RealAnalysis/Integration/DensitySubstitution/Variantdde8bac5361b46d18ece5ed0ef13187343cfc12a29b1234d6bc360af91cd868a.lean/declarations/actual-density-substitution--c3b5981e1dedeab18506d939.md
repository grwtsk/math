# actual_density_substitution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b03ac69-d414-e009-25db-435ea8435aa5",
  "kind": "theorem",
  "lexical_name": "actual_density_substitution",
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
  "slug": "actual-density-substitution--c3b5981e1dedeab18506d939",
  "source": {
    "blob": "aa8c2c149feaf21233ad2a73d08c158de3228d35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 58,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DensitySubstitution/Variantdde8bac5361b46d18ece5ed0ef13187343cfc12a29b1234d6bc360af91cd868a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3b5981e1dedeab18506d939c7785cbaf7a6d7bde853f29b227c1fc30222737a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DensitySubstitution/Variantdde8bac5361b46d18ece5ed0ef13187343cfc12a29b1234d6bc360af91cd868a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b03ac69-d414-e009-25db-435ea8435aa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_density_substitution (A C a b T : ℝ) (hA : 1 ≤ A) (hT : 2 ≤ T)
    (hDensity : ∀ σ ∈ Icc (1/2 : ℝ) 1, nT T σ ≤ envelope C a b T σ) :
    (∑ o : DyadicOccurrence T,
      if 1/2 < beta o then Real.exp (2*A*(beta o-1/2)) else 0) ≤
      envelope C a b T (1/2) +
        (2*A*C*(Real.log (2*T))^b)*
          ∫ σ in (1/2 : ℝ)..1, Real.exp (mixedExponent A a T σ) := by
  have ht : 0 < T := by linarith
  have ha : 0 ≤ A := by linarith
  have hi : (∫ σ in (1/2 : ℝ)..1, densityWeight A σ*nT T σ) ≤
      ∫ σ in (1/2 : ℝ)..1, densityWeight A σ*envelope C a b T σ := by
    apply intervalIntegral.integral_mono_on (by norm_num)
      (weighted_count_integrable A T (1/2) 1)
      (weighted_envelope_integrable A C a b T (1/2) 1 ht)
    intro σ hσ
    exact mul_le_mul_of_nonneg_left (hDensity σ hσ) (densityWeight_nonneg A σ ha)
  have hm : 2*A*(∫ σ in (1/2 : ℝ)..1,
      Real.exp (2*A*(σ-1/2))*nT T σ) =
      ∫ σ in (1/2 : ℝ)..1, densityWeight A σ*nT T σ := by
    rw [← intervalIntegral.integral_const_mul]
    congr 1
    funext σ
    simp only [densityWeight]
    ring
  have he : (∫ σ in (1/2 : ℝ)..1, densityWeight A σ*envelope C a b T σ) =
      (2*A*C*(Real.log (2*T))^b)*
        ∫ σ in (1/2 : ℝ)..1, Real.exp (mixedExponent A a T σ) := by
    simp_rw [product_exponent A C a b T _ ht]
    rw [intervalIntegral.integral_const_mul]
  rw [actual_layer_cake,hm]
  exact (add_le_add (hDensity (1/2) (by norm_num)) hi).trans_eq (by rw [he])

#print axioms envelope
#print axioms mixedExponent
#print axioms envelope_exp
#print axioms envelope_continuous
#print axioms weighted_envelope_integrable
#print axioms product_exponent
#print axioms actual_density_substitution
end ContinuousResearch.DensitySubstitution
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DensitySubstitution/Variantdde8bac5361b46d18ece5ed0ef13187343cfc12a29b1234d6bc360af91cd868a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DensitySubstitution/Variantdde8bac5361b46d18ece5ed0ef13187343cfc12a29b1234d6bc360af91cd868a.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa8c2c149feaf21233ad2a73d08c158de3228d35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
