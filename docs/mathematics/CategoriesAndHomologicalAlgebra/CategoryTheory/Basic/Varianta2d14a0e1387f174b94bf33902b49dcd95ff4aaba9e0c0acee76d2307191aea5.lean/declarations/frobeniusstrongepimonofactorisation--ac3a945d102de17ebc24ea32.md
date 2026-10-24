# frobeniusStrongEpiMonoFactorisation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b82d872a8a8afc693364b81fdcf889b5a3af7bd56ad79cf1ab12b5c161e86f4",
  "kind": "def",
  "lexical_name": "frobeniusStrongEpiMonoFactorisation",
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
  "slug": "frobeniusstrongepimonofactorisation--ac3a945d102de17ebc24ea32",
  "source": {
    "blob": "4b47e0f5670124be88f67a116a184ec4c4188bd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 216,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2d14a0e1387f174b94bf33902b49dcd95ff4aaba9e0c0acee76d2307191aea5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac3a945d102de17ebc24ea32688630e26c1b742856085ad5d2557595d8cf0746",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2d14a0e1387f174b94bf33902b49dcd95ff4aaba9e0c0acee76d2307191aea5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b82d872a8a8afc693364b81fdcf889b5a3af7bd56ad79cf1ab12b5c161e86f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def frobeniusStrongEpiMonoFactorisation :
    StrongEpiMonoFactorisation ((A' ⊓ (Subobject.pullback f).obj B').arrow ≫ f) where
  I := underlying.obj <| («exists» f).obj A' ⊓ B'
  m := ((«exists» f).obj A' ⊓ B').arrow
  e := frobeniusMorphism f A' B'
  fac := by
    rw [frobeniusMorphism, ← inf_comp_left, ← Category.assoc,
      (inf_isPullback ((«exists» f).obj A') B').flip.lift_snd]
    simp [← imageFactorisation_F_m]

/--
Regular categories satisfy Frobenius reciprocity. That is, in the internal language of regular
categories, we have `∃ x, (P(x) ⊓ Q)` iff `(∃ x, P(x)) ⊓ Q`, for a proposition `Q` not depending on
`x`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2d14a0e1387f174b94bf33902b49dcd95ff4aaba9e0c0acee76d2307191aea5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2d14a0e1387f174b94bf33902b49dcd95ff4aaba9e0c0acee76d2307191aea5.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b47e0f5670124be88f67a116a184ec4c4188bd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
