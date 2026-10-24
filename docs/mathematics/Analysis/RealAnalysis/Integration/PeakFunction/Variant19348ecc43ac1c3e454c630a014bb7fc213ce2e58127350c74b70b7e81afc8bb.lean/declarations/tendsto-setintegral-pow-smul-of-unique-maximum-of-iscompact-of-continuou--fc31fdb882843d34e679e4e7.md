# tendsto_setIntegral_pow_smul_of_unique_maximum_of_isCompact_of_continuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb40ae6c-8f60-1324-23d7-fe1c7df777d3",
  "kind": "theorem",
  "lexical_name": "tendsto_setIntegral_pow_smul_of_unique_maximum_of_isCompact_of_continuousOn",
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
  "slug": "tendsto-setintegral-pow-smul-of-unique-maximum-of-iscompact-of-continuou--fc31fdb882843d34e679e4e7",
  "source": {
    "blob": "e2beb561cb08d2bfa274f61218cd4102231b2ed7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 376,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc31fdb882843d34e679e4e7c62a43986b989afcf345eba772635bd2db1ecfe7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb40ae6c-8f60-1324-23d7-fe1c7df777d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_setIntegral_pow_smul_of_unique_maximum_of_isCompact_of_continuousOn
    [MetrizableSpace α] [IsLocallyFiniteMeasure μ] [IsOpenPosMeasure μ] (hs : IsCompact s)
    {c : α → ℝ} (hc : ContinuousOn c s) (h'c : ∀ y ∈ s, y ≠ x₀ → c y < c x₀)
    (hnc : ∀ x ∈ s, 0 ≤ c x) (hnc₀ : 0 < c x₀) (h₀ : x₀ ∈ closure (interior s))
    (hmg : ContinuousOn g s) :
    Tendsto (fun n : ℕ => (∫ x in s, c x ^ n ∂μ)⁻¹ • ∫ x in s, c x ^ n • g x ∂μ) atTop (𝓝 (g x₀)) :=
  haveI : x₀ ∈ s := by rw [← hs.isClosed.closure_eq]; exact closure_mono interior_subset h₀
  tendsto_setIntegral_pow_smul_of_unique_maximum_of_isCompact_of_integrableOn hs hc h'c hnc hnc₀ h₀
    (hmg.integrableOn_compact hs) (hmg x₀ this)

/-!
### Peak functions of the form `x ↦ c ^ dim * φ (c x)`
-/

open Module Bornology

variable {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F] [FiniteDimensional ℝ F]
  [MeasurableSpace F] [BorelSpace F] {μ : Measure F} [IsAddHaarMeasure μ]

/-- Consider a nonnegative function `φ` with integral one, decaying quickly enough at infinity.
Then suitable renormalizations of `φ` form a sequence of peak functions around the origin:
`∫ (c ^ d * φ (c • x)) • g x` converges to `g 0` as `c → ∞` if `g` is continuous at `0`
and integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2beb561cb08d2bfa274f61218cd4102231b2ed7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
