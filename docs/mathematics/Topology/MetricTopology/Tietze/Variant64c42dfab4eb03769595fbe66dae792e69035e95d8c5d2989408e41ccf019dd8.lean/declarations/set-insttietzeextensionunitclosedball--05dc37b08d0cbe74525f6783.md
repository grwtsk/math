# Set.instTietzeExtensionUnitClosedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a75e5a2ece143e4074fbc3af6cc6ef6f65164250488be73554f960c9fe94c1ed",
  "kind": "instance",
  "lexical_name": "Set.instTietzeExtensionUnitClosedBall",
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
  "slug": "set-insttietzeextensionunitclosedball--05dc37b08d0cbe74525f6783",
  "source": {
    "blob": "801c9a21c4027a679ff374fd1253df3e97900b04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 59,
    "path": "GRWTSK/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05dc37b08d0cbe74525f678365ce30ebcd8106a9b4229656f387891667fe4199",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a75e5a2ece143e4074fbc3af6cc6ef6f65164250488be73554f960c9fe94c1ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Set.instTietzeExtensionUnitClosedBall {𝕜 : Type v} [RCLike 𝕜] {E : Type w}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E] [FiniteDimensional 𝕜 E] :
    TietzeExtension.{u, w} (Metric.closedBall (0 : E) 1) := by
  have : NormedSpace ℝ E := NormedSpace.restrictScalars ℝ 𝕜 E
  have : IsScalarTower ℝ 𝕜 E := Real.isScalarTower
  -- I didn't find this retract in Mathlib.
  let g : E → E := fun x ↦ ‖x‖⁻¹ • x
  classical
  suffices this : Continuous (piecewise (Metric.closedBall 0 1) id g) by
    refine .of_retract ⟨Subtype.val, by fun_prop⟩ ⟨_, this.codRestrict fun x ↦ ?_⟩ ?_
    · by_cases hx : x ∈ Metric.closedBall 0 1
      · simpa [piecewise_eq_of_mem (hi := hx)] using hx
      · simp only [g, piecewise_eq_of_notMem (hi := hx), RCLike.real_smul_eq_coe_smul (K := 𝕜)]
        by_cases hx' : x = 0 <;> simp [hx']
    · ext x
      simp [piecewise_eq_of_mem (hi := x.property)]
  refine continuous_piecewise (fun x hx ↦ ?_) continuousOn_id ?_
  · replace hx : ‖x‖ = 1 := by simpa [frontier_closedBall (0 : E) one_ne_zero] using hx
    simp [g, hx]
  · refine continuousOn_id.norm.inv₀ ?_ |>.smul continuousOn_id
    simp only [closure_compl, interior_closedBall (0 : E) one_ne_zero, mem_compl_iff,
      Metric.mem_ball, dist_zero_right, not_lt, id_eq, ne_eq, norm_eq_zero]
    exact fun x hx ↦ norm_pos_iff.mp <| one_pos.trans_le hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `801c9a21c4027a679ff374fd1253df3e97900b04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
