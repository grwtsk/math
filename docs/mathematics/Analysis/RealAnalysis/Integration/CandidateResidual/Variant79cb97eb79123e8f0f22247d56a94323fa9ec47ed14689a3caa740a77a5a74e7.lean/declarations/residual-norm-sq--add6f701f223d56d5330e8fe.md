# residual_norm_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95378460-2e8c-e346-17b2-d5e420c62265",
  "kind": "theorem",
  "lexical_name": "residual_norm_sq",
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
  "slug": "residual-norm-sq--add6f701f223d56d5330e8fe",
  "source": {
    "blob": "db2f0727359b3ff53f55b8c7011427f7a439cb10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 64,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateResidual/Variant79cb97eb79123e8f0f22247d56a94323fa9ec47ed14689a3caa740a77a5a74e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:add6f701f223d56d5330e8feb237212d0fc578ce9fc81bad8768599f5e440603",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateResidual/Variant79cb97eb79123e8f0f22247d56a94323fa9ec47ed14689a3caa740a77a5a74e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95378460-2e8c-e346-17b2-d5e420c62265`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_norm_sq (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (fun t : ℝ =>
      ‖1 / (1 + (t : ℂ) * Complex.I) - actualLaplace ((t : ℂ) * Complex.I) *
        candidate X ε h ((t : ℂ) * Complex.I)‖ ^ 2) ∧
      ‖referenceVector - sourceOperator (controller X hX ε h hε hh hh1)‖ ^ 2 =
        (1 / (2 * Real.pi)) * ∫ t : ℝ,
          ‖1 / (1 + (t : ℂ) * Complex.I) - actualLaplace ((t : ℂ) * Complex.I) *
            candidate X ε h ((t : ℂ) * Complex.I)‖ ^ 2 := by
  have he := angular_plancherel _ (residual_integrable X hX ε h hε hh hh1)
    (fun t : ℝ => 1 / (1 + (t : ℂ) * Complex.I) -
      actualLaplace ((t : ℂ) * Complex.I) * candidate X ε h ((t : ℂ) * Complex.I))
    (residual_fourier X hX ε h hε hh hh1)
  simpa only [LinearIsometry.norm_map] using he

/-- The admitted original controller satisfies the complete signed residual bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateResidual/Variant79cb97eb79123e8f0f22247d56a94323fa9ec47ed14689a3caa740a77a5a74e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateResidual/Variant79cb97eb79123e8f0f22247d56a94323fa9ec47ed14689a3caa740a77a5a74e7.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db2f0727359b3ff53f55b8c7011427f7a439cb10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
