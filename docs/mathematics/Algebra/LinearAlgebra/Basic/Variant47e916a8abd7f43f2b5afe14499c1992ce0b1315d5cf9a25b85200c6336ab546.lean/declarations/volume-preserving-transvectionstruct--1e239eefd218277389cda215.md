# volume_preserving_transvectionStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2a3dbf4238ab555b4413644e3f3fbde8043082a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 379,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e62be8a-12cb-b76f-150b-d10e0d27c1c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8d245c2-4a5d-5cea-22c2-be76dfbf1ed7",
  "kind": "theorem",
  "lexical_name": "volume_preserving_transvectionStruct",
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
  "slug": "volume-preserving-transvectionstruct--1e239eefd218277389cda215",
  "source": {
    "blob": "c2a3dbf4238ab555b4413644e3f3fbde8043082a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 379,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e239eefd218277389cda215c883415d71637c9b4fd92eec02757c4e10d2f62e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8d245c2-4a5d-5cea-22c2-be76dfbf1ed7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem volume_preserving_transvectionStruct [DecidableEq ι] (t : TransvectionStruct ι ℝ) :
    MeasurePreserving (toLin' t.toMatrix) := by
  /- We separate the coordinate along which there is a shearing from the other ones, and apply
    Fubini. Along this coordinate (and when all the other coordinates are fixed), it acts like a
    translation, and therefore preserves Lebesgue. -/
  let p : ι → Prop := fun i => i ≠ t.i
  let α : Type _ := { x // p x }
  let β : Type _ := { x // ¬p x }
  let g : (α → ℝ) → (β → ℝ) → β → ℝ := fun a b => (fun _ => t.c * a ⟨t.j, t.hij.symm⟩) + b
  let F : (α → ℝ) × (β → ℝ) → (α → ℝ) × (β → ℝ) := fun p => (id p.1, g p.1 p.2)
  let e : (ι → ℝ) ≃ᵐ (α → ℝ) × (β → ℝ) := MeasurableEquiv.piEquivPiSubtypeProd (fun _ : ι => ℝ) p
  have : (toLin' t.toMatrix : (ι → ℝ) → ι → ℝ) = e.symm ∘ F ∘ e := by
    cases t with | mk t_i t_j t_hij t_c =>
    ext f k
    simp only [LinearEquiv.map_smul, dite_eq_ite, LinearMap.id_coe, ite_not,
      Algebra.id.smul_eq_mul, one_mul, dotProduct, stdBasisMatrix,
      MeasurableEquiv.piEquivPiSubtypeProd_symm_apply, id.def, transvection, Pi.add_apply,
      zero_mul, LinearMap.smul_apply, Function.comp_apply,
      MeasurableEquiv.piEquivPiSubtypeProd_apply, Matrix.TransvectionStruct.toMatrix_mk,
      Matrix.mulVec, LinearEquiv.map_add, ite_mul, Matrix.toLin'_apply, Pi.smul_apply,
      Subtype.coe_mk, LinearMap.add_apply, Finset.sum_congr, Matrix.toLin'_one]
    by_cases h : t_i = k
    · simp only [h, true_and_iff, Finset.mem_univ, if_true, eq_self_iff_true, Finset.sum_ite_eq,
        one_apply, boole_mul, add_comm]
    · simp only [h, Ne.symm h, add_zero, if_false, Finset.sum_const_zero, false_and_iff,
        mul_zero]
  rw [this]
  have A : MeasurePreserving e := by
    convert volume_preserving_piEquivPiSubtypeProd (fun _ : ι => ℝ) p
  have B : MeasurePreserving F :=
    haveI g_meas : Measurable (Function.uncurry g) := by
      have : Measurable fun c : α → ℝ => c ⟨t.j, t.hij.symm⟩ :=
        measurable_pi_apply ⟨t.j, t.hij.symm⟩
      refine Measurable.add ?_ measurable_snd
      refine measurable_pi_lambda _ fun _ => Measurable.const_mul ?_ _
      exact this.comp measurable_fst
    (MeasurePreserving.id _).skew_product g_meas
      (eventually_of_forall fun a => map_add_left_eq_self
        (Measure.pi fun _ => (stdOrthonormalBasis ℝ ℝ).toBasis.addHaar) _)
  exact ((A.symm e).comp B).comp A
#align real.volume_preserving_transvection_struct Real.volume_preserving_transvectionStruct

/-- Any invertible matrix rescales Lebesgue measure through the absolute value of its
determinant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2a3dbf4238ab555b4413644e3f3fbde8043082a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
