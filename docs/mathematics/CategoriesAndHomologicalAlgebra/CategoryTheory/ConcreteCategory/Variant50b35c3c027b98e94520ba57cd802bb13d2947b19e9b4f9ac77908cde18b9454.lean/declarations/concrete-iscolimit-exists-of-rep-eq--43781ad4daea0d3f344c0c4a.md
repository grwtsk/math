# Concrete.isColimit_exists_of_rep_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00f9e15f-d3d0-3196-3c28-d4bbd9c2ac9e",
  "kind": "theorem",
  "lexical_name": "Concrete.isColimit_exists_of_rep_eq",
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
  "slug": "concrete-iscolimit-exists-of-rep-eq--43781ad4daea0d3f344c0c4a",
  "source": {
    "blob": "0d2998ff5be5089ebaee65cf34e1a7e797bdd068",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 243,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43781ad4daea0d3f344c0c4a2fd753dbf3aa0888b5df35a9fedd062d9915f555",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00f9e15f-d3d0-3196-3c28-d4bbd9c2ac9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Concrete.isColimit_exists_of_rep_eq {D : Cocone F} {i j : J} (hD : IsColimit D)
    (x : F.obj i) (y : F.obj j) (h : D.ι.app _ x = D.ι.app _ y) :
    ∃ (k : _) (f : i ⟶ k) (g : j ⟶ k), F.map f x = F.map g y := by
  let E := (forget C).mapCocone D
  let hE : IsColimit E := isColimitOfPreserves _ hD
  let G := Types.colimitCocone.{v, v} (F ⋙ forget C)
  let hG := Types.colimitCoconeIsColimit.{v, v} (F ⋙ forget C)
  let T : E ≅ G := hE.uniqueUpToIso hG
  let TX : E.pt ≅ G.pt := (Cocones.forget _).mapIso T
  apply_fun TX.hom at h
  change (E.ι.app i ≫ TX.hom) x = (E.ι.app j ≫ TX.hom) y at h
  erw [T.hom.w, T.hom.w] at h
  replace h := Quot.exact _ h
  suffices
    ∀ (a b : Σj, F.obj j) (_ : EqvGen (Limits.Types.Quot.Rel.{v, v} (F ⋙ forget C)) a b),
      ∃ (k : _) (f : a.1 ⟶ k) (g : b.1 ⟶ k), F.map f a.2 = F.map g b.2
    by exact this ⟨i, x⟩ ⟨j, y⟩ h
  intro a b h
  induction h
  case rel x y hh =>
    obtain ⟨e, he⟩ := hh
    use y.1, e, 𝟙 _
    simpa using he.symm
  case refl x =>
    exact ⟨x.1, 𝟙 _, 𝟙 _, rfl⟩
  case symm x y _ hh =>
    obtain ⟨k, f, g, hh⟩ := hh
    exact ⟨k, g, f, hh.symm⟩
  case trans x y z _ _ hh1 hh2 =>
    obtain ⟨k1, f1, g1, h1⟩ := hh1
    obtain ⟨k2, f2, g2, h2⟩ := hh2
    let k0 : J := IsFiltered.max k1 k2
    let e1 : k1 ⟶ k0 := IsFiltered.leftToMax _ _
    let e2 : k2 ⟶ k0 := IsFiltered.rightToMax _ _
    let k : J := IsFiltered.coeq (g1 ≫ e1) (f2 ≫ e2)
    let e : k0 ⟶ k := IsFiltered.coeqHom _ _
    use k, f1 ≫ e1 ≫ e, g2 ≫ e2 ≫ e
    simp only [F.map_comp, comp_apply, h1, ← h2]
    simp only [← comp_apply, ← F.map_comp]
    rw [IsFiltered.coeq_condition]
#align category_theory.limits.concrete.is_colimit_exists_of_rep_eq CategoryTheory.Limits.Concrete.isColimit_exists_of_rep_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d2998ff5be5089ebaee65cf34e1a7e797bdd068` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
