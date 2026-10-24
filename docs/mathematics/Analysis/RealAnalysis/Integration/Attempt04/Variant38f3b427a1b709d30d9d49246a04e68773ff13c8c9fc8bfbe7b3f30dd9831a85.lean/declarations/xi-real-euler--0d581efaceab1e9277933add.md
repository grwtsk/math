# xi_real_euler

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ffcc192-a22e-1c67-02ee-11f317f61ced",
  "kind": "theorem",
  "lexical_name": "xi_real_euler",
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
  "slug": "xi-real-euler--0d581efaceab1e9277933add",
  "source": {
    "blob": "4e515b20a502b769b01fe5e92386cffb8db7edf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variant38f3b427a1b709d30d9d49246a04e68773ff13c8c9fc8bfbe7b3f30dd9831a85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d581efaceab1e9277933add3ad797ed8c7b980e9213b9478b3e5611b0f51489",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt04/Variant38f3b427a1b709d30d9d49246a04e68773ff13c8c9fc8bfbe7b3f30dd9831a85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ffcc192-a22e-1c67-02ee-11f317f61ced`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xi_real_euler {σ : ℝ} (hσ : 0 < σ) (h1 : σ ≠ 1) :
    XiToeplitz.xi (σ : ℂ) =
      ((σ * (σ - 1) * realGammaR σ / 2 *
        (σ / (σ - 1) - σ * ∫ u in Ioi (1 : ℝ), fractionalWeight σ u) : ℝ) : ℂ) := by
  have hΓ : Complex.Gammaℝ (σ : ℂ) ≠ 0 := Complex.Gammaℝ_ne_zero_of_re_pos (by simpa using hσ)
  have hc : completedRiemannZeta (σ : ℂ) =
      Complex.Gammaℝ (σ : ℂ) * riemannZeta (σ : ℂ) := by
    have h := riemannZeta_def_of_ne_zero (s := (σ : ℂ)) (ofReal_ne_zero.mpr hσ.ne')
    exact (mul_comm _ _).trans ((eq_div_iff hΓ).mp h) |>.symm
  rw [XiToeplitz.xi_eq_completed (ofReal_ne_zero.mpr hσ.ne') (by exact_mod_cast h1),
    hc, gammaR_ofReal, riemannZeta_real_euler hσ h1]
  push_cast
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt04/Variant38f3b427a1b709d30d9d49246a04e68773ff13c8c9fc8bfbe7b3f30dd9831a85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variant38f3b427a1b709d30d9d49246a04e68773ff13c8c9fc8bfbe7b3f30dd9831a85.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e515b20a502b769b01fe5e92386cffb8db7edf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
