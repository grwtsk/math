# Triangulated.someOctahedron'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:799e13d30b1c9f52bef6239b0cee0ead9f0375c2f4c953f41a8565d451f59854",
  "kind": "def",
  "lexical_name": "Triangulated.someOctahedron'",
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
  "slug": "triangulated-someoctahedron--a9bc3b263e24cb2ef47cd079",
  "source": {
    "blob": "280e67d6b6520d7a1f72f2fb0987807459a6fff8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 323,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant41a6e4601aea9c166080c5642d1aa6ca342ca109c2384d2d29a8326b1f66f74e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9bc3b263e24cb2ef47cd079a6f5aacdc097c19b718bd565a7347772af4dbf34",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant41a6e4601aea9c166080c5642d1aa6ca342ca109c2384d2d29a8326b1f66f74e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:799e13d30b1c9f52bef6239b0cee0ead9f0375c2f4c953f41a8565d451f59854`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[no_expose] def Triangulated.someOctahedron' [IsTriangulated C]
    {X₁ X₂ X₃ Z₁₂ Z₂₃ Z₁₃ : C}
    {u₁₂ : X₁ ⟶ X₂} {u₂₃ : X₂ ⟶ X₃} {u₁₃ : X₁ ⟶ X₃} (comm : u₁₂ ≫ u₂₃ = u₁₃)
    {v₁₂ : Z₁₂ ⟶ X₁} {w₁₂ : X₂ ⟶ Z₁₂⟦(1 : ℤ)⟧} (h₁₂ : Triangle.mk v₁₂ u₁₂ w₁₂ ∈ distTriang C)
    {v₂₃ : Z₂₃ ⟶ X₂} {w₂₃ : X₃ ⟶ Z₂₃⟦(1 : ℤ)⟧} (h₂₃ : Triangle.mk v₂₃ u₂₃ w₂₃ ∈ distTriang C)
    {v₁₃ : Z₁₃ ⟶ X₁} {w₁₃ : X₃ ⟶ Z₁₃⟦(1 : ℤ)⟧} (h₁₃ : Triangle.mk v₁₃ u₁₃ w₁₃ ∈ distTriang C) :
    Octahedron' comm h₁₂ h₂₃ h₁₃ := by
  let o := someOctahedron comm (rot_of_distTriang _ h₁₂) (rot_of_distTriang _ h₂₃)
    (rot_of_distTriang _ h₁₃)
  let m₁ := (shiftShiftNeg Z₁₂ 1).inv ≫ o.m₁⟦-1⟧' ≫ (shiftShiftNeg Z₁₃ 1).hom
  let m₃ := (shiftShiftNeg Z₁₃ 1).inv ≫ o.m₃⟦-1⟧' ≫ (shiftShiftNeg Z₂₃ 1).hom
  have eq₁ := o.comm₁
  have eq₂ := o.comm₂
  have eq₃ := o.comm₃
  have eq₄ := o.comm₄
  dsimp only [Triangle.mk_obj₁, Triangle.mk_obj₂, Triangle.mk_mor₁, Triangle.mk_mor₃]
    at eq₁ eq₂ eq₃ eq₄
  rw [comp_neg, neg_inj] at eq₂
  rw [neg_comp, comp_neg, neg_inj] at eq₄
  refine ⟨m₁, m₃, ?_, ?_, ?_, ?_, ?_⟩
  · rw [← shiftFunctorCompIsoId_naturality_1 v₁₃ 1 (-1) (Int.add_right_neg 1)]
    dsimp [m₁]
    rw [assoc, assoc, Iso.hom_inv_id_app_assoc]
    nth_rw 2 [← assoc]
    rw [← Functor.map_comp, eq₂, shiftFunctorCompIsoId_naturality_1]
  · dsimp [m₁]
    rw [Functor.map_comp, Functor.map_comp, shift_shiftFunctorCompIsoId_hom_app,
      shift_shiftFunctorCompIsoId_inv_app, shiftFunctorCompIsoId_naturality_1, eq₁]
  · dsimp [m₃]
    rw [Functor.map_comp, Functor.map_comp, shift_shiftFunctorCompIsoId_hom_app,
      shift_shiftFunctorCompIsoId_inv_app, shiftFunctorCompIsoId_naturality_1, eq₃]
  · rw [← shiftFunctorCompIsoId_naturality_1 v₂₃ 1 (-1) (Int.add_right_neg 1)]
    dsimp [m₃]
    rw [assoc, assoc, Iso.hom_inv_id_app_assoc]
    nth_rw 2 [← assoc]
    rw [← Functor.map_comp, ← eq₄, ← Functor.map_comp, shiftFunctorCompIsoId_naturality_1]
  · apply isomorphic_distinguished _ ((Triangle.shift_distinguished_iff _ (-1 : ℤ)).mpr o.mem)
    refine Triangle.isoMk _ _ (shiftShiftNeg Z₁₂ (1 : ℤ)).symm
      (-(shiftShiftNeg Z₁₃ (1 : ℤ)).symm) (shiftShiftNeg Z₂₃ (1 : ℤ)).symm (comm₃ := ?_)
    dsimp
    simp only [Int.reduceNeg, assoc, Int.negOnePow_neg, Int.negOnePow_one, neg_comp,
      Functor.map_neg, Functor.map_comp, smul_neg, Units.neg_smul, one_smul, neg_neg]
    rw [shift_shift_neg', shift_shift_neg', shift_shiftFunctorCompIsoId_inv_app,
      shiftFunctorComm_hom_app_of_add_eq_zero _ _ (Int.add_right_neg 1)]
    simp

/-- Constructor for `IsTriangulated C` which shows that it suffices to obtain an octahedron
for a suitable isomorphic diagram instead of the given diagram. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant41a6e4601aea9c166080c5642d1aa6ca342ca109c2384d2d29a8326b1f66f74e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant41a6e4601aea9c166080c5642d1aa6ca342ca109c2384d2d29a8326b1f66f74e.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `280e67d6b6520d7a1f72f2fb0987807459a6fff8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
