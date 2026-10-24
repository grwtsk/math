# actualClosedMangoldtXiPair_eq_joint_hyperbola

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:248384eb-2393-6d68-5d18-17c35efcd060",
  "kind": "theorem",
  "lexical_name": "actualClosedMangoldtXiPair_eq_joint_hyperbola",
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
  "slug": "actualclosedmangoldtxipair-eq-joint-hyperbola--553ec6d92f01af72e0b8a698",
  "source": {
    "blob": "e67a26b7d55e7afe4cc0400982108d20cd0ff3ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiClosedKernelHyperbola/Variant3bbdf1750766942348e8b4065e08620d3b2dceaf8905a5615e3a4c3e7d283071.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:553ec6d92f01af72e0b8a6985635e99adea7113f7922b7a815b8fe4bfc93c25d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiClosedKernelHyperbola/Variant3bbdf1750766942348e8b4065e08620d3b2dceaf8905a5615e3a4c3e7d283071.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:248384eb-2393-6d68-5d18-17c35efcd060`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedMangoldtXiPair_eq_joint_hyperbola (Y : ℝ) :
    actualClosedMangoldtXiPair Y = actualClosedMobiusXiHyperbola Y := by
  rw [actualClosedMangoldtXiPair_eq_half_sub_psi, actualPsi_eq_moebius_log_hyperbola]
  unfold actualMoebiusLogHalfHyperbola actualClosedMobiusXiHyperbola actualClosedXiAtomKernel
  rw [Finset.sum_div, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro d _
  rw [Finset.mul_sum, Finset.mul_sum, Finset.sum_div, ← Finset.sum_sub_distrib, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro m _
  rw [Nat.cast_mul, Real.sqrt_mul (Nat.cast_nonneg _)]
  ring

/-- Every true closed upper product atom has exactly zero joint kernel, including prime powers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiClosedKernelHyperbola/Variant3bbdf1750766942348e8b4065e08620d3b2dceaf8905a5615e3a4c3e7d283071.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiClosedKernelHyperbola/Variant3bbdf1750766942348e8b4065e08620d3b2dceaf8905a5615e3a4c3e7d283071.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e67a26b7d55e7afe4cc0400982108d20cd0ff3ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
