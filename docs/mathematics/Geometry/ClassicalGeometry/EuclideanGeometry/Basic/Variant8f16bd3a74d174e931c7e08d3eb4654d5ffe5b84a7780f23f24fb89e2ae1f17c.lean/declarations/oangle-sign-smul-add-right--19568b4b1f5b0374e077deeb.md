# oangle_sign_smul_add_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51a536a8-56d8-7c53-79be-9b890d9749df",
  "kind": "theorem",
  "lexical_name": "oangle_sign_smul_add_right",
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
  "slug": "oangle-sign-smul-add-right--19568b4b1f5b0374e077deeb",
  "source": {
    "blob": "e028067f601fd2e937463eca35e7079ed9a4513e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 944,
    "line": 910,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8f16bd3a74d174e931c7e08d3eb4654d5ffe5b84a7780f23f24fb89e2ae1f17c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19568b4b1f5b0374e077deeb3c3cb9260c6d56a8c35858f11c4b463d65a2c709",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8f16bd3a74d174e931c7e08d3eb4654d5ffe5b84a7780f23f24fb89e2ae1f17c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51a536a8-56d8-7c53-79be-9b890d9749df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 910–944.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_sign_smul_add_right (x y : V) (r : ℝ) :
    (o.oangle x (r • x + y)).sign = (o.oangle x y).sign := by
  by_cases h : o.oangle x y = 0 ∨ o.oangle x y = π
  · rwa [Real.Angle.sign_eq_zero_iff.2 h, Real.Angle.sign_eq_zero_iff,
      oangle_smul_add_right_eq_zero_or_eq_pi_iff]
  have h' : ∀ r' : ℝ, o.oangle x (r' • x + y) ≠ 0 ∧ o.oangle x (r' • x + y) ≠ π := by
    intro r'
    rwa [← o.oangle_smul_add_right_eq_zero_or_eq_pi_iff r', not_or] at h
  let s : Set (V × V) := (fun r' : ℝ => (x, r' • x + y)) '' Set.univ
  have hc : IsConnected s := isConnected_univ.image _ (continuous_const.prod_mk
    ((continuous_id.smul continuous_const).add continuous_const)).continuousOn
  have hf : ContinuousOn (fun z : V × V => o.oangle z.1 z.2) s := by
    refine' ContinuousAt.continuousOn fun z hz => o.continuousAt_oangle _ _
    all_goals
      simp_rw [Set.mem_image] at hz
      obtain ⟨r', -, rfl⟩ := hz
      simp only [Prod.fst, Prod.snd]
      intro hz
    · simpa [hz] using (h' 0).1
    · simpa [hz] using (h' r').1
  have hs : ∀ z : V × V, z ∈ s → o.oangle z.1 z.2 ≠ 0 ∧ o.oangle z.1 z.2 ≠ π := by
    intro z hz
    simp_rw [Set.mem_image] at hz
    obtain ⟨r', -, rfl⟩ := hz
    exact h' r'
  have hx : (x, y) ∈ s := by
    convert Set.mem_image_of_mem (fun r' : ℝ => (x, r' • x + y)) (Set.mem_univ 0)
    simp
  have hy : (x, r • x + y) ∈ s := Set.mem_image_of_mem _ (Set.mem_univ _)
  convert Real.Angle.sign_eq_of_continuousOn hc hf hs hx hy
#align orientation.oangle_sign_smul_add_right Orientation.oangle_sign_smul_add_right

/-- Adding a multiple of the second vector passed to `oangle` to the first vector does not change
the sign of the angle. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8f16bd3a74d174e931c7e08d3eb4654d5ffe5b84a7780f23f24fb89e2ae1f17c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8f16bd3a74d174e931c7e08d3eb4654d5ffe5b84a7780f23f24fb89e2ae1f17c.lean#L910).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e028067f601fd2e937463eca35e7079ed9a4513e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
