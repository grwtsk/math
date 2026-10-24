# jensenSection_eq_phase_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcbea1bf-8f07-cbb8-eb48-46e49f0c9b3a",
  "kind": "theorem",
  "lexical_name": "jensenSection_eq_phase_integral",
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
  "slug": "jensensection-eq-phase-integral--36bfc891d16f72490bec6420",
  "source": {
    "blob": "b19e6c2b3bf77ea9c54304223d26bb243a1e87c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 131,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36bfc891d16f72490bec642078413bf305ee83b6571f6b0a42e0f06223225fd5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcbea1bf-8f07-cbb8-eb48-46e49f0c9b3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jensenSection_eq_phase_integral {n : ℕ} (_hn : 1 ≤ n) (z : ℂ) :
    jensenSection n z =
      4 * ∫ t in Ioi (0 : ℝ), (thetaPhi t : ℂ) *
        ((1 + Complex.I * (t : ℂ) * z / n) ^ (2 * n) +
          (1 - Complex.I * (t : ℂ) * z / n) ^ (2 * n)) := by
  have hf : (fun t : ℝ => (thetaPhi t : ℂ) *
      ((1 + Complex.I * (t : ℂ) * z / n) ^ (2 * n) +
        (1 - Complex.I * (t : ℂ) * z / n) ^ (2 * n))) =
      fun t => ∑ k ∈ range (n + 1),
        (2 * ((2 * n).choose (2 * k) : ℂ)) *
          ((thetaPhi t : ℂ) * (Complex.I * (t : ℂ) * z / n) ^ (2 * k)) := by
    funext t
    rw [phase_binomial]
    simp only [mul_sum]
    apply Finset.sum_congr rfl
    intro k _
    ring
  rw [hf, integral_finsetSum]
  · simp only [integral_const_mul, integral_phase_monomial, mul_sum, jensenSection]
    apply Finset.sum_congr rfl
    intro k _
    rw [weighted_coefficient_phase]
    ring
  · intro k _
    exact (phase_monomial_integrable n k z).const_mul _

end
end FormalResearch.RiemannHypothesis.XiJensenPhase
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b19e6c2b3bf77ea9c54304223d26bb243a1e87c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
