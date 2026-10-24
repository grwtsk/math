# ExtremalEpi.mk_of_hasEqualizers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:450108dd-89c8-bf37-66e3-cc7e346af142",
  "kind": "lemma",
  "lexical_name": "ExtremalEpi.mk_of_hasEqualizers",
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
  "slug": "extremalepi-mk-of-hasequalizers--b393c5088448b99d30d7372e",
  "source": {
    "blob": "47daae089a744d3817c8961ba025e34b5ab95393",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtremalEpi/Variant4874ea69038ed537ceec2b735ad71c9d8f580019b6e026b7de7b58bd01d7b6ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b393c5088448b99d30d7372e17504f8a60c332088d32b74633a95066d61e6234",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtremalEpi/Variant4874ea69038ed537ceec2b735ad71c9d8f580019b6e026b7de7b58bd01d7b6ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:450108dd-89c8-bf37-66e3-cc7e346af142`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ExtremalEpi.mk_of_hasEqualizers [HasEqualizers C]
    (hf : ∀ ⦃Z : C⦄ (p : X ⟶ Z) (i : Z ⟶ Y) (_ : p ≫ i = f) [Mono i], IsIso i) :
    ExtremalEpi f where
  left_cancellation {Z} p q h := by
    have := hf (equalizer.lift f h) (equalizer.ι p q) (by simp)
    rw [← cancel_epi (equalizer.ι p q), equalizer.condition]
  isIso := by tauto

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtremalEpi/Variant4874ea69038ed537ceec2b735ad71c9d8f580019b6e026b7de7b58bd01d7b6ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtremalEpi/Variant4874ea69038ed537ceec2b735ad71c9d8f580019b6e026b7de7b58bd01d7b6ff.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47daae089a744d3817c8961ba025e34b5ab95393` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
