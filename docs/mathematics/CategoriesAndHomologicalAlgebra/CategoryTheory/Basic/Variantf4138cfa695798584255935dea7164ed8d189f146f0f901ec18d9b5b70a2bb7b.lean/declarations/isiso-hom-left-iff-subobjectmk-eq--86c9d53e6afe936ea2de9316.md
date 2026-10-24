# isIso_hom_left_iff_subobjectMk_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbdaf408-bf26-16e2-ab03-94f14e9cde8c",
  "kind": "lemma",
  "lexical_name": "isIso_hom_left_iff_subobjectMk_eq",
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
  "slug": "isiso-hom-left-iff-subobjectmk-eq--86c9d53e6afe936ea2de9316",
  "source": {
    "blob": "74491d926e98a7b9e1656c9c9ada91ce6671b94c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 482,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf4138cfa695798584255935dea7164ed8d189f146f0f901ec18d9b5b70a2bb7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86c9d53e6afe936ea2de93169dbec691946b6223030f8571d328619f59e66f81",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf4138cfa695798584255935dea7164ed8d189f146f0f901ec18d9b5b70a2bb7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbdaf408-bf26-16e2-ab03-94f14e9cde8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 482–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso_hom_left_iff_subobjectMk_eq :
    IsIso f.hom.left ↔ Subobject.mk P.1.hom = Subobject.mk Q.1.hom :=
  ⟨fun _ ↦ Subobject.mk_eq_mk_of_comm _ _ (asIso f.hom.left) (by simp),
    fun h ↦ ⟨Subobject.ofMkLEMk _ _ h.symm.le, by simp [← cancel_mono P.1.hom],
      by simp [← cancel_mono Q.1.hom]⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf4138cfa695798584255935dea7164ed8d189f146f0f901ec18d9b5b70a2bb7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf4138cfa695798584255935dea7164ed8d189f146f0f901ec18d9b5b70a2bb7b.lean#L482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74491d926e98a7b9e1656c9c9ada91ce6671b94c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
