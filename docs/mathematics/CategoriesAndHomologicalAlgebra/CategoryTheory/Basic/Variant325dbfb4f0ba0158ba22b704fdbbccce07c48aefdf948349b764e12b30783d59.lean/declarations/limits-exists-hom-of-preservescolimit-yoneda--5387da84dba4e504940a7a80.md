# Limits.exists_hom_of_preservesColimit_yoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7137847-627b-fb1f-a54e-26c1cb2c87ab",
  "kind": "lemma",
  "lexical_name": "Limits.exists_hom_of_preservesColimit_yoneda",
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
  "slug": "limits-exists-hom-of-preservescolimit-yoneda--5387da84dba4e504940a7a80",
  "source": {
    "blob": "9f2e0db8592b16b31b2d4b09843ea2f18729a283",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 302,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant325dbfb4f0ba0158ba22b704fdbbccce07c48aefdf948349b764e12b30783d59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5387da84dba4e504940a7a8063abac043f816478b46010dce9633f52cbb50285",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant325dbfb4f0ba0158ba22b704fdbbccce07c48aefdf948349b764e12b30783d59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7137847-627b-fb1f-a54e-26c1cb2c87ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Limits.exists_hom_of_preservesColimit_yoneda {c : Cone D} (hc : IsLimit c) {X : C}
    [PreservesColimit D.op (yoneda.obj X)] (f : c.pt ⟶ X) :
    ∃ (j : J) (p : D.obj j ⟶ X), c.π.app j ≫ p = f := by
  obtain ⟨j, p, hp⟩ := Types.jointly_surjective_of_isColimit
    (isColimitOfPreserves (yoneda.obj X) hc.op) f
  exact ⟨j.unop, p, hp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant325dbfb4f0ba0158ba22b704fdbbccce07c48aefdf948349b764e12b30783d59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant325dbfb4f0ba0158ba22b704fdbbccce07c48aefdf948349b764e12b30783d59.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f2e0db8592b16b31b2d4b09843ea2f18729a283` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
