# analyticOrderNatAt_gfun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88d07532-4519-b023-8a91-f51fa6e7ea9e",
  "kind": "lemma",
  "lexical_name": "analyticOrderNatAt_gfun",
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
  "slug": "analyticordernatat-gfun--d0e453cbd0a28fdfaafae9bd",
  "source": {
    "blob": "561807f25c3f2966d0a4f6d1e521dbfbcf0dd2e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 71,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0e453cbd0a28fdfaafae9bd55cf505ecd1e5097b0d1eb0795a4d4f4f2eb3f50",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88d07532-4519-b023-8a91-f51fa6e7ea9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma analyticOrderNatAt_gfun {s₀ c u w : ℂ} (hc : c ≠ 0) (hu : u ≠ 0) (h : s₀ + c * w ≠ 1) :
    analyticOrderNatAt (gfun s₀ c u) w = zeroMult (s₀ + c * w) := by
  unfold analyticOrderNatAt zeroMult gfun
  congr 1
  have haff : AnalyticAt ℂ (fun z : ℂ => s₀ + c * z) w := by fun_prop
  have hcomp : AnalyticAt ℂ (fun z => riemannZeta (s₀ + c * z)) w := comp_affine_analyticAt h
  have hmul : (fun z ↦ riemannZeta (s₀ + c * z) * u) =
      (fun z => riemannZeta (s₀ + c * z)) * fun _ => u := rfl
  rw [hmul, analyticOrderAt_mul hcomp analyticAt_const]
  have hconst : analyticOrderAt (fun _ : ℂ => u) w = 0 :=
    (analyticAt_const).analyticOrderAt_eq_zero.mpr hu
  rw [hconst, add_zero]
  have hderiv : deriv (fun z : ℂ => s₀ + c * z) w ≠ 0 := by
    rw [deriv_const_add, deriv_const_mul _ differentiableAt_id, deriv_id'']; simpa using hc
  have := analyticOrderAt_comp_of_deriv_ne_zero (f := riemannZeta) haff hderiv
  simpa [Function.comp_def] using this

/-- ‖z‖ ≤ |Re z| + |Im z| packaged for the window geometry: a point ρ with 0 < Re ρ < 1 and
t < Im ρ ≤ t + 1 lies within distance 3 of 2 + it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `561807f25c3f2966d0a4f6d1e521dbfbcf0dd2e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
