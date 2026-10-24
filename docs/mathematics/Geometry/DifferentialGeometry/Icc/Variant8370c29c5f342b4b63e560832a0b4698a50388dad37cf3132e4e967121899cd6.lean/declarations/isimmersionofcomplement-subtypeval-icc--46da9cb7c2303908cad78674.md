# isImmersionOfComplement_subtypeVal_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3aca36a6-0d6d-f136-c2ca-e8f4d81de8c3",
  "kind": "lemma",
  "lexical_name": "isImmersionOfComplement_subtypeVal_Icc",
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
  "slug": "isimmersionofcomplement-subtypeval-icc--46da9cb7c2303908cad78674",
  "source": {
    "blob": "6d8cc86e9db4c9c89cbda7c81345c49904857ca8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 80,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Icc/Variant8370c29c5f342b4b63e560832a0b4698a50388dad37cf3132e4e967121899cd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46da9cb7c2303908cad786741335f633df950aa36938336f0423c1d338d8a0d0",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Icc/Variant8370c29c5f342b4b63e560832a0b4698a50388dad37cf3132e4e967121899cd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3aca36a6-0d6d-f136-c2ca-e8f4d81de8c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isImmersionOfComplement_subtypeVal_Icc :
    IsImmersionOfComplement Unit (𝓡∂ 1) 𝓘(ℝ) n (fun (z : Icc x y) ↦ (z : ℝ)) := by
  intro z
  let φ₀ := ContinuousLinearEquiv.prodUnique ℝ (EuclideanSpace ℝ (Fin 1)) Unit
  let φ : (EuclideanSpace ℝ (Fin 1) × Unit) ≃L[ℝ] ℝ :=
    φ₀.trans (PiLp.equivOfUnique 2 ℝ (fun (_ : Fin 1) ↦ ℝ))
  by_cases hz : ↑z < y
  · -- At all points but `y`, the correct codomain chart maps `a` to `a + x`.
    apply IsImmersionAtOfComplement.mk_of_continuousAt (by fun_prop) φ
      (chartAt (EuclideanHalfSpace 1) z) (Homeomorph.addLeft (-x)).toOpenPartialHomeomorph
      (mem_chart_source _ z) (by simp [Homeomorph.addLeft]) (chart_mem_maximalAtlas _) ?_; swap
    · apply OpenPartialHomeomorph.mem_maximalAtlas_of_contMDiffOn
      · have : ContDiff ℝ n (fun y ↦ -x + y) := by fun_prop
        simpa [contMDiffOn_iff_contDiffOn, contDiffOn_univ]
      · have : ContDiff ℝ n (fun y ↦ x + y) := by fun_prop
        simpa [contMDiffOn_iff_contDiffOn, contDiffOn_univ, Homeomorph.addLeft]
    intro z' hz'
    obtain ⟨⟨u, rfl⟩, hu⟩ :
        (∃ y, ⇑(𝓡∂ 1) y = z') ∧ ⇑(𝓡∂ 1).symm z' ∈ (IccLeftChart x y).target := by
      simpa [hz] using! hz'
    replace hu : ofLp u.val 0 ≤ y - x := by
      apply le_of_lt
      simpa [modelWithCornersEuclideanHalfSpace_symm_apply, max_eq_left u.property] using! hu
    simp [hz, φ, φ₀, modelWithCornersEuclideanHalfSpace_symm_apply, u.property,
      IccLeftChart_symm_apply_of_le hu]
  · -- At the right boundary point, the correct codomain chart is mapping `a` to `y - a`.
    apply IsImmersionAtOfComplement.mk_of_continuousAt (by fun_prop) φ
      (chartAt (EuclideanHalfSpace 1) z)
      (Homeomorph.pointReflection (y / 2)).toOpenPartialHomeomorph (mem_chart_source _ z)
      (by simp [Homeomorph.pointReflection]) (chart_mem_maximalAtlas _) ?_; swap
    · apply OpenPartialHomeomorph.mem_maximalAtlas_of_contMDiffOn
      · have : ContDiff ℝ n ((fun v ↦ v + y / 2) ∘ fun x ↦ y / 2 - x) := by fun_prop
        simpa [contMDiffOn_iff_contDiffOn, contDiffOn_univ]
      · have : ContDiff ℝ n ((fun v ↦ -v + y / 2) ∘ fun p' ↦ p' - y / 2) := by fun_prop
        simpa [contMDiffOn_iff_contDiffOn, contDiffOn_univ]
    intro z' hz'
    obtain ⟨⟨u, rfl⟩, hu⟩ :
        (∃ y, ⇑(𝓡∂ 1) y = z') ∧ ⇑(𝓡∂ 1).symm z' ∈ (IccRightChart x y).target := by
      simpa [hz] using! hz'
    replace hu : ofLp u.val 0 ≤ y - x := by
      apply le_of_lt
      simpa [modelWithCornersEuclideanHalfSpace_symm_apply, max_eq_left u.property] using! hu
    simp [hz, φ, φ₀, modelWithCornersEuclideanHalfSpace_symm_apply, u.property,
      IccRightChart_symm_apply_of_le hu, Equiv.pointReflection_apply]
    linarith

/-- The inclusion map from a closed segment to `ℝ` is a smooth embedding -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Icc/Variant8370c29c5f342b4b63e560832a0b4698a50388dad37cf3132e4e967121899cd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Icc/Variant8370c29c5f342b4b63e560832a0b4698a50388dad37cf3132e4e967121899cd6.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d8cc86e9db4c9c89cbda7c81345c49904857ca8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
