# negative_logDeriv_reflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6167dd4-a012-673d-2415-ee569c5dc671",
  "kind": "theorem",
  "lexical_name": "negative_logDeriv_reflection",
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
  "slug": "negative-logderiv-reflection--3fd0a1f92d81436030ec0a39",
  "source": {
    "blob": "78ceb9569e89f20c2868e9dd6e6e6b459a3bd5f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 84,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fd0a1f92d81436030ec0a398a897a1712f0940417c975d400cf0101f939b95f",
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

Occurrence: `result:a6167dd4-a012-673d-2415-ee569c5dc671`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negative_logDeriv_reflection {s : ℂ} (hs : s.re < 0)
    (hζ : riemannZeta s ≠ 0) :
    -logDeriv riemannZeta s = -Complex.log (2 * (Real.pi : ℂ)) +
      Complex.digamma (1 - s) + logDeriv riemannZeta (1 - s) -
      ((Real.pi : ℂ) / 2) *
        (Complex.cos ((Real.pi : ℂ) * s / 2) / Complex.sin ((Real.pi : ℂ) * s / 2)) := by
  have he : riemannZeta =ᶠ[𝓝 s]
      fun u => reflectedUnit u * Complex.sin ((Real.pi : ℂ) * u / 2) :=
    eventuallyEq_of_mem ((isOpen_lt Complex.continuous_re continuous_const).mem_nhds hs)
      (fun u hu => zeta_eq_reflectedUnit_mul_sin hu)
  have hsin : Complex.sin ((Real.pi : ℂ) * s / 2) ≠ 0 := by
    intro hz
    exact hζ (by rw [zeta_eq_reflectedUnit_mul_sin hs, hz, mul_zero])
  have dS : HasDerivAt (fun u : ℂ => Complex.sin ((Real.pi : ℂ) * u / 2))
      (Complex.cos ((Real.pi : ℂ) * s / 2) * ((Real.pi : ℂ) / 2)) s := by
    simpa only [id_eq, mul_one] using (((hasDerivAt_id s).const_mul (Real.pi : ℂ)).div_const 2).csin
  rw [(logDeriv_congr_nhds he).eq_of_nhds,
    logDeriv_mul (f := reflectedUnit) (g := fun u => Complex.sin ((Real.pi : ℂ) * u / 2)) s (reflectedUnit_ne_zero hs) hsin
      (reflectedUnit_differentiableAt hs) dS.differentiableAt,
    reflectedUnit_logDeriv hs]
  simp only [logDeriv_apply]
  rw [dS.deriv]
  ring

/-- Shifting by a negative even integer leaves this trigonometric quotient unchanged. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78ceb9569e89f20c2868e9dd6e6e6b459a3bd5f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
