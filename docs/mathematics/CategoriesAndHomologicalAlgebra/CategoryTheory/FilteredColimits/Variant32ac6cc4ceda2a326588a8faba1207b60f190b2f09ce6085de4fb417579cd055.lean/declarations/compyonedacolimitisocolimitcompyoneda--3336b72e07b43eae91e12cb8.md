# compYonedaColimitIsoColimitCompYoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15c35984b6ff7a5edc02f481519ce369a08a7109a479c6851a29b253a29f9df7",
  "kind": "def",
  "lexical_name": "compYonedaColimitIsoColimitCompYoneda",
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
  "slug": "compyonedacolimitisocolimitcompyoneda--3336b72e07b43eae91e12cb8",
  "source": {
    "blob": "84bc8acad8947f5d85188b04ebac5052c17793fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3336b72e07b43eae91e12cb85c653dd13fe6cd7eea45bfa5a8f7f7e55d8525e1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15c35984b6ff7a5edc02f481519ce369a08a7109a479c6851a29b253a29f9df7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def compYonedaColimitIsoColimitCompYoneda :
    𝒢 ⋙ yoneda.obj (colimit H) ≅ colimit (H ⋙ yoneda ⋙ (whiskeringLeft _ _ _).obj 𝒢) := calc
  𝒢 ⋙ yoneda.obj (colimit H) ≅ 𝒢 ⋙ colimit (H ⋙ yoneda) :=
        isoWhiskerLeft G.op (toOverCompYonedaColimit H)
  _ ≅ 𝒢 ⋙ (H ⋙ yoneda).flip ⋙ colim := isoWhiskerLeft _ (colimitIsoFlipCompColim _)
  _ ≅ (H ⋙ yoneda ⋙ (whiskeringLeft _ _ _).obj 𝒢).flip ⋙ colim := Iso.refl _
  _ ≅ colimit (H ⋙ yoneda ⋙ (whiskeringLeft _ _ _).obj 𝒢) := (colimitIsoFlipCompColim _).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84bc8acad8947f5d85188b04ebac5052c17793fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
