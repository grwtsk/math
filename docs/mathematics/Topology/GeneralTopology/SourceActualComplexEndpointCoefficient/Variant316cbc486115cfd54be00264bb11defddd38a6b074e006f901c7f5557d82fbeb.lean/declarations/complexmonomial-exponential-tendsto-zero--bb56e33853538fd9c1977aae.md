# complexMonomial_exponential_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b4790c3-d1f6-db9a-a5e2-dc8ee9cc7a4e",
  "kind": "theorem",
  "lexical_name": "complexMonomial_exponential_tendsto_zero",
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
  "slug": "complexmonomial-exponential-tendsto-zero--bb56e33853538fd9c1977aae",
  "source": {
    "blob": "93b7d1a279928056d85b67fc59f6e0436a14f600",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 28,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualComplexEndpointCoefficient/Variant316cbc486115cfd54be00264bb11defddd38a6b074e006f901c7f5557d82fbeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb56e33853538fd9c1977aaebe6c3f273e9cfe80322f92a04358e393a0c173f2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualComplexEndpointCoefficient/Variant316cbc486115cfd54be00264bb11defddd38a6b074e006f901c7f5557d82fbeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b4790c3-d1f6-db9a-a5e2-dc8ee9cc7a4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complexMonomial_exponential_tendsto_zero (n : ℕ) {z : ℂ} (hz : 0 < z.re) :
    Tendsto (fun u : ℝ => (u : ℂ)^n * Complex.exp (-z * (u : ℂ))) atTop (𝓝 0) := by
  apply tendsto_zero_iff_norm_tendsto_zero.mpr
  have h := tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (n : ℝ) z.re hz
  have he : (fun u : ℝ => ‖(u : ℂ)^n * Complex.exp (-z * (u : ℂ))‖) =ᶠ[atTop]
      fun u : ℝ => u^(n : ℝ) * Real.exp (-z.re * u) := by
    filter_upwards [eventually_ge_atTop (0 : ℝ)] with u hu
    simp only [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg hu, Complex.norm_exp]
    rw [Real.rpow_natCast]
    congr 2
    simp
  exact h.congr' he.symm

/-- The actual finite antiderivative has the precise original integrand as its derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualComplexEndpointCoefficient/Variant316cbc486115cfd54be00264bb11defddd38a6b074e006f901c7f5557d82fbeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualComplexEndpointCoefficient/Variant316cbc486115cfd54be00264bb11defddd38a6b074e006f901c7f5557d82fbeb.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93b7d1a279928056d85b67fc59f6e0436a14f600` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
