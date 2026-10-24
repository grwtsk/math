# differenceKernel_integral_eq_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09404307-7e88-28ee-61c4-0a4accd9f726",
  "kind": "theorem",
  "lexical_name": "differenceKernel_integral_eq_primitive",
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
  "slug": "differencekernel-integral-eq-primitive--23dff46beb0ec8cd83a1f042",
  "source": {
    "blob": "c1de6a374a69f3c211369b1169e02f4337c4af3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 312,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23dff46beb0ec8cd83a1f042cfd977f83893b6e61252c055e1cf332012138314",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09404307-7e88-28ee-61c4-0a4accd9f726`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differenceKernel_integral_eq_primitive (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    (∫ x in Set.Ioi (1 : ℝ), differenceSamplingKernel A (q * x)) =
      differencePrimitiveSamplingKernel A q := by
  rw [differencePrimitiveSamplingKernel_eq_fixed_sum A q hA hq]
  calc
    _ = ∫ x in Set.Ioi (1 : ℝ),
        ∑ l ∈ Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1), differenceInnerTerm A q l x := by
      apply setIntegral_congr_fun measurableSet_Ioi
      intro x hx
      exact differenceKernel_eq_inner_sum A q x hA hq hx.le
    _ = ∑ l ∈ Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1),
        ∫ x in Set.Ioi (1 : ℝ), differenceInnerTerm A q l x :=
      integral_finsetSum _ (fun l hl ↦ differenceInnerTerm_integrable A q l hA
        (by linarith) (mem_Icc.mp hl).1)
    _ = _ := by
      apply Finset.sum_congr rfl
      intro l hl
      exact differenceInnerTerm_integral A q l hA (by linarith) (mem_Icc.mp hl).1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1de6a374a69f3c211369b1169e02f4337c4af3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
