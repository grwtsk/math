# poleRemoved_ne_zero_on_rightHalfPlane

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34bbd6f8-fca0-5395-4aba-d0c1cfa861c0",
  "kind": "theorem",
  "lexical_name": "poleRemoved_ne_zero_on_rightHalfPlane",
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
  "slug": "poleremoved-ne-zero-on-righthalfplane--bb97bd27631cbd165b7d12f3",
  "source": {
    "blob": "2f36b892e40998d0c900fb474617b9677ae19e96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 366,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb97bd27631cbd165b7d12f3d3b5a00c73bff4322238b90f00339871fe9460fd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34bbd6f8-fca0-5395-4aba-d0c1cfa861c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem poleRemoved_ne_zero_on_rightHalfPlane
    {ρ : ℝ}
    (hρhalf : (1 / 2 : ℝ) ≤ ρ)
    (hρone : ρ < 1)
    {F : ℂ → ℂ}
    (hhol : DifferentiableOn ℂ F (rightHalfPlane ρ))
    (hEuler : ∀ s : ℂ, 1 < s.re →
      F s =
        -(deriv riemannZeta s) / riemannZeta s -
          1 / (s - 1)) :
    ∀ s ∈ rightHalfPlane ρ,
      poleRemoved s ≠ 0 := by
  have hFa :=
    hhol.analyticOnNhd (rightHalfPlane_open ρ)
  apply nonvanishing
    (rightHalfPlane_open ρ)
    (rightHalfPlane_preconnected ρ)
    (poleRemoved_analyticOn_rightHalfPlane hρhalf)
    (show AnalyticOnNhd ℂ
      (fun s => -F s)
      (rightHalfPlane ρ) from
      fun s hs => (hFa s hs).neg)
    (one_mem_rightHalfPlane hρone)
    (show poleRemoved 1 ≠ 0 by
      rw [poleRemoved_one]
      exact one_ne_zero)
  exact ode_on_rightHalfPlane
    hρhalf hρone hhol hEuler

/-- Graded continuation excludes zeta zeros in exactly the same half-plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f36b892e40998d0c900fb474617b9677ae19e96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
