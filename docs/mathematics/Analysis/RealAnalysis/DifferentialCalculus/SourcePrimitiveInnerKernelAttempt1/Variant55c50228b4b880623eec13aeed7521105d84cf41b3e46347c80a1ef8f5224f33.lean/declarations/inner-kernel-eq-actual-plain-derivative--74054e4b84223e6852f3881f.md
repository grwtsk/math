# inner_kernel_eq_actual_plain_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6dda3fd6-6822-ec82-bfbb-a14ef5bf95ed",
  "kind": "theorem",
  "lexical_name": "inner_kernel_eq_actual_plain_derivative",
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
  "slug": "inner-kernel-eq-actual-plain-derivative--74054e4b84223e6852f3881f",
  "source": {
    "blob": "aebf131b847c092f8c2a1394e2e3b91142d0d0c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 114,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveInnerKernelAttempt1/Variant55c50228b4b880623eec13aeed7521105d84cf41b3e46347c80a1ef8f5224f33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74054e4b84223e6852f3881f468356caa2b903389a66bf1c3e518d0ebae84bbb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveInnerKernelAttempt1/Variant55c50228b4b880623eec13aeed7521105d84cf41b3e46347c80a1ef8f5224f33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dda3fd6-6822-ec82-bfbb-a14ef5bf95ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_kernel_eq_actual_plain_derivative (A y : ℝ) (hA : 0 < A) (hy : 0 < y) :
    (∫ t in Real.log y..2 * A,
      literalXiWeight t y * deriv (deriv (cesaroWeight A)) t) =
        deriv (plainProfile A 1) y := by
  have hw : Continuous (fun t => literalXiWeight t y) :=
    (show Differentiable ℝ (fun t => literalXiWeight t y) from
      fun t => (literalXiWeight_time_hasDerivAt t y).differentiableAt).continuous
  have hi := (hw.mul (cesaroWeight_second_deriv_continuous A hA)).intervalIntegrable
    (Real.log y) (2 * A)
  have hf := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => innerPrimitive_hasDerivAt A y t hA) hi
  have hu := actual_upper_traces A hA
  have hl := literal_lower_traces y hy
  rw [hf]
  unfold innerPrimitive
  rw [hu.1, hu.2.1, hu.2.2, hl.1, hl.2]
  rw [(plainProfile_hasDerivAt hA 1 hy).deriv]
  simp only [Real.log_one, zero_add]
  rw [← plain_prefactor_eq y hy]
  unfold cesaroWeight
  ring
end
end RH16PrimitiveInnerKernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveInnerKernelAttempt1/Variant55c50228b4b880623eec13aeed7521105d84cf41b3e46347c80a1ef8f5224f33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveInnerKernelAttempt1/Variant55c50228b4b880623eec13aeed7521105d84cf41b3e46347c80a1ef8f5224f33.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aebf131b847c092f8c2a1394e2e3b91142d0d0c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
