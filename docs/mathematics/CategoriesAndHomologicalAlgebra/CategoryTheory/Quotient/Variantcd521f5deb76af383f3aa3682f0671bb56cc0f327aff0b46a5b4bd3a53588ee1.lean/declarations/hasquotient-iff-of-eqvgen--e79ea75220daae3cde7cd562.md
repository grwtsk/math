# HasQuotient.iff_of_eqvGen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd74fe5d-49d1-0174-4dfe-2162dc55a17b",
  "kind": "lemma",
  "lexical_name": "HasQuotient.iff_of_eqvGen",
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
  "slug": "hasquotient-iff-of-eqvgen--e79ea75220daae3cde7cd562",
  "source": {
    "blob": "6414438fe1612b032c525eb2a3b1e5bc9373bc9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 52,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantcd521f5deb76af383f3aa3682f0671bb56cc0f327aff0b46a5b4bd3a53588ee1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e79ea75220daae3cde7cd562c7539e7fd7f53d335f72154f4757aee956f4ad64",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantcd521f5deb76af383f3aa3682f0671bb56cc0f327aff0b46a5b4bd3a53588ee1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd74fe5d-49d1-0174-4dfe-2162dc55a17b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasQuotient.iff_of_eqvGen [W.HasQuotient homRel] {X Y : C} {f g : X ⟶ Y}
    (h : Relation.EqvGen (@homRel _ _) f g) : W f ↔ W g := by
  induction h with
  | rel _ _ h => exact iff W h
  | refl => rfl
  | symm _ _ _ h => exact h.symm
  | trans _ _ _ _ _ h₁ h₂ => exact h₁.trans h₂

variable (homRel)

/-- The property of morphisms that is induced by `W : MorphismProperty C`
on the quotient category by `homRel : HomRel C` when `W.HasQuotient homRel` holds. -/
@[nolint unusedArguments]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantcd521f5deb76af383f3aa3682f0671bb56cc0f327aff0b46a5b4bd3a53588ee1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantcd521f5deb76af383f3aa3682f0671bb56cc0f327aff0b46a5b4bd3a53588ee1.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6414438fe1612b032c525eb2a3b1e5bc9373bc9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
