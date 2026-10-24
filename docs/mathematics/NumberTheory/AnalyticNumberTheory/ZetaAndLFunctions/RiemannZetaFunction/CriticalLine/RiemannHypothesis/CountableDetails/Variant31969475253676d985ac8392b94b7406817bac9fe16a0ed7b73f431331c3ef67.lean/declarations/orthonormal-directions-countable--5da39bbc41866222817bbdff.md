# orthonormal_directions_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f826d26f-d59a-f7e7-f88c-093375b9919d",
  "kind": "theorem",
  "lexical_name": "orthonormal_directions_countable",
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
  "slug": "orthonormal-directions-countable--5da39bbc41866222817bbdff",
  "source": {
    "blob": "71b72e78d1673c39bfbb74d2348c7f8e8997739c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 23,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CountableDetails/Variant31969475253676d985ac8392b94b7406817bac9fe16a0ed7b73f431331c3ef67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5da39bbc41866222817bbdff570970e5d05a04176f762878ee249989faa9cf02",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CountableDetails/Variant31969475253676d985ac8392b94b7406817bac9fe16a0ed7b73f431331c3ef67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f826d26f-d59a-f7e7-f88c-093375b9919d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orthonormal_directions_countable {ι E : Type*} [NormedAddCommGroup E]
    [InnerProductSpace ℝ E] [TopologicalSpace.SeparableSpace E] {v : ι → E}
    (hv : Orthonormal ℝ v) : Countable ι := by
  have hdist {i j : ι} (hij : i ≠ j) : 1 ≤ dist (v i) (v j) := by
    have h := norm_sub_sq_real (v i) (v j)
    rw [hv.1 i, hv.1 j, hv.inner_eq_zero hij] at h
    rw [dist_eq_norm]
    nlinarith [norm_nonneg (v i - v j)]
  have hd : Pairwise (fun i j => Disjoint
      (Metric.ball (v i) (1 / 2 : ℝ)) (Metric.ball (v j) (1 / 2 : ℝ))) := by
    intro i j hij
    apply Set.disjoint_left.mpr
    intro x hx hy
    have hx' := Metric.mem_ball.mp hx
    have hy' := Metric.mem_ball.mp hy
    have ht := dist_triangle (v i) x (v j)
    rw [dist_comm (v i) x] at ht
    have hsep := hdist hij
    linarith
  exact hd.countable_of_isOpen_disjoint (fun _ => Metric.isOpen_ball)
    (fun i => ⟨v i, Metric.mem_ball_self (by norm_num)⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CountableDetails/Variant31969475253676d985ac8392b94b7406817bac9fe16a0ed7b73f431331c3ef67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CountableDetails/Variant31969475253676d985ac8392b94b7406817bac9fe16a0ed7b73f431331c3ef67.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71b72e78d1673c39bfbb74d2348c7f8e8997739c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
