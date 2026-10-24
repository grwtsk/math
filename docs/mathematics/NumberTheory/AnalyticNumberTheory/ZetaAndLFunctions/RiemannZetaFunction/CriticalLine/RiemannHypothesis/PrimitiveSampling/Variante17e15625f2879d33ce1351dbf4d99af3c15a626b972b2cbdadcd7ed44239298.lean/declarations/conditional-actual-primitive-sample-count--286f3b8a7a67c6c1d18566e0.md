# conditional_actual_primitive_sample_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:557d8497-1416-ca59-c712-2ab6edd63e79",
  "kind": "theorem",
  "lexical_name": "conditional_actual_primitive_sample_count",
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
  "slug": "conditional-actual-primitive-sample-count--286f3b8a7a67c6c1d18566e0",
  "source": {
    "blob": "1dae838b49909120779651528248204a5ee5d349",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 44,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimitiveSampling/Variante17e15625f2879d33ce1351dbf4d99af3c15a626b972b2cbdadcd7ed44239298.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:286f3b8a7a67c6c1d18566e0b808eebb43c6d53d95a2e16c58407042f188e23e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimitiveSampling/Variante17e15625f2879d33ce1351dbf4d99af3c15a626b972b2cbdadcd7ed44239298.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:557d8497-1416-ca59-c712-2ab6edd63e79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conditional_actual_primitive_sample_count {t : ℝ} (ht : 4 ≤ t)
    {m : ℕ} (hm : 0 < m)
    (p : ↥(Finset.Icc 2 ⌊Real.exp t⌋₊) → ℝ) (hp : ∀ j, 0 < p j)
    (hsum : (∑ j, p j) = 1) {ε : ℝ} (hε : 0 < ε)
    (hmean : |ArithmeticPrimitive.actualPrimitive (Real.exp t)| ≤
      absolutePrimitiveMass (Real.exp t) / 2)
    (hprecision : replicationVariance m p (primitiveRow (Real.exp t)) ≤ ε ^ 2) :
    Real.exp t / (4800 * ε ^ 2) ≤ (m : ℝ) := by
  have hcount := conditional_sample_count hm p (primitiveRow (Real.exp t)) hp hsum hε
    (by simpa only [literal_primitive_sampling_mean,
      literal_primitive_sampling_mass (Real.exp_pos t).le] using hmean) hprecision
  rw [literal_primitive_sampling_mass (Real.exp_pos t).le] at hcount
  have hbase := actual_logarithmic_primitive_absolute_lower ht
  have hE : Real.exp (t / 2) ^ 2 = Real.exp t := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have hmass : 0 ≤ absolutePrimitiveMass (Real.exp t) :=
    (div_nonneg (Real.exp_pos _).le (by norm_num)).trans hbase
  have hsq : Real.exp t / 3600 ≤ absolutePrimitiveMass (Real.exp t) ^ 2 := by
    have h := pow_le_pow_left₀ (div_nonneg (Real.exp_pos (t / 2)).le (by norm_num)) hbase 2
    rw [div_pow, hE] at h
    norm_num at h
    exact h
  have hcap := (div_le_iff₀ (by positivity : 0 < 4 * ε ^ 2)).mp hcount
  apply (div_le_iff₀ (by positivity : 0 < 4800 * ε ^ 2)).mpr
  nlinarith

end
end GRWTSK.RiemannHypothesis.Conversation.PrimitiveSampling
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimitiveSampling/Variante17e15625f2879d33ce1351dbf4d99af3c15a626b972b2cbdadcd7ed44239298.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimitiveSampling/Variante17e15625f2879d33ce1351dbf4d99af3c15a626b972b2cbdadcd7ed44239298.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dae838b49909120779651528248204a5ee5d349` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
