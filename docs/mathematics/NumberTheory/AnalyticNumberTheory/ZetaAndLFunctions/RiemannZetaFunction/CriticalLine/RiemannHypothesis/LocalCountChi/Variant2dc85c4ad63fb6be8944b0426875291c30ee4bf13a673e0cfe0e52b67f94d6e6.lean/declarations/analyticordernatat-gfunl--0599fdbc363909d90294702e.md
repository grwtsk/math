# analyticOrderNatAt_gfunL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d1466c3-32c9-77e4-d235-80c43e8ee8e4",
  "kind": "lemma",
  "lexical_name": "analyticOrderNatAt_gfunL",
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
  "slug": "analyticordernatat-gfunl--0599fdbc363909d90294702e",
  "source": {
    "blob": "df84b60ef63f254661af9bf8ca502acdb66406a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 50,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant2dc85c4ad63fb6be8944b0426875291c30ee4bf13a673e0cfe0e52b67f94d6e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0599fdbc363909d90294702e61bbe7303f8752fde7a86445990fe8c87b041777",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant2dc85c4ad63fb6be8944b0426875291c30ee4bf13a673e0cfe0e52b67f94d6e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d1466c3-32c9-77e4-d235-80c43e8ee8e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma analyticOrderNatAt_gfunL (hχ1 : χ ≠ 1) {c₀ κ u : ℂ} (hκ0 : κ ≠ 0) (hu0 : u ≠ 0) (w : ℂ) :
    analyticOrderNatAt (gfunL χ c₀ κ u) w = zeroMultL χ (c₀ + κ * w) := by
  unfold analyticOrderNatAt zeroMultL gfunL
  congr 1
  have haff : AnalyticAt ℂ (fun z : ℂ => c₀ + κ * z) w := by fun_prop
  have hcomp : AnalyticAt ℂ (fun z => χ.LFunction (c₀ + κ * z)) w := by
    have hL : AnalyticAt ℂ χ.LFunction (c₀ + κ * w) :=
      LFunction_analyticOnNhd hχ1 _ (Set.mem_univ _)
    exact hL.comp_of_eq haff rfl
  have hmul : (fun z ↦ χ.LFunction (c₀ + κ * z) * u) =
      (fun z => χ.LFunction (c₀ + κ * z)) * fun _ => u := rfl
  rw [hmul, analyticOrderAt_mul hcomp analyticAt_const]
  have hconst : analyticOrderAt (fun _ : ℂ => u) w = 0 :=
    (analyticAt_const).analyticOrderAt_eq_zero.mpr hu0
  rw [hconst, add_zero]
  have hderiv : deriv (fun z : ℂ => c₀ + κ * z) w ≠ 0 := by
    rw [deriv_const_add, deriv_const_mul _ differentiableAt_id, deriv_id'']; simpa using hκ0
  have := analyticOrderAt_comp_of_deriv_ne_zero (f := χ.LFunction) haff hderiv
  simpa [Function.comp_def] using this

/-! ## The q-UNIFORM count (one absolute A₀ for every primitive χ mod q > 1) -/

set_option maxHeartbeats 1600000 in
/-- **q-uniform local count**: ONE absolute A₀ with
N_χ(t,t+1] ≤ A₀·log(q(|t|+3)) for every primitive χ mod q > 1.  Same disc/ZerosBound argument as the ζ local
count, with the uniform linear growth ‖L(s,χ)‖ ≤ 8q(|Im s|+3) (LFunction_growth_right_uniform) so that log B
stays additive in log q. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant2dc85c4ad63fb6be8944b0426875291c30ee4bf13a673e0cfe0e52b67f94d6e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant2dc85c4ad63fb6be8944b0426875291c30ee4bf13a673e0cfe0e52b67f94d6e6.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df84b60ef63f254661af9bf8ca502acdb66406a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
