# hasSum_taylorSeries_on_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f19a296a-c1e7-436e-cd82-f31a20f00eed",
  "kind": "lemma",
  "lexical_name": "hasSum_taylorSeries_on_ball",
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
  "slug": "hassum-taylorseries-on-ball--8bb6274be5b67880dc977d0f",
  "source": {
    "blob": "8d1e87cd1b6e0e269111d43a19624d1c253253cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 56,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/TaylorSeries/Variant6f9df937b3a5258e466995ab06b87f30387b80c8a65162ae741b22f8ebe96b39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bb6274be5b67880dc977d0fd9be23784e34e033da44a4c6c99640ef5d46df5f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/TaylorSeries/Variant6f9df937b3a5258e466995ab06b87f30387b80c8a65162ae741b22f8ebe96b39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f19a296a-c1e7-436e-cd82-f31a20f00eed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasSum_taylorSeries_on_ball :
    HasSum (fun n : ℕ ↦ (n ! : ℂ)⁻¹ • (z - c) ^ n • iteratedDeriv n f c) (f z) := by
  obtain ⟨r', hr', hr'₀, hzr'⟩ : ∃ r' < r, 0 < r' ∧ z ∈ Metric.ball c r' := by
    obtain ⟨r', h₁, h₂⟩ := exists_between (Metric.mem_ball'.mp hz)
    exact ⟨r', h₂, Metric.pos_of_mem_ball h₁, Metric.mem_ball'.mpr h₁⟩
  lift r' to NNReal using hr'₀.le
  have hz' : z - c ∈ EMetric.ball 0 r' := by
    rw [Metric.emetric_ball_nnreal]
    exact mem_ball_zero_iff.mpr hzr'
  have H := (hf.mono <| Metric.closedBall_subset_ball hr').hasFPowerSeriesOnBall hr'₀
      |>.hasSum_iteratedFDeriv hz'
  simp only [add_sub_cancel] at H
  convert H using 4 with n
  simpa only [iteratedDeriv_eq_iteratedFDeriv, smul_eq_mul, mul_one, Finset.prod_const,
    Finset.card_fin]
    using ((iteratedFDeriv ℂ n f c).map_smul_univ (fun _ ↦ z - c) (fun _ ↦ 1)).symm

include hf hz in
/-- A function that is complex differentiable on the open ball of radius `r` around `c`
is given by evaluating its Taylor series at `c` on this open ball. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/TaylorSeries/Variant6f9df937b3a5258e466995ab06b87f30387b80c8a65162ae741b22f8ebe96b39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/TaylorSeries/Variant6f9df937b3a5258e466995ab06b87f30387b80c8a65162ae741b22f8ebe96b39.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d1e87cd1b6e0e269111d43a19624d1c253253cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
