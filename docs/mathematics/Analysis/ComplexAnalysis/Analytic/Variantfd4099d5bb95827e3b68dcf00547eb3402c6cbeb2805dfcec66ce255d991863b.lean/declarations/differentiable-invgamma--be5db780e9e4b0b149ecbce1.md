# differentiable_invGammaℝ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56cb8213-42cd-edb5-a24e-a79c5f7462e6",
  "kind": "theorem",
  "lexical_name": "differentiable_invGammaℝ",
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
  "slug": "differentiable-invgamma--be5db780e9e4b0b149ecbce1",
  "source": {
    "blob": "cd7e7663cb813ea13eff8dc9ba4aacf777775a93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 55,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be5db780e9e4b0b149ecbce12482adb0dad8d06b11a1263adf80ec1b9a4407fe",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56cb8213-42cd-edb5-a24e-a79c5f7462e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiable_invGammaℝ : Differentiable ℂ invGammaℝ := by
  have e : invGammaℝ = fun s => (Real.pi : ℂ) ^ (s / 2) * (1 / Complex.Gamma (s / 2)) := funext invGammaℝ_eq
  rw [e]
  refine Differentiable.mul ?_ ?_
  · intro s
    exact DifferentiableAt.const_cpow (differentiableAt_id.div_const 2)
      (Or.inl (by exact_mod_cast Real.pi_ne_zero))
  · have h := Complex.differentiable_one_div_Gamma.comp (differentiable_id.div_const (2:ℂ))
    intro s
    have := h s
    simpa [Function.comp_def, one_div] using this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd7e7663cb813ea13eff8dc9ba4aacf777775a93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
