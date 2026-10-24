# continuous_horizontal_logDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d40888a-cd87-b2f8-3edc-4abd3da6cb2e",
  "kind": "theorem",
  "lexical_name": "continuous_horizontal_logDeriv",
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
  "slug": "continuous-horizontal-logderiv--8ddcc6f4a2894d6330d42189",
  "source": {
    "blob": "673dcccd858866aa66b420141af02e3fbbf80070",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 154,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ddcc6f4a2894d6330d42189c24998ed8d05d7d61f92d8930e3af4eef9e3e324",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d40888a-cd87-b2f8-3edc-4abd3da6cb2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_horizontal_logDeriv (y : ℝ) (hy : y ≠ 0)
    (havoid : ∀ z : ZeroPoint, height z ≠ |y|) :
    Continuous (fun σ : ℝ => -logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)) := by
  apply continuous_iff_continuousAt.mpr
  intro σ
  let s : ℂ := (σ : ℂ) + (y : ℂ) * Complex.I
  have hp : s ≠ 1 := by
    intro he
    have hi := congrArg Complex.im he
    exact hy (by simpa [s] using hi)
  have ha := analyticOn_riemannZeta s hp
  exact ((ha.deriv.continuousAt.div ha.continuousAt
    (zeta_ne_zero_horizontal y hy havoid σ)).neg).comp (f := fun u : ℝ => (u : ℂ) + (y : ℂ) * Complex.I) (x := σ)
    (show ContinuousAt (fun u : ℝ => (u : ℂ) + (y : ℂ) * Complex.I) σ from by fun_prop)

/-- Fixed-height compactness supplies a finite strip bound, not any rate in height. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `673dcccd858866aa66b420141af02e3fbbf80070` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
