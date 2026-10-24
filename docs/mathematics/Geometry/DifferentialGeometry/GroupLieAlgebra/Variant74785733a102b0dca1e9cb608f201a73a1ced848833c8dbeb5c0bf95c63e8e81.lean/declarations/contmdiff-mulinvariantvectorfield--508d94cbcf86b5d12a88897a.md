# contMDiff_mulInvariantVectorField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df0bf58c6042d7ed5a4d6f584bbdfa885d219811",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d18b58a-f373-39f0-af07-77c2f57b8cd7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb7094cb-622b-0b27-ec3d-ce0693c589f5",
  "kind": "theorem",
  "lexical_name": "contMDiff_mulInvariantVectorField",
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
  "slug": "contmdiff-mulinvariantvectorfield--508d94cbcf86b5d12a88897a",
  "source": {
    "blob": "df0bf58c6042d7ed5a4d6f584bbdfa885d219811",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 147,
    "path": "GRWTSK/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:508d94cbcf86b5d12a88897acb3cd8ecdba0f8d7ba60bbab6f4f94b7ffcb0449",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb7094cb-622b-0b27-ec3d-ce0693c589f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contMDiff_mulInvariantVectorField (v : GroupLieAlgebra I G) :
    CMDiff (minSmoothness 𝕜 2)
      (fun (g : G) ↦ (mulInvariantVectorField v g : TangentBundle I G)) := by
  /- We will write the desired map as a composition of obviously smooth maps.
  The derivative of the product `P : (g, h) ↦ g * h` is given by
  `DP (g, h) ⬝ (u, v) = DL_g v + DR_h u`, where `L_g` and `R_h` are respectively left and right
  multiplication by `g` and `h`. As `P` is smooth, so is `DP`.
  Consider the map `F₁ : M → T (M × M)` mapping `g` to `(0, v) ∈ T_(g, e) (M × M)`. Then the
  composition of `DP` with `F₁` maps `g` to `DL_g v ∈ T_g M`, thanks to the above formula. This
  is the desired invariant vector field. Since both `DP` and `F₁` are smooth, their composition is
  smooth as desired.
  There is a small abuse of notation in the above argument, where we have identified `T (M × M)`
  and `TM × TM`. In the formal proof, we need to introduce this identification, called `F₂` below,
  which is also already known to be smooth. -/
  have M : minSmoothness 𝕜 3 ≠ 0 := lt_of_lt_of_le (by simp) le_minSmoothness |>.ne'
  have A : minSmoothness 𝕜 2 + 1 = minSmoothness 𝕜 3 := by
    rw [← minSmoothness_add]
    norm_num
  let fg : G → TangentBundle I G := fun g ↦ TotalSpace.mk' E g 0
  have sfg : CMDiff (minSmoothness 𝕜 2) fg := contMDiff_zeroSection _ _
  let fv : G → TangentBundle I G := fun _ ↦ TotalSpace.mk' E 1 v
  have sfv : CMDiff (minSmoothness 𝕜 2) fv := contMDiff_const
  let F₁ : G → (TangentBundle I G × TangentBundle I G) := fun g ↦ (fg g, fv g)
  have S₁ : CMDiff (minSmoothness 𝕜 2) F₁ := sfg.prodMk sfv
  let F₂ : (TangentBundle I G × TangentBundle I G) → TangentBundle (I.prod I) (G × G) :=
    (equivTangentBundleProd I G I G).symm
  have S₂ : CMDiff (minSmoothness 𝕜 2) F₂ := contMDiff_equivTangentBundleProd_symm
  let F₃ : TangentBundle (I.prod I) (G × G) → TangentBundle I G :=
    tangentMap% (fun (p : G × G) ↦ p.1 * p.2)
  have S₃ : CMDiff (minSmoothness 𝕜 2) F₃ := by
    apply ContMDiff.contMDiff_tangentMap _ (m := minSmoothness 𝕜 2) le_rfl
    rw [A]
    exact contMDiff_mul I (minSmoothness 𝕜 3)
  let S := (S₃.comp S₂).comp S₁
  convert! S with g
  · simp [F₁, F₂, F₃, fg, fv]
  · simp only [comp_apply, tangentMap, F₃, F₂, F₁, fg, fv]
    rw [mfderiv_prod_eq_add_apply ((contMDiff_mul I (minSmoothness 𝕜 3)).mdifferentiableAt M)]
    simp +instances [mulInvariantVectorField]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant74785733a102b0dca1e9cb608f201a73a1ced848833c8dbeb5c0bf95c63e8e81.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df0bf58c6042d7ed5a4d6f584bbdfa885d219811` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
