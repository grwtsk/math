# integral_norm_le_support_mul_l2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd808599f1794358477016e7ea83720692a6611f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 10,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1fbd21485a696d11a77923c3f79d75c892db1c8d8594f082c5eae3a1171cc008.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3bb0b67c-ed07-4d58-2203-4af645fa4f87",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c2b62e3-5c39-de2f-f7d7-710d7798037e",
  "kind": "theorem",
  "lexical_name": "integral_norm_le_support_mul_l2",
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
  "slug": "integral-norm-le-support-mul-l2--c76af1efb17c5fae95de2b91",
  "source": {
    "blob": "cd808599f1794358477016e7ea83720692a6611f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 10,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroH1ToL1Probe/Variant1fbd21485a696d11a77923c3f79d75c892db1c8d8594f082c5eae3a1171cc008.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c76af1efb17c5fae95de2b91389a5378d442a90bcb309c71857a026f42132a4d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroH1ToL1Probe/Variant1fbd21485a696d11a77923c3f79d75c892db1c8d8594f082c5eae3a1171cc008.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c2b62e3-5c39-de2f-f7d7-710d7798037e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_norm_le_support_mul_l2 (R : ℝ) {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hs : Function.support f ⊆ Icc (-R) R) :
    (∫ x, ‖f x‖) ≤ lpNorm f 2 volume *
      Real.sqrt (∫ x, ((Icc (-R) R).indicator (fun _ : ℝ ↦ (1 : ℝ)) x) ^ 2) := by
  let g : ℝ → ℝ := (Icc (-R) R).indicator (fun _ ↦ 1)
  have hg : MemLp g 2 volume :=
    memLp_indicator_const 2 measurableSet_Icc 1 (Or.inr isCompact_Icc.measure_ne_top)
  have hfg : (fun x ↦ ‖f x‖ * ‖g x‖) = (fun x ↦ ‖f x‖) := by
    funext x
    by_cases hx : x ∈ Icc (-R) R
    · simp [g, hx]
    · have hfx : f x = 0 := Function.notMem_support.mp (fun h ↦ hx (hs h))
      simp [hfx]
  have h := integral_mul_norm_le_Lp_mul_Lq Real.HolderConjugate.two_two
    (by simpa using hf) (by simpa using hg)
  rw [hfg] at h
  simp only [Real.rpow_two, Real.norm_eq_abs, sq_abs, ← Real.sqrt_eq_rpow] at h
  simpa only [g, Real.norm_eq_abs, one_div, ← Real.sqrt_eq_rpow,
    ← lpNorm_two_eq_sqrt_integral_sq hf] using h

end
end ZeroH1ToL1
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroH1ToL1Probe/Variant1fbd21485a696d11a77923c3f79d75c892db1c8d8594f082c5eae3a1171cc008.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroH1ToL1Probe/Variant1fbd21485a696d11a77923c3f79d75c892db1c8d8594f082c5eae3a1171cc008.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd808599f1794358477016e7ea83720692a6611f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
