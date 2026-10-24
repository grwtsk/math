# hdecayV_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6a6398d-2471-60dc-c953-e5b17bf1f5a4",
  "kind": "theorem",
  "lexical_name": "hdecayV_of",
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
  "slug": "hdecayv-of--2cbec345e92694d5b62b1f46",
  "source": {
    "blob": "7a93fad2b51e67328575b14eecd00ee46eb7f55b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 87,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Variantf5bdb8a0973da6ed36c21e22e3e7d5e550f7fd7ace5c982753b4446eef583c53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cbec345e92694d5b62b1f46e7cb9a14c1d3eeb3fee5088c5e18819210ebe8a5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Variantf5bdb8a0973da6ed36c21e22e3e7d5e550f7fd7ace5c982753b4446eef583c53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6a6398d-2471-60dc-c953-e5b17bf1f5a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hdecayV_of {T : ℝ} (h8 : 8 * P.w ≤ P.L T) (r y : ℝ) (hy : |y| ≤ 1 / 2) (hz : (r : ℂ) - I * y ≠ 0) :
    ‖(P.atV v T).phiHat T (r - I * y)‖
      ≤ Real.exp ((P.atV v T).L T / 4) * (∫ u, |deriv (deriv (P.phiV v T)) u|) / ‖(r : ℂ) - I * y‖ ^ 2 := by
  have hL : 0 ≤ P.L T := (hW T h8).L_pos.le
  rw [Params.atV_phiHat T hP hv, Params.atV_L, le_div_iff₀ (by positivity)]
  refine le_trans ((hW T h8).norm_vHat_mul_sq_le _) ?_
  gcongr
  have him : ((r : ℂ) - I * y).im = -y := by simp
  rw [him, abs_neg]
  nlinarith

include ha in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Variantf5bdb8a0973da6ed36c21e22e3e7d5e550f7fd7ace5c982753b4446eef583c53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Variantf5bdb8a0973da6ed36c21e22e3e7d5e550f7fd7ace5c982753b4446eef583c53.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a93fad2b51e67328575b14eecd00ee46eb7f55b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
