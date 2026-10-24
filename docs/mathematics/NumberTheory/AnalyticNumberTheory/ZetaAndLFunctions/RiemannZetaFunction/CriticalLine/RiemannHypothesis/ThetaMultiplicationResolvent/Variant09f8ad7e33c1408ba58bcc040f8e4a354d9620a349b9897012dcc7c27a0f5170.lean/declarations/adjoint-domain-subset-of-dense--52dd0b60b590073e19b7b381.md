# adjoint_domain_subset_of_dense

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f82a11d00fae0cac2705d7250103168a8b6b2d38",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/09f8ad7e33c1408ba58bcc040f8e4a354d9620a349b9897012dcc7c27a0f5170.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ad23329-54b7-6ca7-019e-6fb67b18dbab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7cbc288c-b883-4738-fc62-59fd3e6e4632",
  "kind": "theorem",
  "lexical_name": "adjoint_domain_subset_of_dense",
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
  "slug": "adjoint-domain-subset-of-dense--52dd0b60b590073e19b7b381",
  "source": {
    "blob": "f82a11d00fae0cac2705d7250103168a8b6b2d38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 204,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaMultiplicationResolvent/Variant09f8ad7e33c1408ba58bcc040f8e4a354d9620a349b9897012dcc7c27a0f5170.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52dd0b60b590073e19b7b381b3c717abe9f33c4394f559f0491ac8766027c8a2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaMultiplicationResolvent/Variant09f8ad7e33c1408ba58bcc040f8e4a354d9620a349b9897012dcc7c27a0f5170.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cbc288c-b883-4738-fc62-59fd3e6e4632`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoint_domain_subset_of_dense
    (hd : Dense (coordinateDomain μ : Set (Lp ℂ 2 μ))) :
    (coordinateMultiplication μ)†.domain ≤ coordinateDomain μ := by
  let M := coordinateMultiplication μ
  have hMd : Dense (M.domain : Set (Lp ℂ 2 μ)) := hd
  have ha := LinearPMap.adjoint_isFormalAdjoint hMd
  have hs := coordinateMultiplication_formalAdjoint μ
  intro y hy
  let ya : M†.domain := ⟨y, hy⟩
  obtain ⟨u, hu⟩ := shiftedCoordinate_surjective μ false (M† ya - Complex.I • y)
  have hrel : M† ya - M u = Complex.I • (y - (u : Lp ℂ 2 μ)) := by
    rw [shiftedCoordinate_apply] at hu
    simp only [imaginaryShift, Bool.false_eq_true, if_false, neg_smul] at hu
    rw [← sub_eq_add_neg] at hu
    change M u - Complex.I • (u : Lp ℂ 2 μ) = M† ya - Complex.I • y at hu
    rw [smul_sub]
    rw [sub_eq_sub_iff_add_eq_add] at hu ⊢
    simpa [add_comm] using hu.symm
  let v : Lp ℂ 2 μ := y - (u : Lp ℂ 2 μ)
  have hz (w : coordinateDomain μ) : ⟪v, shiftedCoordinate μ true w⟫_ℂ = 0 := by
    have hr := congrArg (fun z : Lp ℂ 2 μ => ⟪z, (w : Lp ℂ 2 μ)⟫_ℂ) hrel
    rw [inner_sub_left, ha ya w, hs u w, ← inner_sub_left,
      inner_smul_left] at hr
    rw [shiftedCoordinate_apply, inner_add_right, inner_smul_right, hr]
    simp [imaginaryShift, Complex.conj_I, v]
  obtain ⟨w, hw⟩ := shiftedCoordinate_surjective μ true v
  have hv : v = 0 := (inner_self_eq_zero (𝕜 := ℂ)).mp (by simpa only [hw] using hz w)
  have hyu : y = (u : Lp ℂ 2 μ) := sub_eq_zero.mp hv
  rw [hyu]
  exact u.property

/-- Actual self-adjointness, with its dense-domain hypothesis exposed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaMultiplicationResolvent/Variant09f8ad7e33c1408ba58bcc040f8e4a354d9620a349b9897012dcc7c27a0f5170.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaMultiplicationResolvent/Variant09f8ad7e33c1408ba58bcc040f8e4a354d9620a349b9897012dcc7c27a0f5170.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f82a11d00fae0cac2705d7250103168a8b6b2d38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
