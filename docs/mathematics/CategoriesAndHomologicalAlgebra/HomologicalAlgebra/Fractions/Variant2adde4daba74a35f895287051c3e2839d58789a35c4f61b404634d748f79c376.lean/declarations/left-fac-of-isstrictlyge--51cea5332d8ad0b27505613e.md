# left_fac_of_isStrictlyGE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49aa600f-1963-3779-3998-7c6fd8003014",
  "kind": "lemma",
  "lexical_name": "left_fac_of_isStrictlyGE",
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
  "slug": "left-fac-of-isstrictlyge--51cea5332d8ad0b27505613e",
  "source": {
    "blob": "331185773bacd3f812e57f9bedb4828863450188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 121,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant2adde4daba74a35f895287051c3e2839d58789a35c4f61b404634d748f79c376.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51cea5332d8ad0b27505613e82b3f0190088f114c884fd192d428b5ea31d3aa0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant2adde4daba74a35f895287051c3e2839d58789a35c4f61b404634d748f79c376.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49aa600f-1963-3779-3998-7c6fd8003014`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma left_fac_of_isStrictlyGE {X Y : CochainComplex C ℤ} (f : Q.obj X ⟶ Q.obj Y) (n : ℤ)
    [Y.IsStrictlyGE n] :
    ∃ (Y' : CochainComplex C ℤ) (_ : Y'.IsStrictlyGE n) (g : X ⟶ Y') (s : Y ⟶ Y')
      (_ : IsIso (Q.map s)), f = Q.map g ≫ inv (Q.map s) := by
  obtain ⟨Y', g, s, hs, rfl⟩ := left_fac f
  have : IsIso (Q.map (CochainComplex.truncGEMap s n)) := by
    rw [isIso_Q_map_iff_quasiIso, CochainComplex.quasiIso_truncGEMap_iff]
    rw [isIso_Q_map_iff_quasiIso] at hs
    infer_instance
  refine ⟨Y'.truncGE n, inferInstance, X.πTruncGE n ≫ CochainComplex.truncGEMap g n,
    Y.πTruncGE n ≫ CochainComplex.truncGEMap s n, ?_, ?_⟩
  · rw [Q.map_comp]
    infer_instance
  · have eq := Q.congr_map (CochainComplex.πTruncGE_naturality s n)
    have eq' := Q.congr_map (CochainComplex.πTruncGE_naturality g n)
    simp only [Functor.map_comp] at eq eq'
    simp only [Functor.map_comp, ← cancel_mono (Q.map (CochainComplex.πTruncGE Y n) ≫
      Q.map (CochainComplex.truncGEMap s n)), assoc, IsIso.inv_hom_id, comp_id]
    simp only [eq, IsIso.inv_hom_id_assoc, eq']

/-- Any morphism `f : Q.obj X ⟶ Q.obj Y` in the derived category
with `X` strictly `≥ a` and `≤ b`, and `Y` strictly `≥ a`
can be written as `f = inv (Q.map s) ≫ Q.map g` with `s : X' ⟶ X`
a quasi-isomorphism with `X'` strictly `≥ a` and `≤ b`, and `g : X' ⟶ Y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant2adde4daba74a35f895287051c3e2839d58789a35c4f61b404634d748f79c376.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant2adde4daba74a35f895287051c3e2839d58789a35c4f61b404634d748f79c376.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `331185773bacd3f812e57f9bedb4828863450188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
