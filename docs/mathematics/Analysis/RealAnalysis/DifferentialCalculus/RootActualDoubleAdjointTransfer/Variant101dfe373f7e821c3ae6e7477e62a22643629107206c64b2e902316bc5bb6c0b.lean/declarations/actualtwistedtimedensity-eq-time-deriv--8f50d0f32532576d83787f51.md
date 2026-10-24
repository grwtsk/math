# actualTwistedTimeDensity_eq_time_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64f1913a-d1a7-3df7-a74d-07398dfb0ace",
  "kind": "theorem",
  "lexical_name": "actualTwistedTimeDensity_eq_time_deriv",
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
  "slug": "actualtwistedtimedensity-eq-time-deriv--8f50d0f32532576d83787f51",
  "source": {
    "blob": "a9777e31e78d9db06c78603a79329dd4d203c19f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 99,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualDoubleAdjointTransfer/Variant101dfe373f7e821c3ae6e7477e62a22643629107206c64b2e902316bc5bb6c0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f50d0f32532576d83787f5114e919f79f5a79716bc3304718769b91639ad025",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualDoubleAdjointTransfer/Variant101dfe373f7e821c3ae6e7477e62a22643629107206c64b2e902316bc5bb6c0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64f1913a-d1a7-3df7-a74d-07398dfb0ace`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualTwistedTimeDensity_eq_time_deriv {A : ℝ} (hA : 0 < A) (t s : ℝ) :
    deriv (fun x => actualLogMixedDensity A x s) t - actualLogMixedDensity A t s / 2 =
      actualTwistedTimeDensity A t s := by
  have h0 := (jet_hasDerivAt hA 0 (by norm_num) (t + s)).comp t
    ((hasDerivAt_id t).add_const s)
  have h2 := (jet_hasDerivAt hA 2 (by norm_num) (t + s)).comp t
    ((hasDerivAt_id t).add_const s)
  have he := (((hasDerivAt_id t).div_const 2).exp).mul_const (Real.exp (-s / 2))
  have hh := he.mul (h2.sub (h0.div_const 4))
  have hd : HasDerivAt (fun x => actualLogMixedDensity A x s)
      (Real.exp (t / 2) * Real.exp (-s / 2) *
        (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + s) +
          iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + s) / 2 -
            iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + s) / 4 -
              sourceCorrelation explicitSecondDerivative A (t + s) / 8)) t := by
    convert hh using 1 <;> try rfl
    simp only [Function.comp_apply, iteratedDeriv_zero, id_eq, Pi.sub_apply]
    ring
  rw [hd.deriv]
  simp only [actualLogMixedDensity, actualTwistedTimeDensity]
  ring

/-- Its second twisted derivative is the original post-adjoint kernel with its second sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualDoubleAdjointTransfer/Variant101dfe373f7e821c3ae6e7477e62a22643629107206c64b2e902316bc5bb6c0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualDoubleAdjointTransfer/Variant101dfe373f7e821c3ae6e7477e62a22643629107206c64b2e902316bc5bb6c0b.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9777e31e78d9db06c78603a79329dd4d203c19f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
