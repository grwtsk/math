# limit_integral_g

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c1ebf6b-2f2c-bc33-95f2-12fef446b7b6",
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
  "slug": "limit-integral-g--e7b325d6042e9e8d35cb1915",
  "source": {
    "blob": "07cb34995bd65d76b2aee043136040f40bf03c9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 173,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7b325d6042e9e8d35cb1915117cffe9a9d34fd965598a6050fc6eaff2af7eb4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c1ebf6b-2f2c-bc33-95f2-12fef446b7b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–197.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Variant4eb4f83c0fa736283e088eebe230f5dd7bd76cac86bfaa8e7f433ae2a481c76e.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07cb34995bd65d76b2aee043136040f40bf03c9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
