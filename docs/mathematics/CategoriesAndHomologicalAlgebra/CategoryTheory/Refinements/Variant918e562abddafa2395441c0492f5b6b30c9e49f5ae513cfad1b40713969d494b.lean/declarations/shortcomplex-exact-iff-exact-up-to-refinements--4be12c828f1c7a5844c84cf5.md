# ShortComplex.exact_iff_exact_up_to_refinements

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c3aa6ae-365f-a0c8-6654-a4916eb02851",
  "kind": "lemma",
  "lexical_name": "ShortComplex.exact_iff_exact_up_to_refinements",
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
  "slug": "shortcomplex-exact-iff-exact-up-to-refinements--4be12c828f1c7a5844c84cf5",
  "source": {
    "blob": "9a07cc3ceec66d5495aeaf0ed0b8c9adb0385ebb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 101,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant918e562abddafa2395441c0492f5b6b30c9e49f5ae513cfad1b40713969d494b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4be12c828f1c7a5844c84cf5634a7e0418fa3668daf729a3be931a8710274c5a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant918e562abddafa2395441c0492f5b6b30c9e49f5ae513cfad1b40713969d494b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c3aa6ae-365f-a0c8-6654-a4916eb02851`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ShortComplex.exact_iff_exact_up_to_refinements :
    S.Exact ↔ ∀ ⦃A : C⦄ (x₂ : A ⟶ S.X₂) (_ : x₂ ≫ S.g = 0),
      ∃ (A' : C) (π : A' ⟶ A) (_ : Epi π) (x₁ : A' ⟶ S.X₁), π ≫ x₂ = x₁ ≫ S.f := by
  rw [S.exact_iff_epi_toCycles, epi_iff_surjective_up_to_refinements]
  constructor
  · intro hS A a ha
    obtain ⟨A', π, hπ, x₁, fac⟩ := hS (S.liftCycles a ha)
    exact ⟨A', π, hπ, x₁, by simpa only [assoc, liftCycles_i, toCycles_i] using fac =≫ S.iCycles⟩
  · intro hS A a
    obtain ⟨A', π, hπ, x₁, fac⟩ := hS (a ≫ S.iCycles) (by simp)
    exact ⟨A', π, hπ, x₁, by simp only [← cancel_mono S.iCycles, assoc, toCycles_i, fac]⟩

variable {S}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant918e562abddafa2395441c0492f5b6b30c9e49f5ae513cfad1b40713969d494b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant918e562abddafa2395441c0492f5b6b30c9e49f5ae513cfad1b40713969d494b.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a07cc3ceec66d5495aeaf0ed0b8c9adb0385ebb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
