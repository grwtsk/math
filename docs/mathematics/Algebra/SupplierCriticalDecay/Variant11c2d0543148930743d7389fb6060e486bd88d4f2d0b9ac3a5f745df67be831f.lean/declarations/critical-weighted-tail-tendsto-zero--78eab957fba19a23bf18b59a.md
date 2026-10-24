# critical_weighted_tail_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed5cb641-933e-a3c4-7d0e-f9910c15f958",
  "kind": "theorem",
  "lexical_name": "critical_weighted_tail_tendsto_zero",
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
  "slug": "critical-weighted-tail-tendsto-zero--78eab957fba19a23bf18b59a",
  "source": {
    "blob": "602400a08e5b8a7792355c50773dc002a04f3355",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 169,
    "path": "GRWTSK/Algebra/SupplierCriticalDecay/Variant11c2d0543148930743d7389fb6060e486bd88d4f2d0b9ac3a5f745df67be831f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78eab957fba19a23bf18b59ad2472797ec97c3d954941876700f62026b526a96",
  "verification": {
    "reference": "docs/verification/Algebra/SupplierCriticalDecay/Variant11c2d0543148930743d7389fb6060e486bd88d4f2d0b9ac3a5f745df67be831f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed5cb641-933e-a3c4-7d0e-f9910c15f958`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem critical_weighted_tail_tendsto_zero {E : ℝ → ℝ} {K T C c S₀ : ℝ}
    (hK : 0 ≤ K) (hT : 0 < T) (hC : 0 < C) (hc : 0 < c)
    (hE0 : ∀ S : ℝ, 0 ≤ E S)
    (hdecay : ∀ S : ℝ, S₀ ≤ S → E S ≤ C * Real.exp (S / 2 - c * Real.sqrt S)) :
    Tendsto (fun n : ℕ ↦
      coefficientProduct (fun j ↦ supplierCoefficient K (T + (j : ℝ) * criticalStep)) n *
        E (T + (n : ℝ) * criticalStep)) atTop (𝓝 0) := by
  obtain ⟨m, hm⟩ := exists_polynomial_exponent K
  have htime := terminal_times_tendsto_atTop T
  have hmajor := ((polynomial_sqrt_decay_tendsto_zero m hc).comp htime).const_mul
    (C * Real.exp (T / 2) / T ^ m)
  simp only [mul_zero] at hmajor
  apply squeeze_zero' _ _ hmajor
  · exact Eventually.of_forall fun n ↦ mul_nonneg
      (coefficientProduct_nonneg (fun j ↦ supplierCoefficient_nonneg hK (by
        have hh := criticalStep_pos
        positivity)) n) (hE0 _)
  · filter_upwards [htime.eventually (eventually_ge_atTop S₀)] with n hn
    exact critical_weighted_tail_bound hK hT hC.le hm (hE0 _) (hdecay _ hn)

/-- The concrete running positive maximum supplies nonnegativity internally. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SupplierCriticalDecay/Variant11c2d0543148930743d7389fb6060e486bd88d4f2d0b9ac3a5f745df67be831f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SupplierCriticalDecay/Variant11c2d0543148930743d7389fb6060e486bd88d4f2d0b9ac3a5f745df67be831f.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `602400a08e5b8a7792355c50773dc002a04f3355` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
