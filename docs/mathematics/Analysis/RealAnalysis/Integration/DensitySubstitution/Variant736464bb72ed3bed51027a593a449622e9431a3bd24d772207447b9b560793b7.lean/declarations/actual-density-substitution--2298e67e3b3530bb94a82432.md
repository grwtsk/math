# actual_density_substitution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3cfe8dc7d513bcc3a74ebdee7f88713075b4bcd6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/736464bb72ed3bed51027a593a449622e9431a3bd24d772207447b9b560793b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:022b5455-9827-8c2f-e882-bb9e58f3b4f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86d9d5f3-050e-291a-6f11-683dd1263abb",
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
  "slug": "actual-density-substitution--2298e67e3b3530bb94a82432",
  "source": {
    "blob": "3cfe8dc7d513bcc3a74ebdee7f88713075b4bcd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 50,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DensitySubstitution/Variant736464bb72ed3bed51027a593a449622e9431a3bd24d772207447b9b560793b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2298e67e3b3530bb94a8243223040ef414ff9eeeeb582d20dfa6c3a934ebb370",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DensitySubstitution/Variant736464bb72ed3bed51027a593a449622e9431a3bd24d772207447b9b560793b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86d9d5f3-050e-291a-6f11-683dd1263abb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–89.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DensitySubstitution/Variant736464bb72ed3bed51027a593a449622e9431a3bd24d772207447b9b560793b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DensitySubstitution/Variant736464bb72ed3bed51027a593a449622e9431a3bd24d772207447b9b560793b7.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cfe8dc7d513bcc3a74ebdee7f88713075b4bcd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
