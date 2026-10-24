# integral_log_mul_thinFourierSlope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d7f328f-71cd-b056-6662-b4b364ff57aa",
  "kind": "theorem",
  "lexical_name": "integral_log_mul_thinFourierSlope",
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
  "slug": "integral-log-mul-thinfourierslope--0123cb96f06ce7f3fa732ef6",
  "source": {
    "blob": "54a21778cccb46f7155d335ce31e3628953475a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 53,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteSourceIBP.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0123cb96f06ce7f3fa732ef69459e968181bf3c4fb1a6e86eb18e7d65cbe7f4c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteSourceIBP.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d7f328f-71cd-b056-6662-b4b364ff57aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_log_mul_thinFourierSlope
    {k : ℤ} (hk : k ≠ 0) :
    (∫ t in (0 : ℝ)..1,
      (Real.log (1 + t) : ℂ) * thinFourierSlope k t) =
      - ∫ t in (0 : ℝ)..1,
        fourierModeValue k t / (1 + (t : ℂ)) := by
  have hlog (t : ℝ) (ht : t ∈ Set.uIcc (0 : ℝ) 1) :
      HasDerivAt (fun s : ℝ => (Real.log (1 + s) : ℂ))
        ((1 : ℂ) / (1 + (t : ℂ))) t := by
    have htpos : 0 < 1 + t := by
      rw [Set.uIcc_of_le (by norm_num)] at ht
      linarith [ht.1]
    simpa using
      ((Real.hasDerivAt_log (ne_of_gt htpos)).comp t
        ((hasDerivAt_id t).const_add 1)).ofReal
  have hphi (t : ℝ) (_ht : t ∈ Set.uIcc (0 : ℝ) 1) :
      HasDerivAt (fourierModeValue k) (thinFourierSlope k t) t :=
    fourierModeValue_hasDerivAt_thin hk t
  have hibp := intervalIntegral.integral_mul_deriv_eq_deriv_mul hlog hphi
  simpa [div_eq_mul_inv, mul_comm, mul_left_comm, mul_assoc] using hibp.symm

/-- Constant center pairs to zero with the derivative because the primitive
vanishes at both endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteSourceIBP.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteSourceIBP.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54a21778cccb46f7155d335ce31e3628953475a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
