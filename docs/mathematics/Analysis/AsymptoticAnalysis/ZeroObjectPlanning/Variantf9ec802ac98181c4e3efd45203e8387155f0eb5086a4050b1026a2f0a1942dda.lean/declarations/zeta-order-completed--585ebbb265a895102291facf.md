# zeta_order_completed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84792044-4c81-0856-b1d5-021e1d5075ee",
  "kind": "theorem",
  "lexical_name": "zeta_order_completed",
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
  "slug": "zeta-order-completed--585ebbb265a895102291facf",
  "source": {
    "blob": "023326229fc518b9cc59df720322edc8ca645298",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 70,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroObjectPlanning/Variantf9ec802ac98181c4e3efd45203e8387155f0eb5086a4050b1026a2f0a1942dda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:585ebbb265a895102291facf3759faaaacf29c19e8d7363341587a5eb47c5f52",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroObjectPlanning/Variantf9ec802ac98181c4e3efd45203e8387155f0eb5086a4050b1026a2f0a1942dda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84792044-4c81-0856-b1d5-021e1d5075ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_order_completed {s : ℂ}
    (hs : FormalResearch.RiemannHypothesis.NontrivialZetaZero s) :
    analyticOrderAt riemannZeta s = analyticOrderAt completedRiemannZeta s := by
  have heq : riemannZeta =ᶠ[𝓝 s] fun z ↦ (Gammaℝ z)⁻¹ * completedRiemannZeta z := by
    filter_upwards [eventually_ne_nhds hs.ne_zero] with z hz
    simp [riemannZeta_def_of_ne_zero hz, div_eq_mul_inv, mul_comm]
  rw [analyticOrderAt_congr heq]
  change analyticOrderAt ((fun z ↦ (Gammaℝ z)⁻¹) * completedRiemannZeta) s = _
  rw [analyticOrderAt_mul
    (differentiable_Gammaℝ_inv.analyticAt s) (completed_analytic hs.ne_zero hs.2.2),
    (differentiable_Gammaℝ_inv.analyticAt s).analyticOrderAt_eq_zero.mpr
      (inv_ne_zero hs.gamma_real_ne_zero), zero_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroObjectPlanning/Variantf9ec802ac98181c4e3efd45203e8387155f0eb5086a4050b1026a2f0a1942dda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroObjectPlanning/Variantf9ec802ac98181c4e3efd45203e8387155f0eb5086a4050b1026a2f0a1942dda.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `023326229fc518b9cc59df720322edc8ca645298` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
