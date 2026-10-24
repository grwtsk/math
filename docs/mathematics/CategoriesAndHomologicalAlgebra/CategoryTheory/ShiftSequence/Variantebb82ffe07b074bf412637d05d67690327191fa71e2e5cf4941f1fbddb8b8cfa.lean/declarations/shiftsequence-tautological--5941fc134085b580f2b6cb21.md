# ShiftSequence.tautological

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d53bc270dbe1747f3971269c43d2a502a2b5e4006ecc625c989ea45fa012bc94",
  "kind": "def",
  "lexical_name": "ShiftSequence.tautological",
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
  "slug": "shiftsequence-tautological--5941fc134085b580f2b6cb21",
  "source": {
    "blob": "954522bcd90ba27e877f86d11f00a70940d56fd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 65,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5941fc134085b580f2b6cb21f8cbcd631cb25aae7d17458841baf7253e4f4bf2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d53bc270dbe1747f3971269c43d2a502a2b5e4006ecc625c989ea45fa012bc94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ShiftSequence.tautological : ShiftSequence F M where
  sequence n := shiftFunctor C n ⋙ F
  isoZero := isoWhiskerRight (shiftFunctorZero C M) F ≪≫ F.leftUnitor
  shiftIso n a a' ha' := (Functor.associator _ _ _).symm ≪≫
    isoWhiskerRight (shiftFunctorAdd' C n a a' ha').symm _
  shiftIso_zero a := by
    rw [shiftFunctorAdd'_zero_add]
    cat_disch
  shiftIso_add n m a a' a'' ha' ha'' := by
    ext X
    dsimp
    simp only [id_comp, ← Functor.map_comp]
    congr
    simpa only [← cancel_epi ((shiftFunctor C a).map ((shiftFunctorAdd C m n).hom.app X)),
      shiftFunctorAdd'_eq_shiftFunctorAdd, ← Functor.map_comp_assoc, Iso.hom_inv_id_app,
      Functor.map_id, id_comp] using! shiftFunctorAdd'_assoc_inv_app m n a (m + n) a' a'' rfl ha'
        (by rw [← ha'', ← ha', add_assoc]) X

section

variable {M}
variable [F.ShiftSequence M]

/-- The shifted functors given by the shift sequence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `954522bcd90ba27e877f86d11f00a70940d56fd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
