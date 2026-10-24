# eqOn_zero_of_preconnected_of_eventuallyEq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae756699-bdda-268f-c88a-a61eb4b6a022",
  "kind": "theorem",
  "lexical_name": "eqOn_zero_of_preconnected_of_eventuallyEq_zero",
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
  "slug": "eqon-zero-of-preconnected-of-eventuallyeq-zero--62534db70cfd51d7a74d4225",
  "source": {
    "blob": "c18d6a453947926096f7f08f585699b45e11878c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 210,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62534db70cfd51d7a74d4225576d5453bd2834203253973bbc0b8ad052dbd502",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae756699-bdda-268f-c88a-a61eb4b6a022`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eqOn_zero_of_preconnected_of_eventuallyEq_zero {f : E → F} {U : Set E}
    (hf : AnalyticOnNhd 𝕜 f U) (hU : IsPreconnected U)
    {z₀ : E} (h₀ : z₀ ∈ U) (hfz₀ : f =ᶠ[𝓝 z₀] 0) :
    EqOn f 0 U := by
  let F' := UniformSpace.Completion F
  set e : F →L[𝕜] F' := UniformSpace.Completion.toComplL
  have : AnalyticOnNhd 𝕜 (e ∘ f) U := fun x hx => (e.analyticAt _).comp (hf x hx)
  have A : EqOn (e ∘ f) 0 U := by
    apply eqOn_zero_of_preconnected_of_eventuallyEq_zero_aux this hU h₀
    filter_upwards [hfz₀] with x hx
    simp only [hx, Function.comp_apply, Pi.zero_apply, map_zero]
  intro z hz
  have : e (f z) = e 0 := by simpa only using A hz
  exact UniformSpace.Completion.coe_injective F this

/-- The *identity principle* for analytic functions: If two analytic functions coincide in a whole
neighborhood of a point `z₀`, then they coincide globally along a connected set.
For a one-dimensional version assuming only that the functions coincide at some points
arbitrarily close to `z₀`, see `eqOn_of_preconnected_of_frequently_eq`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c18d6a453947926096f7f08f585699b45e11878c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
