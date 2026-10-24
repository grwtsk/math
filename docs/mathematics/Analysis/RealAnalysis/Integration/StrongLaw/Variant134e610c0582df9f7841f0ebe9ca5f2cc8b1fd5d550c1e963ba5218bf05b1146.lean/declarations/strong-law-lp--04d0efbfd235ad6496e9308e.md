# strong_law_Lp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ddcf1107b0499008db6ae482ac58dbc3c446b02",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 673,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc146b75-5da9-b37e-f80b-bdf4ddff5e99",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2afcf73e-1f9f-9729-2008-85b12429db87",
  "kind": "theorem",
  "lexical_name": "strong_law_Lp",
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
  "slug": "strong-law-lp--04d0efbfd235ad6496e9308e",
  "source": {
    "blob": "0ddcf1107b0499008db6ae482ac58dbc3c446b02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 695,
    "line": 673,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04d0efbfd235ad6496e9308eb9d9e5fc9626cbf46a69b761172ebe5e6cfacf90",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2afcf73e-1f9f-9729-2008-85b12429db87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 673–695.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strong_law_Lp {p : ℝ≥0∞} (hp : 1 ≤ p) (hp' : p ≠ ∞) (X : ℕ → Ω → ℝ) (hℒp : Memℒp (X 0) p)
    (hindep : Pairwise fun i j => IndepFun (X i) (X j)) (hident : ∀ i, IdentDistrib (X i) (X 0)) :
    Tendsto (fun n => snorm (fun ω => (∑ i in range n, X i ω) / n - 𝔼[X 0]) p ℙ) atTop (𝓝 0) := by
  have hmeas : ∀ i, AEStronglyMeasurable (X i) ℙ := fun i =>
    (hident i).aestronglyMeasurable_iff.2 hℒp.1
  have hint : Integrable (X 0) ℙ := hℒp.integrable hp
  have havg : ∀ n, AEStronglyMeasurable (fun ω => (∑ i in range n, X i ω) / n) ℙ := by
    intro n
    simp_rw [div_eq_mul_inv]
    exact AEStronglyMeasurable.mul_const (aestronglyMeasurable_sum _ fun i _ => hmeas i) _
  refine' tendsto_Lp_of_tendstoInMeasure _ hp hp' havg (memℒp_const _) _
    (tendstoInMeasure_of_tendsto_ae havg (strong_law_ae _ hint hindep hident))
  rw [(_ : (fun n ω => (∑ i in range n, X i ω) / ↑n) = fun n => (∑ i in range n, X i) / ↑n)]
  · exact (uniformIntegrable_average hp <|
      Memℒp.uniformIntegrable_of_identDistrib hp hp' hℒp hident).2.1
  · ext n ω
    simp only [Pi.coe_nat, Pi.div_apply, sum_apply]
set_option linter.uppercaseLean3 false in
#align probability_theory.strong_law_Lp ProbabilityTheory.strong_law_Lp

end StrongLawLp

end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean#L673).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ddcf1107b0499008db6ae482ac58dbc3c446b02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
