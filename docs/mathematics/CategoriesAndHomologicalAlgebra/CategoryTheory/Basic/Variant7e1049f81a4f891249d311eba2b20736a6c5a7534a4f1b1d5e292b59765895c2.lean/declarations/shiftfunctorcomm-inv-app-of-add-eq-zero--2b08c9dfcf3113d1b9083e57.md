# shiftFunctorComm_inv_app_of_add_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6671c2cb0503adec306ea2e7b8304b892f8c7bc0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 704,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e1049f81a4f891249d311eba2b20736a6c5a7534a4f1b1d5e292b59765895c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3abdf350-2d41-0862-0505-fd6d4de665f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:941fac65-c8d0-6150-90d4-a80e0ab1a0a5",
  "kind": "lemma",
  "lexical_name": "shiftFunctorComm_inv_app_of_add_eq_zero",
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
  "slug": "shiftfunctorcomm-inv-app-of-add-eq-zero--2b08c9dfcf3113d1b9083e57",
  "source": {
    "blob": "6671c2cb0503adec306ea2e7b8304b892f8c7bc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 720,
    "line": 704,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7e1049f81a4f891249d311eba2b20736a6c5a7534a4f1b1d5e292b59765895c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b08c9dfcf3113d1b9083e57736497a753380329bdd76f73547388e64900ffe9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7e1049f81a4f891249d311eba2b20736a6c5a7534a4f1b1d5e292b59765895c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:941fac65-c8d0-6150-90d4-a80e0ab1a0a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 704–720.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shiftFunctorComm_inv_app_of_add_eq_zero (m n : A) (hmn : m + n = 0) (X : C) :
    (shiftFunctorComm C m n).inv.app X =
      (shiftFunctorCompIsoId C n m (by rw [add_comm, hmn])).hom.app X ≫
        (shiftFunctorCompIsoId C m n hmn).inv.app X := by
  simp [shiftFunctorCompIsoId, shiftFunctorComm_eq C m n 0 hmn]

end AddCommMonoid

namespace Functor.FullyFaithful

variable {D : Type*} [Category* D] [AddMonoid A] [HasShift D A]
variable {F : C ⥤ D} (hF : F.FullyFaithful)
variable (s : A → C ⥤ C) (i : ∀ i, s i ⋙ F ≅ F ⋙ shiftFunctor D i)

namespace hasShift

/-- auxiliary definition for `FullyFaithful.hasShift` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7e1049f81a4f891249d311eba2b20736a6c5a7534a4f1b1d5e292b59765895c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7e1049f81a4f891249d311eba2b20736a6c5a7534a4f1b1d5e292b59765895c2.lean#L704).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6671c2cb0503adec306ea2e7b8304b892f8c7bc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
