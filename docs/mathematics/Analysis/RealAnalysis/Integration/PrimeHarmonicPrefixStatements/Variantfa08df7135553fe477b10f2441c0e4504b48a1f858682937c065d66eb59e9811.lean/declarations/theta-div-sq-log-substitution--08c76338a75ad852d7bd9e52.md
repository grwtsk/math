# theta_div_sq_log_substitution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d3d9ecafe3b7823a078f3a09368ac9a4f96097d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fa08df7135553fe477b10f2441c0e4504b48a1f858682937c065d66eb59e9811.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6bc5e0f-70e4-5d05-7a55-7e9234c6f895",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acf0337c-52a8-84dd-9218-7e61301357ec",
  "kind": "theorem",
  "lexical_name": "theta_div_sq_log_substitution",
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
  "slug": "theta-div-sq-log-substitution--08c76338a75ad852d7bd9e52",
  "source": {
    "blob": "1d3d9ecafe3b7823a078f3a09368ac9a4f96097d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 143,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantfa08df7135553fe477b10f2441c0e4504b48a1f858682937c065d66eb59e9811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08c76338a75ad852d7bd9e52cd5df73d9d8d009c32137f179de5ca99f0374e73",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantfa08df7135553fe477b10f2441c0e4504b48a1f858682937c065d66eb59e9811.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acf0337c-52a8-84dd-9218-7e61301357ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theta_div_sq_log_substitution (u : ℝ) :
    (∫ t in 1..Real.exp u, Chebyshev.theta t / t ^ 2) =
      ∫ v in 0..u, 1 + thetaLogError v := by
  have h := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
    (f := Real.exp) (f' := Real.exp) (g := fun t : ℝ => Chebyshev.theta t / t ^ 2)
    (a := (0 : ℝ)) (b := u) Real.continuous_exp.continuousOn
    (fun x _ => Real.hasDerivAt_exp x) (fun x _ => (Real.exp_pos x).le)
  rw [Real.exp_zero] at h
  rw [← h]
  apply intervalIntegral.integral_congr
  intro v _
  simp only [Function.comp_apply, thetaLogError_eq, Real.exp_neg]
  have hv : Real.exp v ≠ 0 := (Real.exp_pos v).ne'
  field_simp
  ring

/-- Closed-right prime harmonic summation, including the lower endpoint `u = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantfa08df7135553fe477b10f2441c0e4504b48a1f858682937c065d66eb59e9811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixStatements/Variantfa08df7135553fe477b10f2441c0e4504b48a1f858682937c065d66eb59e9811.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d3d9ecafe3b7823a078f3a09368ac9a4f96097d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
