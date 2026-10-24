# reconstructed_readout_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33172811-a04b-9f14-95f5-a19edea028da",
  "kind": "theorem",
  "lexical_name": "reconstructed_readout_sq_le",
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
  "slug": "reconstructed-readout-sq-le--9fe525ce0aae4bdb0aaf4f6c",
  "source": {
    "blob": "768dc0993c39e81f75613fd23e2b6bbc8f43b487",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 41,
    "path": "GRWTSK/Analysis/Integration/QuadraticReadoutBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fe525ce0aae4bdb0aaf4f6c12a664f9ba885c927b36ea21e4285854cb46efce",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/QuadraticReadoutBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33172811-a04b-9f14-95f5-a19edea028da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reconstructed_readout_sq_le (f g : α → ℝ)
    (hf : MemLp f 2 μ) (hg : MemLp g 2 μ)
    (m₀ m₁ a₀ a₁ : ℝ) :
    (a₀*m₀+a₁*m₁-(∫ x, f x*g x ∂μ))^2 ≤
      ((∫ x, f x^2 ∂μ)+m₀^2+m₁^2)*
        (a₀^2+a₁^2+(∫ x, g x^2 ∂μ)) := by
  let Q := ∫ x, f x^2 ∂μ
  let D := ∫ x, g x^2 ∂μ
  have hQ : 0≤Q := integral_nonneg (fun _ ↦ sq_nonneg _)
  have hD : 0≤D := integral_nonneg (fun _ ↦ sq_nonneg _)
  have hC := integral_product_bound f g hf hg
  have ht : |a₀*m₀+a₁*m₁-(∫ x, f x*g x ∂μ)| ≤
      |m₀| * |a₀| + |m₁| * |a₁|+Real.sqrt Q*Real.sqrt D := by
    calc
      _ ≤ |a₀*m₀+a₁*m₁|+|∫ x, f x*g x ∂μ| := abs_sub _ _
      _ ≤ (|a₀*m₀|+|a₁*m₁|)+Real.sqrt Q*Real.sqrt D :=
        add_le_add (abs_add_le _ _) hC
      _ = _ := by simp only [abs_mul]; ring
  have hCS := GRWTSK.Analysis.Inequalities.ResidualEnclosure.three_channel_sq_le
    |m₀| |m₁| (Real.sqrt Q) |a₀| |a₁| (Real.sqrt D)
  rw [sq_abs, sq_abs, sq_abs, sq_abs, Real.sq_sqrt hQ, Real.sq_sqrt hD] at hCS
  have hs := mul_self_le_mul_self (abs_nonneg _) ht
  simp only [← pow_two, sq_abs] at hs
  dsimp [Q,D] at *
  nlinarith

end GRWTSK.Analysis.Integral.QuadraticReadoutBound
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/Integration/QuadraticReadoutBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Integration/QuadraticReadoutBound.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `768dc0993c39e81f75613fd23e2b6bbc8f43b487` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
