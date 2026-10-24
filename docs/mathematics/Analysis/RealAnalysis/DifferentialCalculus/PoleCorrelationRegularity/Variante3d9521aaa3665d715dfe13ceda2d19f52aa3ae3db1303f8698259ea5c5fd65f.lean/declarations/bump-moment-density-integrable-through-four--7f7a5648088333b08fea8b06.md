# bump_moment_density_integrable_through_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edb37711-b623-9551-8eaa-fc0fe8a35139",
  "kind": "theorem",
  "lexical_name": "bump_moment_density_integrable_through_four",
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
  "slug": "bump-moment-density-integrable-through-four--7f7a5648088333b08fea8b06",
  "source": {
    "blob": "940c5d71709e76b0932d44688cef08e036426a44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 223,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variante3d9521aaa3665d715dfe13ceda2d19f52aa3ae3db1303f8698259ea5c5fd65f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f7a5648088333b08fea8b06568a4b4fba521f01566d32b67b314598323bf393",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variante3d9521aaa3665d715dfe13ceda2d19f52aa3ae3db1303f8698259ea5c5fd65f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edb37711-b623-9551-8eaa-fc0fe8a35139`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bump_moment_density_integrable_through_four (k : ℕ) (hk : k ≤ 4) :
    Integrable (bumpMomentDensity k) := by
  have hc : Continuous bumpDensity :=
    (Complex.continuous_normSq.comp (sourceFourier_continuous source_bump_integrable)).div_const _
  have h0 : Integrable bumpDensity := by
    convert bump_moment_density_integrable 0 (by norm_num) using 1
    funext u
    simp [bumpMomentDensity]
  have hd (u : ℝ) : 0 ≤ bumpDensity u := by
    simpa [bumpMomentDensity] using bump_moment_density_nonneg 0 u
  have h8 : Integrable (fun u : ℝ ↦ ‖u‖ ^ 8 * ‖bumpDensity u‖) := by
    convert bump_eighth_moment_integrable using 1
    funext u
    simp only [Real.norm_eq_abs, abs_of_nonneg (hd u), bumpMomentDensity, ← abs_pow]
    rw [abs_of_nonneg (by positivity : 0 ≤ u ^ 8)]
  have hi := integrable_lower_moment bumpDensity 8 (2 * k) (by omega) h0 hc h8
  convert hi using 1
  funext u
  simp only [Real.norm_eq_abs, abs_of_nonneg (hd u), bumpMomentDensity, ← abs_pow, pow_mul]
  rw [abs_of_nonneg (pow_nonneg (sq_nonneg u) k)]

/-- The exact three-component source density admits a genuine fourth moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variante3d9521aaa3665d715dfe13ceda2d19f52aa3ae3db1303f8698259ea5c5fd65f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variante3d9521aaa3665d715dfe13ceda2d19f52aa3ae3db1303f8698259ea5c5fd65f.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `940c5d71709e76b0932d44688cef08e036426a44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
