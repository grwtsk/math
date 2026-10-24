# eq_420

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e729763-0ab9-c861-2865-30aa648018a0",
  "kind": "theorem",
  "lexical_name": "eq_420",
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
  "slug": "eq-420--d2f05a57d73d8bfdea3f41da",
  "source": {
    "blob": "a5bbda4de7955429ab43110d8409ee59338e06c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 965,
    "line": 942,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2f05a57d73d8bfdea3f41da57c94495982be589d70a670469edd0429d582d0b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e729763-0ab9-c861-2865-30aa648018a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 942–965.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_420 {x : ℝ} (hx : 2 ≤ x) :
    ∑ p ∈ filter Prime (Iic ⌊x⌋₊), Real.log p / p =
    log x + mertensConstant + (θ x - x) / x - ∫ y in Set.Ioi x, (θ y - y) / (y ^ 2) := by
  have diff_log_inv_id : ∀ t ∈ Set.Ici 2, DifferentiableAt ℝ (fun x => Real.log x / x) t := by
    fun_prop (disch := grind)
  have ioiIntegral_eq : ∫ (y : ℝ) in Set.Ioi x, (θ y - y) * deriv (fun s ↦
    Real.log s / s / Real.log s) y = ∫ (y : ℝ) in Set.Ioi x, - ((θ y - y) / y ^ 2) := by
    refine setIntegral_congr_fun measurableSet_Ioi fun y hy => ?_
    simp [field, deriv_eq (by grind : 2 ≤ y)]
  have integral_eq_log : ∫ y in 2..x, 1 / y = log x - Real.log 2 := by
    have {y} (hy : y ∈ Set.uIcc 2 x) := (Set.uIcc_of_le hx ▸ hy).1
    refine intervalIntegral.integral_eq_sub_of_hasDerivAt (f := Real.log) (fun y hy => ?_) ?_
    · simpa using hasDerivAt_log (by grind)
    · exact ContinuousOn.intervalIntegrable_of_Icc hx (by fun_prop (disch := grind))
  rw [eq_415 diff_log_inv_id hx, mertensConstant, mul_div_right_comm, log_div_log_eq (by grind),
    ioiIntegral_eq, intervalIntegral_eq hx, integral_eq_log, integral_neg]
  · ring
  · refine integrableOn_deriv_inv.1.congr_fun (fun y hy => ?_) measurableSet_Ioi
    simp [field, deriv_eq (by grind : 2 ≤ y)]
  · exact (integrableOn_deriv_inv.2 x hx).congr fun y hy =>
      (deriv_eq (Set.uIoc_of_le hx ▸ hy).1.le).symm

@[blueprint
  "rs-420"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean#L942).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5bbda4de7955429ab43110d8409ee59338e06c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
