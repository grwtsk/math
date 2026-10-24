# fixedKernel_square_integrableOn_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0bb0fd1c27edc89935365d7119e55a1f8f9c4082",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 589,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f809608b0ce9357cbd5638568ce150458a92d0753ca5187932bee41d745158bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3108a5e1-9cdd-3053-0aac-156f7fd1d4fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02ff0af5-05c0-6d4e-2868-272632e1a462",
  "kind": "theorem",
  "lexical_name": "fixedKernel_square_integrableOn_tail",
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
  "slug": "fixedkernel-square-integrableon-tail--4f52317ad8ec2510553e6f3a",
  "source": {
    "blob": "0bb0fd1c27edc89935365d7119e55a1f8f9c4082",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 589,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variantf809608b0ce9357cbd5638568ce150458a92d0753ca5187932bee41d745158bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f52317ad8ec2510553e6f3a79407128a9ffbab16b12e3c81b1497a929ca980b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variantf809608b0ce9357cbd5638568ce150458a92d0753ca5187932bee41d745158bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02ff0af5-05c0-6d4e-2868-272632e1a462`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 589–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem fixedKernel_square_integrableOn_tail :
    IntegrableOn (fun t => fixedKernel t ^ 2) (Set.Ioi 2) := by
  have hmaj : IntegrableOn (fun t : ℝ => Real.exp (1 - t) * derivativeBudget ^ 2)
      (Set.Ioi 2) := by
    have hi := (exp_neg_integrableOn_Ioi 2 (b := 1) (by norm_num)).const_mul
      (Real.exp 1 * derivativeBudget ^ 2)
    change Integrable _ (volume.restrict (Set.Ioi 2))
    convert hi using 1
    funext t
    rw [show 1 - t = 1 + -(1 : ℝ) * t by ring, Real.exp_add]
    ring
  refine hmaj.mono' (fixedKernel_measurable.pow_const 2).aestronglyMeasurable ?_
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  rw [Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _)]
  calc
    fixedKernel t ^ 2 = |fixedKernel t| ^ 2 := (sq_abs _).symm
    _ ≤ (Real.exp ((1 - t) / 2) * derivativeBudget) ^ 2 :=
      pow_le_pow_left₀ (abs_nonneg _) (fixedKernel_abs_le t ht.le) 2
    _ = Real.exp (1 - t) * derivativeBudget ^ 2 := by
      rw [mul_pow, ← Real.exp_nat_mul]
      congr 2
      norm_num
      ring

/-- The unchanged source kernel has a genuine square integral on the whole real axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variantf809608b0ce9357cbd5638568ce150458a92d0753ca5187932bee41d745158bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variantf809608b0ce9357cbd5638568ce150458a92d0753ca5187932bee41d745158bd.lean#L589).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bb0fd1c27edc89935365d7119e55a1f8f9c4082` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
