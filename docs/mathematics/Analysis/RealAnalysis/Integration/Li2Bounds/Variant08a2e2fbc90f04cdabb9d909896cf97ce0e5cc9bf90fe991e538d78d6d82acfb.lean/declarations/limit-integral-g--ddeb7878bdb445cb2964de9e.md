# limit_integral_g

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "19747a22de61254525bf1a65bbd96596666286a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13846fea-114a-c4b8-010e-fcb2ae9df583",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:688da79a-9f97-fa87-3a14-b4af90ddd7ad",
  "kind": "theorem",
  "lexical_name": "limit_integral_g",
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
  "slug": "limit-integral-g--ddeb7878bdb445cb2964de9e",
  "source": {
    "blob": "19747a22de61254525bf1a65bbd96596666286a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 165,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddeb7878bdb445cb2964de9ecb34fc835a2a92224b5d6f917ac32447ebe79331",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:688da79a-9f97-fa87-3a14-b4af90ddd7ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem limit_integral_g :
    Filter.Tendsto (fun ε => ∫ u in ε..1, g u) (nhdsWithin 0 (Ioi 0))
      (nhds (∫ u in (0 : ℝ)..1, g u)) := by
  have heq' : (fun ε => ∫ u in ε..(1 : ℝ), g u) = (fun ε => -∫ u in (1 : ℝ)..ε, g u) :=
    funext fun ε => intervalIntegral.integral_symm 1 ε
  have hval : -∫ u in (1 : ℝ)..0, g u = ∫ u in (0 : ℝ)..1, g u := by
    rw [intervalIntegral.integral_symm 0 1]; ring
  rw [heq', ← hval]
  have hcont : ContinuousOn (fun x => ∫ u in (1 : ℝ)..x, g u) (Icc 0 1) := by
    rw [← Set.uIcc_of_le (by norm_num : (0 : ℝ) ≤ 1)]
    exact intervalIntegral.continuousOn_primitive_interval' g_intervalIntegrable_full
      (by simp)
  exact ((hcont.neg 0 (Set.left_mem_Icc.2 (by norm_num))).mono_left
    (nhdsWithin_mono 0 Ioo_subset_Icc_self)).mono_left
    (le_of_eq (nhdsWithin_Ioo_eq_nhdsGT (by norm_num : (0 : ℝ) < 1)).symm)

/-! ### Connection to Principal Value li(2)

The symmetric integral li2_symmetric equals the principal value
li(2). This follows from the substitutions u = 1-t and u = t-1
which transform the principal value integral into the absolutely
convergent symmetric form.
-/

/-- The set difference Ioc 0 x \ Ioo (1-ε) (1+ε) for small ε > 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Variant08a2e2fbc90f04cdabb9d909896cf97ce0e5cc9bf90fe991e538d78d6d82acfb.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19747a22de61254525bf1a65bbd96596666286a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
