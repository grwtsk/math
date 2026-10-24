# smallShiftedHomMap_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:851ffd44-07ae-d8bd-9843-9f93ab92e9f3",
  "kind": "lemma",
  "lexical_name": "smallShiftedHomMap_comp",
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
  "slug": "smallshiftedhommap-comp--c0310898cc9261a356842730",
  "source": {
    "blob": "a0740226a4fa4be97d74d1b9512c251878af8a75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 474,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant223bc02c7c1129fcd212d0ada6772dce37e235090b7096273c53372d26b7a4ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0310898cc9261a356842730c31455ac937ba4981773885fa311f19efe312c2a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant223bc02c7c1129fcd212d0ada6772dce37e235090b7096273c53372d26b7a4ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:851ffd44-07ae-d8bd-9843-9f93ab92e9f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma smallShiftedHomMap_comp
    [HasSmallLocalizedShiftedHom.{w} W₁ M Y₁ Z₁] [HasSmallLocalizedShiftedHom.{w''} W₂ M Z₂ Z₂]
    [HasSmallLocalizedShiftedHom.{w''} W₂ M Y₂ Z₂] [HasSmallLocalizedShiftedHom.{w} W₁ M X₁ Z₁]
    [HasSmallLocalizedShiftedHom.{w} W₁ M Z₁ Z₁] [HasSmallLocalizedShiftedHom.{w''} W₂ M X₂ Z₂]
    {a b c : M} (f : SmallShiftedHom.{w} W₁ X₁ Y₁ a) (g : SmallShiftedHom.{w} W₁ Y₁ Z₁ b)
    (h : b + a = c) :
    Φ.smallShiftedHomMap eX eZ (f.comp g h) =
      (Φ.smallShiftedHomMap eX eY f).comp (Φ.smallShiftedHomMap eY eZ g) h := by
  apply (SmallShiftedHom.equiv W₂ W₂.Q).injective
  let e := CatCommSq.iso Φ.functor W₁.Q W₂.Q (Φ.localizedFunctor W₁.Q W₂.Q)
  simp only [Φ.equiv_smallShiftedHomMap W₁.Q W₂.Q _ _ (Φ.localizedFunctor W₁.Q W₂.Q) e,
    SmallShiftedHom.equiv_comp, ShiftedHom.map_comp]
  rw [ShiftedHom.comp_assoc _ _ _ _ (zero_add b) (by simpa),
    ShiftedHom.comp_assoc _ _ _ _ h (by simpa),
    ShiftedHom.comp_assoc _ _ _ _ (add_zero b) (by simpa),
    ← ShiftedHom.comp_assoc _ _ _ (add_zero 0) (add_zero b) (by simp),
    ShiftedHom.mk₀_comp_mk₀]
  simp

end LocalizerMorphism

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant223bc02c7c1129fcd212d0ada6772dce37e235090b7096273c53372d26b7a4ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallShiftedHom/Variant223bc02c7c1129fcd212d0ada6772dce37e235090b7096273c53372d26b7a4ac.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0740226a4fa4be97d74d1b9512c251878af8a75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
