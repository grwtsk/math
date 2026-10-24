# reduced_quotient_analytic_and_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c48380e-4709-ada7-6d59-1b417c6848eb",
  "kind": "theorem",
  "lexical_name": "reduced_quotient_analytic_and_order",
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
  "slug": "reduced-quotient-analytic-and-order--e87808f55b0910871d974340",
  "source": {
    "blob": "33b0f8add5bb7cc4a109d290f27e75ca07c998bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 52,
    "path": "GRWTSK/Analysis/ComplexAnalysis/QuotientOrder/Variante18dcc375f401933651151ef37dee41c36ecc242e5a52606472f3b24bfd28347.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e87808f55b0910871d974340db3cf282c478e54fbabefd86d19444d9d02d53ea",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/QuotientOrder/Variante18dcc375f401933651151ef37dee41c36ecc242e5a52606472f3b24bfd28347.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c48380e-4709-ada7-6d59-1b417c6848eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduced_quotient_analytic_and_order {f : ℂ → ℂ} {z₀ : ℂ} {n : ℕ}
    (hf : AnalyticAt ℂ f z₀) (horder : analyticOrderAt f z₀ = n + 1) :
    AnalyticAt ℂ (fun z ↦ f z / (f z + deriv f z)) z₀ ∧
      analyticOrderAt (fun z ↦ f z / (f z + deriv f z)) z₀ = 1 := by
  let q : ℂ → ℂ := fun z ↦ f z / (f z + deriv f z)
  have hq : MeromorphicAt q z₀ := hf.meromorphicAt.div (hf.add hf.deriv).meromorphicAt
  have hqorder : meromorphicOrderAt q z₀ = (1 : ℤ) :=
    reduced_quotient_meromorphic_order hf horder
  obtain ⟨u, hu, hu₀, hqu⟩ := (meromorphicOrderAt_eq_int_iff hq).mp hqorder
  have hf₀ : f z₀ = 0 := (analyticOrderAt_ne_zero.mp (by rw [horder]; simp)).2
  have hq₀ : q z₀ = 0 := by simp [q, hf₀]
  have hqu' : q =ᶠ[𝓝 z₀] fun z ↦ (z - z₀) * u z := by
    filter_upwards [eventually_nhdsWithin_iff.mp hqu] with z hz
    by_cases hzz : z = z₀
    · simp [hzz, hq₀]
    · simpa only [zpow_one, smul_eq_mul] using hz hzz
  have hqa : AnalyticAt ℂ q z₀ :=
    (analyticAt_congr hqu').mpr ((analyticAt_id.sub analyticAt_const).mul hu)
  refine ⟨hqa, hqa.analyticOrderAt_eq_natCast.mpr ⟨u, hu, hu₀, ?_⟩⟩
  simpa only [pow_one, smul_eq_mul, Filter.EventuallyEq] using hqu'

/-- Exact simple-, double-, and triple-source-zero specializations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/QuotientOrder/Variante18dcc375f401933651151ef37dee41c36ecc242e5a52606472f3b24bfd28347.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/QuotientOrder/Variante18dcc375f401933651151ef37dee41c36ecc242e5a52606472f3b24bfd28347.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33b0f8add5bb7cc4a109d290f27e75ca07c998bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
