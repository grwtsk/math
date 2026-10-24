# derivative_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f947ce03-0189-4a9f-128d-f6a02b560705",
  "kind": "theorem",
  "lexical_name": "derivative_error",
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
  "slug": "derivative-error--6fb3a1aec435da7107f3d963",
  "source": {
    "blob": "feb6fc25eb1c1c9e80378f1ce562247b652941be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 109,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fb3a1aec435da7107f3d9631bab64aecbbe319fdf292658e227bb7595b9cb99",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f947ce03-0189-4a9f-128d-f6a02b560705`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivative_error {N : ℕ} {B : ℝ} {s : ℂ}
    (hN : 1 ≤ N) (hB : 0 ≤ B) (hs : 0 < s.re)
    (hf : ∀ j < 7, ‖factor j s‖ ≤ B) :
    ‖deriv poleNormalizedZeta s-deriv (finiteModel N) s‖ ≤ derivativeRadius B N := by
  have ha := multiplier_bound hB hf
  have hd : ‖productSlope 7 s‖ ≤ 7*B^6 := by
    simpa using productSlope_norm_le 7 hB hf
  rw [derivative_residual hN hs]
  calc
    _ ≤ ‖productSlope 7 s‖*‖tail (N : ℝ) s‖+
        ‖multiplier s‖*‖sixthKernel.logTail (s+6) (N : ℝ)‖ := by
      simpa only [norm_mul,norm_neg] using norm_add_le
        (-productSlope 7 s*tail (N : ℝ) s)
        (multiplier s*sixthKernel.logTail (s+6) (N : ℝ))
    _ ≤ derivativeRadius B N := add_le_add
      (mul_le_mul hd (tail_bound hN hs) (norm_nonneg _) (by positivity))
      (mul_le_mul ha (logTail_bound hN hs) (norm_nonneg _) (pow_nonneg hB _))

/-- Strict real boundaries preserve the source domain and its reflected points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feb6fc25eb1c1c9e80378f1ce562247b652941be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
