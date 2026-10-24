# contMDiff_mulInvariantVectorField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d279a49fca338886877ebc5d41f9224c039ef83",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f618733c-1923-8e11-f012-f9ad3119086c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a38dd51c-9ef7-5c2e-2665-d43b99e70b88",
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
  "slug": "contmdiff-mulinvariantvectorfield--4dc649e2e6f682d07110295e",
  "source": {
    "blob": "6d279a49fca338886877ebc5d41f9224c039ef83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 137,
    "path": "GRWTSK/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dc649e2e6f682d07110295e21f36d7d28a94fb69f7bc97f6fa652ba34a4c351",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a38dd51c-9ef7-5c2e-2665-d43b99e70b88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contMDiff_mulInvariantVectorField (v : GroupLieAlgebra I G) :
    ContMDiff I I.tangent (minSmoothness 𝕜 2)
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
  have M : 1 ≤ minSmoothness 𝕜 3 := le_trans (by norm_num) le_minSmoothness
  have A : minSmoothness 𝕜 2 + 1 = minSmoothness 𝕜 3 := by
    rw [← minSmoothness_add]
    norm_num
  let fg : G → TangentBundle I G := fun g ↦ TotalSpace.mk' E g 0
  have sfg : ContMDiff I I.tangent (minSmoothness 𝕜 2) fg := contMDiff_zeroSection _ _
  let fv : G → TangentBundle I G := fun _ ↦ TotalSpace.mk' E 1 v
  have sfv : ContMDiff I I.tangent (minSmoothness 𝕜 2) fv := contMDiff_const
  let F₁ : G → (TangentBundle I G × TangentBundle I G) := fun g ↦ (fg g, fv g)
  have S₁ : ContMDiff I (I.tangent.prod I.tangent) (minSmoothness 𝕜 2) F₁ :=
    ContMDiff.prodMk sfg sfv
  let F₂ : (TangentBundle I G × TangentBundle I G) → TangentBundle (I.prod I) (G × G) :=
    (equivTangentBundleProd I G I G).symm
  have S₂ : ContMDiff (I.tangent.prod I.tangent) (I.prod I).tangent (minSmoothness 𝕜 2) F₂ :=
    contMDiff_equivTangentBundleProd_symm
  let F₃ : TangentBundle (I.prod I) (G × G) → TangentBundle I G :=
    tangentMap (I.prod I) I (fun (p : G × G) ↦ p.1 * p.2)
  have S₃ : ContMDiff (I.prod I).tangent I.tangent (minSmoothness 𝕜 2) F₃ := by
    apply ContMDiff.contMDiff_tangentMap _ (m := minSmoothness 𝕜 2) le_rfl
    rw [A]
    exact contMDiff_mul I (minSmoothness 𝕜 3)
  let S := (S₃.comp S₂).comp S₁
  convert S with g
  · simp [F₁, F₂, F₃, fg, fv]
  · simp only [comp_apply, tangentMap, F₃, F₂, F₁, fg, fv]
    rw [mfderiv_prod_eq_add_apply ((contMDiff_mul I (minSmoothness 𝕜 3)).mdifferentiableAt M)]
    simp [mulInvariantVectorField]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant9fe6603e8d9f2b0b5579cf2ba3dfb3e0c5fc21013e3fcb0f17a6d33a063d30ad.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d279a49fca338886877ebc5d41f9224c039ef83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
