# regularized_laplace_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bc6c941-3c54-64b8-99fe-e9038de6e6ce",
  "kind": "theorem",
  "lexical_name": "regularized_laplace_identity",
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
  "slug": "regularized-laplace-identity--1611de961bf2bee77896ce69",
  "source": {
    "blob": "0fcf951a309b6edf395116ea813083391ce846c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 30,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/LaplaceCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1611de961bf2bee77896ce693a0f945cb3963889520fa8490328cb6314f73e49",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/LaplaceCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bc6c941-3c54-64b8-99fe-e9038de6e6ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularized_laplace_identity (L : ℂ → ℂ)
    (hhol : DifferentiableOn ℂ L pickupLaplaceDomain)
    (hinit : ∀ z : ℂ, 1 / 2 < z.re →
      z * regularizedZeta (z + 1 / 2) * L z = z - 1 / 2) :
    ∀ z : ℂ, 0 < z.re →
      z * regularizedZeta (z + 1 / 2) * L z = z - 1 / 2 := by
  let U : Set ℂ := pickupLaplaceDomain
  have hU : IsOpen U := isOpen_lt continuous_const continuous_re
  have hleft : AnalyticOnNhd ℂ
      (fun z ↦ z * regularizedZeta (z + 1 / 2) * L z) U := by
    apply DifferentiableOn.analyticOnNhd _ hU
    intro z hz
    have hreg : DifferentiableAt ℂ (fun w : ℂ ↦ regularizedZeta (w + 1 / 2)) z :=
      differentiable_regularizedZeta.differentiableAt.comp z
        (differentiableAt_id.add_const (1 / 2 : ℂ))
    exact ((differentiableAt_id.mul hreg).mul
      (hhol.differentiableAt (hU.mem_nhds hz))).differentiableWithinAt
  have hright : AnalyticOnNhd ℂ (fun z : ℂ ↦ z - 1 / 2) U := by
    have hd : Differentiable ℂ (fun z : ℂ ↦ z - 1 / 2) :=
      differentiable_id.sub_const (1 / 2 : ℂ)
    exact fun z _ ↦ hd.analyticAt z
  have hnear : (fun z ↦ z * regularizedZeta (z + 1 / 2) * L z)
      =ᶠ[𝓝 (1 : ℂ)] (fun z ↦ z - 1 / 2) := by
    have hV : {z : ℂ | 1 / 2 < z.re} ∈ 𝓝 (1 : ℂ) :=
      (isOpen_lt continuous_const continuous_re).mem_nhds (by norm_num)
    filter_upwards [hV] with z hz
    exact hinit z hz
  have heq := hleft.eqOn_of_preconnected_of_eventuallyEq hright
    (convex_halfSpace_re_gt 0).isPreconnected
    (show (1 : ℂ) ∈ U by norm_num [U, pickupLaplaceDomain]) hnear
  exact fun z hz ↦ heq hz

/-- The exact inverse transform identity pays the regularized initial product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/LaplaceCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/LaplaceCriterion.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fcf951a309b6edf395116ea813083391ce846c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
