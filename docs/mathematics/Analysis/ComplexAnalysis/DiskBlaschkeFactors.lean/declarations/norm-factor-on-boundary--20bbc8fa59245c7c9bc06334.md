# norm_factor_on_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc93e8f0-aa7d-873b-7c8e-c5b757656e8e",
  "kind": "theorem",
  "lexical_name": "norm_factor_on_boundary",
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
  "slug": "norm-factor-on-boundary--20bbc8fa59245c7c9bc06334",
  "source": {
    "blob": "8720ed03876e35ab5cb829948fbb0881db8a642a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 68,
    "path": "GRWTSK/Analysis/Complex/DiskBlaschkeFactors.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20bbc8fa59245c7c9bc063348c8d7f57ebd80562dfbfdcce0a972db1ba1e3573",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/DiskBlaschkeFactors.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc93e8f0-aa7d-873b-7c8e-c5b757656e8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_factor_on_boundary (R : ℝ) (hR : 0 < R) (a z : ℂ)
    (ha : ‖a‖ < R) (hz : ‖z‖ = R) : ‖factor R a z‖ = 1 := by
  have hd := denominator_ne_zero R hR a z ha hz.le
  have hn := denominator_norm_identity R a z
  rw [hz] at hn
  have he : ‖(R : ℂ) ^ 2 - conj a * z‖ = R * ‖z - a‖ := by
    nlinarith [norm_nonneg ((R : ℂ) ^ 2 - conj a * z),
      norm_nonneg (z - a), mul_nonneg hR.le (norm_nonneg (z - a))]
  rw [factor, norm_div, norm_mul, Complex.norm_real, Real.norm_eq_abs,
    abs_of_pos hR, ← he]
  exact div_self (norm_ne_zero_iff.mpr hd)

/-- Interior factors do not increase the center modulus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/DiskBlaschkeFactors.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/DiskBlaschkeFactors.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8720ed03876e35ab5cb829948fbb0881db8a642a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
