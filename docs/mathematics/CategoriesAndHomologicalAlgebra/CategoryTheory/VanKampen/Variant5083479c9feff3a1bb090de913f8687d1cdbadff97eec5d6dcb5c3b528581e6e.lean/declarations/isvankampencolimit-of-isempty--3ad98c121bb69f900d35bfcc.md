# isVanKampenColimit_of_isEmpty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41fa6e89-423a-bc85-ebcb-b1c1a9481c2a",
  "kind": "theorem",
  "lexical_name": "isVanKampenColimit_of_isEmpty",
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
  "slug": "isvankampencolimit-of-isempty--3ad98c121bb69f900d35bfcc",
  "source": {
    "blob": "84c446cc78642d32e394722750dfdfa6594c127b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 477,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ad98c121bb69f900d35bfcc488b3775b52c477b095005763d772b54f66b4603",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41fa6e89-423a-bc85-ebcb-b1c1a9481c2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isVanKampenColimit_of_isEmpty [HasStrictInitialObjects C] [IsEmpty J] {F : J ⥤ C}
    (c : Cocone F) (hc : IsColimit c) : IsVanKampenColimit c := by
  have : IsInitial c.pt := by
    have := (IsColimit.precomposeInvEquiv (Functor.uniqueFromEmpty _) _).symm
      (hc.whiskerEquivalence (equivalenceOfIsEmpty (Discrete PEmpty.{1}) J))
    exact IsColimit.ofIsoColimit this (Cocones.ext (Iso.refl c.pt) (fun {X} ↦ isEmptyElim X))
  replace this := IsInitial.isVanKampenColimit this
  apply (IsVanKampenColimit.whiskerEquivalence_iff
    (equivalenceOfIsEmpty (Discrete PEmpty.{1}) J)).mp
  exact (this.precompose_isIso (Functor.uniqueFromEmpty
    ((equivalenceOfIsEmpty (Discrete PEmpty.{1}) J).functor ⋙ F)).hom).of_iso
    (Cocones.ext (Iso.refl _) (by simp))

end Initial

section BinaryCoproduct

variable {X Y : C}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84c446cc78642d32e394722750dfdfa6594c127b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
