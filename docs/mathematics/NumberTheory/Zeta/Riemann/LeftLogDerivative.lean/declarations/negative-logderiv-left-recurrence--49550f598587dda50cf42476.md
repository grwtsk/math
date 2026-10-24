# negative_logDeriv_left_recurrence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4bdbf02d-eb78-30b3-efdd-9866d1189f52",
  "kind": "theorem",
  "lexical_name": "negative_logDeriv_left_recurrence",
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
  "slug": "negative-logderiv-left-recurrence--49550f598587dda50cf42476",
  "source": {
    "blob": "78ceb9569e89f20c2868e9dd6e6e6b459a3bd5f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 125,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49550f598587dda50cf42476e87fce1b3fa47e4c7a35f6107f993ed6600372f9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bdbf02d-eb78-30b3-efdd-9866d1189f52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negative_logDeriv_left_recurrence (N : ℕ) (t : ℝ) :
    -logDeriv riemannZeta (leftPoint N t) =
      -logDeriv riemannZeta (leftPoint 0 t) +
      (∑ j ∈ Finset.range (2 * N), (2 - (t : ℂ) * Complex.I + (j : ℂ))⁻¹) +
      logDeriv riemannZeta (1 - leftPoint N t) -
      logDeriv riemannZeta (1 - leftPoint 0 t) := by
  have hn := negative_logDeriv_reflection
    (by rw [leftPoint_re]; exact leftEdge_neg N)
    (zeta_ne_zero_on_left N _ (leftPoint_re N t))
  have h0 := negative_logDeriv_reflection
    (by rw [leftPoint_re]; exact leftEdge_neg 0)
    (zeta_ne_zero_on_left 0 _ (leftPoint_re 0 t))
  have hg := digamma_add_nat (2 - (t : ℂ) * Complex.I) (by simp) (2 * N)
  rw [left_cotangent_periodic N t] at hn
  rw [leftPoint_reflected] at hn h0
  simp only [Nat.mul_zero, Nat.cast_zero, add_zero] at h0
  rw [hg] at hn
  rw [hn, h0, leftPoint_reflected, leftPoint_reflected]
  simp only [Nat.mul_zero, Nat.cast_zero, add_zero]
  ring

/-- Absolute term domination extends the existing line mass to Re(s)>=2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78ceb9569e89f20c2868e9dd6e6e6b459a3bd5f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
