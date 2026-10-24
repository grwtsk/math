# nativeKernel_deriv_upper_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b1fe289-0afb-d5dc-5390-6649d311af0e",
  "kind": "theorem",
  "lexical_name": "nativeKernel_deriv_upper_zero",
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
  "slug": "nativekernel-deriv-upper-zero--29b2b63f42286eba3b19150b",
  "source": {
    "blob": "849a8a25f7474780165270bb88439ed309133a0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 302,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchKernelSampler/Variantb3862cc2d08b86d97d089e331278eeb262b0786a79b2d08a1bbd01af6657f090.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29b2b63f42286eba3b19150b2ac0b266a6f55bfac225c2939cb7ca6fc9ed7286",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchKernelSampler/Variantb3862cc2d08b86d97d089e331278eeb262b0786a79b2d08a1bbd01af6657f090.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b1fe289-0afb-d5dc-5390-6649d311af0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nativeKernel_deriv_upper_zero {A : ℝ} (hA : 1 ≤ A) :
    deriv (nativeKernel A) (2 * A) = 0 := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  rw [nativeKernel_deriv_eq_sum hp]
  apply Finset.sum_eq_zero
  intro k hk
  have hk1 : 1 ≤ (k : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hk).1
  rw [← derivativeProfile_deriv hp,
    derivativeProfile_deriv_upper_zero hp (by linarith [Real.log_nonneg hk1]), mul_zero]

/-- Third derivative of the actual differential profile keeps the full signed formula. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchKernelSampler/Variantb3862cc2d08b86d97d089e331278eeb262b0786a79b2d08a1bbd01af6657f090.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchKernelSampler/Variantb3862cc2d08b86d97d089e331278eeb262b0786a79b2d08a1bbd01af6657f090.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `849a8a25f7474780165270bb88439ed309133a0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
