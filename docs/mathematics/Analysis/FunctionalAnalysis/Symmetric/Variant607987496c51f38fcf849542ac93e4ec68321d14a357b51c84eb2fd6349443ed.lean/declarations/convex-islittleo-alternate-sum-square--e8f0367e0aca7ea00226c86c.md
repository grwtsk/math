# Convex.isLittleO_alternate_sum_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d736e100624eb6fe703ead1c11a751760147fe98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/607987496c51f38fcf849542ac93e4ec68321d14a357b51c84eb2fd6349443ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9fda8b2-8b79-8f13-9bdf-2f4a7be07650",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f80c8d8-0a00-f803-75a0-3753b7528af2",
  "kind": "theorem",
  "lexical_name": "Convex.isLittleO_alternate_sum_square",
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
  "slug": "convex-islittleo-alternate-sum-square--e8f0367e0aca7ea00226c86c",
  "source": {
    "blob": "d736e100624eb6fe703ead1c11a751760147fe98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 180,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Symmetric/Variant607987496c51f38fcf849542ac93e4ec68321d14a357b51c84eb2fd6349443ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8f0367e0aca7ea00226c86ce2c1c4831b1cf830f647dd4eae9db6349402a9d0",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Symmetric/Variant607987496c51f38fcf849542ac93e4ec68321d14a357b51c84eb2fd6349443ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f80c8d8-0a00-f803-75a0-3753b7528af2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Convex.isLittleO_alternate_sum_square {v w : E} (h4v : x + (4 : ℝ) • v ∈ interior s)
    (h4w : x + (4 : ℝ) • w ∈ interior s) :
    (fun h : ℝ => f (x + h • (2 • v + 2 • w)) + f (x + h • (v + w))
        - f (x + h • (2 • v + w)) - f (x + h • (v + 2 • w)) - h ^ 2 • f'' v w) =o[𝓝[>] 0]
      fun h => h ^ 2 := by
  have A : (1 : ℝ) / 2 ∈ Ioc (0 : ℝ) 1 := ⟨by norm_num, by norm_num⟩
  have B : (1 : ℝ) / 2 ∈ Icc (0 : ℝ) 1 := ⟨by norm_num, by norm_num⟩
  have C : ∀ w : E, (2 : ℝ) • w = 2 • w := fun w => by simp only [two_smul]
  have h2v2w : x + (2 : ℝ) • v + (2 : ℝ) • w ∈ interior s := by
    convert s_conv.interior.add_smul_sub_mem h4v h4w B using 1
    simp only [smul_sub, smul_smul, one_div, add_sub_add_left_eq_sub, mul_add, add_smul]
    norm_num
    simp only [show (4 : ℝ) = (2 : ℝ) + (2 : ℝ) by norm_num, _root_.add_smul]
    abel
  have h2vww : x + (2 • v + w) + w ∈ interior s := by
    convert h2v2w using 1
    simp only [two_smul]
    abel
  have h2v : x + (2 : ℝ) • v ∈ interior s := by
    convert s_conv.add_smul_sub_mem_interior xs h4v A using 1
    simp only [smul_smul, one_div, add_sub_cancel', add_right_inj]
    norm_num
  have h2w : x + (2 : ℝ) • w ∈ interior s := by
    convert s_conv.add_smul_sub_mem_interior xs h4w A using 1
    simp only [smul_smul, one_div, add_sub_cancel', add_right_inj]
    norm_num
  have hvw : x + (v + w) ∈ interior s := by
    convert s_conv.add_smul_sub_mem_interior xs h2v2w A using 1
    simp only [smul_smul, one_div, add_sub_cancel', add_right_inj, smul_add, smul_sub]
    norm_num
    abel
  have h2vw : x + (2 • v + w) ∈ interior s := by
    convert s_conv.interior.add_smul_sub_mem h2v h2v2w B using 1
    simp only [smul_add, smul_sub, smul_smul, ← C]
    norm_num
    abel
  have hvww : x + (v + w) + w ∈ interior s := by
    convert s_conv.interior.add_smul_sub_mem h2w h2v2w B using 1
    rw [one_div, add_sub_add_right_eq_sub, add_sub_cancel', inv_smul_smul₀ two_ne_zero, two_smul]
    abel
  have TA1 := s_conv.taylor_approx_two_segment hf xs hx h2vw h2vww
  have TA2 := s_conv.taylor_approx_two_segment hf xs hx hvw hvww
  convert TA1.sub TA2 using 1
  ext h
  simp only [two_smul, smul_add, ← add_assoc, ContinuousLinearMap.map_add,
    ContinuousLinearMap.add_apply, Pi.smul_apply, ContinuousLinearMap.coe_smul',
    ContinuousLinearMap.map_smul]
  abel
#align convex.is_o_alternate_sum_square Convex.isLittleO_alternate_sum_square

/-- Assume that `f` is differentiable inside a convex set `s`, and that its derivative `f'` is
differentiable at a point `x`. Then, given two vectors `v` and `w` pointing inside `s`, one
has `f'' v w = f'' w v`. Superseded by `Convex.second_derivative_within_at_symmetric`, which
removes the assumption that `v` and `w` point inside `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Symmetric/Variant607987496c51f38fcf849542ac93e4ec68321d14a357b51c84eb2fd6349443ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Symmetric/Variant607987496c51f38fcf849542ac93e4ec68321d14a357b51c84eb2fd6349443ed.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d736e100624eb6fe703ead1c11a751760147fe98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
