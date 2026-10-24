# exists_nonempty_limit_obj_of_colimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a337a9a8-81b7-412b-52b3-2ccfa8470f87",
  "kind": "theorem",
  "lexical_name": "exists_nonempty_limit_obj_of_colimit",
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
  "slug": "exists-nonempty-limit-obj-of-colimit--2fd62fd552310cd33d219343",
  "source": {
    "blob": "e927a0edb10c5747a1c9afa3124d2c8dd8bd4c79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 74,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantde2e9653ef403dddede909c5ae9ed5d912b281aa684666b1dfe5f848c3e400bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fd62fd552310cd33d219343b6c9bed93887658e03e60f8cde2e1364e8898901",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantde2e9653ef403dddede909c5ae9ed5d912b281aa684666b1dfe5f848c3e400bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a337a9a8-81b7-412b-52b3-2ccfa8470f87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_nonempty_limit_obj_of_colimit [IsFiltered K]
    (h : Nonempty <| limit <| 𝒢 ⋙ yoneda.obj (colimit H)) :
    ∃ k, Nonempty <| limit <| 𝒢 ⋙ yoneda.obj (H.obj k) := by
  obtain ⟨t⟩ := h
  let t₂ := limMap (compYonedaColimitIsoColimitCompYoneda F G H).hom t
  let t₃ := (colimitLimitIso (H ⋙ yoneda ⋙ (whiskeringLeft _ _ _).obj 𝒢).flip).inv t₂
  obtain ⟨k, y, -⟩ := Types.jointly_surjective'.{v, max u v} t₃
  refine ⟨k, ⟨?_⟩⟩
  let z := (limitObjIsoLimitCompEvaluation (H ⋙ yoneda ⋙ (whiskeringLeft _ _ _).obj 𝒢).flip k).hom y
  let y := flipCompEvaluation (H ⋙ yoneda ⋙ (whiskeringLeft _ _ _).obj 𝒢) k
  exact (lim.mapIso y).hom z

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantde2e9653ef403dddede909c5ae9ed5d912b281aa684666b1dfe5f848c3e400bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantde2e9653ef403dddede909c5ae9ed5d912b281aa684666b1dfe5f848c3e400bb.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e927a0edb10c5747a1c9afa3124d2c8dd8bd4c79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
