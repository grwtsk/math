# precomp_bijective_of_cofibration_of_weakEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:835aef36-0650-c4be-983d-238115e0f91f",
  "kind": "lemma",
  "lexical_name": "precomp_bijective_of_cofibration_of_weakEquivalence",
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
  "slug": "precomp-bijective-of-cofibration-of-weakequivalence--fd6c775a5086461987e8c5cf",
  "source": {
    "blob": "2a1d0d9d5da01223327b017e5e0f86ad0a5ddf7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 180,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd6c775a5086461987e8c5cf2a630950577d41ebde76e9f6c1376b15cf619e97",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:835aef36-0650-c4be-983d-238115e0f91f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma precomp_bijective_of_cofibration_of_weakEquivalence
    [IsFibrant Z] (f : X ⟶ Y) [Cofibration f] [WeakEquivalence f] :
    Function.Bijective (fun (g : RightHomotopyClass Y Z) ↦ g.precomp f) := by
  constructor
  · intro f₀ f₁ h
    obtain ⟨f₀, rfl⟩ := f₀.mk_surjective
    obtain ⟨f₁, rfl⟩ := f₁.mk_surjective
    simp only [precomp_mk, mk_eq_mk_iff] at h
    obtain ⟨P, _, ⟨h⟩⟩ := h.exists_good_pathObject
    have sq : CommSq h.h f P.p (prod.lift f₀ f₁) := { }
    rw [mk_eq_mk_iff]
    exact ⟨P,
      ⟨{h := sq.lift
        h₀ := by
          have := sq.fac_right =≫ prod.fst
          rwa [Category.assoc, P.p_fst, prod.lift_fst] at this
        h₁ := by
          have := sq.fac_right =≫ prod.snd
          rwa [Category.assoc, P.p_snd, prod.lift_snd] at this }⟩⟩
  · intro φ
    obtain ⟨φ, rfl⟩ := φ.mk_surjective
    have sq : CommSq φ f (terminal.from _) (terminal.from _) := { }
    exact ⟨mk sq.lift, by simp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a1d0d9d5da01223327b017e5e0f86ad0a5ddf7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
