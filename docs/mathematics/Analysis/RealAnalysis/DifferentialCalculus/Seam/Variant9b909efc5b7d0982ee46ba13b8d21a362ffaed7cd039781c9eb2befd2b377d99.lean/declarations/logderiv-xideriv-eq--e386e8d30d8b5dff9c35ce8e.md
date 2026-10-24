# logDeriv_xiDeriv_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c01d502-e14a-4295-3774-11ed29a48a7e",
  "kind": "theorem",
  "lexical_name": "logDeriv_xiDeriv_eq",
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
  "slug": "logderiv-xideriv-eq--e386e8d30d8b5dff9c35ce8e",
  "source": {
    "blob": "58375321162bbfb67cb0b2b9ce5a1574c8ee46c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 375,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant9b909efc5b7d0982ee46ba13b8d21a362ffaed7cd039781c9eb2befd2b377d99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e386e8d30d8b5dff9c35ce8e95434ab07015ec851f03f2c66851e486c84ce80e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant9b909efc5b7d0982ee46ba13b8d21a362ffaed7cd039781c9eb2befd2b377d99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c01d502-e14a-4295-3774-11ed29a48a7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_xiDeriv_eq {s : ℂ} (hs : 0 < s.re) (hne : xiDeriv s ≠ 0) :
    logDeriv xiDeriv s = logDeriv Gammaℝ s + logDeriv Yfn s := by
  have hopen : IsOpen {z : ℂ | 0 < z.re} := isOpen_lt continuous_const Complex.continuous_re
  have hev : xiDeriv =ᶠ[𝓝 s] fun z => Gammaℝ z * Yfn z := by
    filter_upwards [hopen.mem_nhds hs] with z hz
    exact xiDeriv_eq_Gammaℝ_mul_Yfn hz
  have hY : Yfn s ≠ 0 := fun h => hne ((Yfn_eq_zero_iff hs).mp h)
  rw [logDeriv_apply, logDeriv_apply, logDeriv_apply, hev.deriv_eq, hev.eq_of_nhds]
  have hG := Gammaℝ_ne_zero_of_re_pos hs
  have hd : HasDerivAt (fun z : ℂ => Gammaℝ z * Yfn z)
      (deriv Gammaℝ s * Yfn s + Gammaℝ s * deriv Yfn s) s :=
    (Zeta23.WeilEF.differentiableAt_Gammaℝ hs).hasDerivAt.mul (Yfn_differentiableAt hs).hasDerivAt
  rw [hd.deriv]
  field_simp

/-- **logDeriv ξ = L + ζ′/ζ** on Re s > 0, s ≠ 1, ζ(s) ≠ 0  [XF′ Lemma 2.1: ξ′/ξ = L − A]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant9b909efc5b7d0982ee46ba13b8d21a362ffaed7cd039781c9eb2befd2b377d99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant9b909efc5b7d0982ee46ba13b8d21a362ffaed7cd039781c9eb2befd2b377d99.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58375321162bbfb67cb0b2b9ce5a1574c8ee46c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
