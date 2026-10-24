# reciprocal_sqrt_upper_weight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:082dfc76-ce69-0abf-1d7d-f99acdc88d7d",
  "kind": "theorem",
  "lexical_name": "reciprocal_sqrt_upper_weight",
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
  "slug": "reciprocal-sqrt-upper-weight--a44b36e111b421a713fe6416",
  "source": {
    "blob": "63cb2d89740191e49b21b27186ccf0778a0d99e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 75,
    "path": "GRWTSK/Analysis/IntegralTransforms/LogarithmicProfileWeights.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a44b36e111b421a713fe6416731b1e43fc0487e8a659f6f3f5fcc93ad8ed6050",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/LogarithmicProfileWeights.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:082dfc76-ce69-0abf-1d7d-f99acdc88d7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocal_sqrt_upper_weight :
    IntegrableOn (fun x : ℝ ↦ 1 / (x * Real.sqrt x)) (Ioi 1) ∧
      (∫ x in Ioi (1 : ℝ), 1 / (x * Real.sqrt x)) = 2 := by
  let g : ℝ → ℝ := fun x ↦ 1 / (x * Real.sqrt x)
  have pullback : (fun u : ℝ ↦ Real.exp u • g (Real.exp u)) =
      fun u : ℝ ↦ Real.exp (-u / 2) := by
    funext u
    exact reciprocal_jacobian u
  have exponent : (fun u : ℝ ↦ Real.exp (-u / 2)) =
      fun u : ℝ ↦ Real.exp ((-1 / 2 : ℝ) * u) := by
    funext u
    congr 1
    ring
  have admitted : IntegrableOn (fun u : ℝ ↦ Real.exp (-u / 2)) (Ioi 0) := by
    rw [exponent]
    exact integrableOn_exp_mul_Ioi (by norm_num) 0
  have admission := integrableOn_comp_exp_Ioi g 0
  rw [pullback, Real.exp_zero] at admission
  refine ⟨admission.mp admitted, ?_⟩
  have substitution := integral_comp_exp_Ioi g 0
  rw [pullback, Real.exp_zero] at substitution
  change (∫ x in Ioi (1 : ℝ), g x) = 2
  rw [← substitution, exponent, integral_exp_mul_Ioi (by norm_num) 0]
  norm_num

/-- The complete upper logarithmic weight is genuinely integrable and has mass four. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/IntegralTransforms/LogarithmicProfileWeights.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/IntegralTransforms/LogarithmicProfileWeights.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63cb2d89740191e49b21b27186ccf0778a0d99e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
