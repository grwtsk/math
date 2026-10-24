# inj_apply_eq_iff_of_isColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47eb171910d3ea85beac416164200b7412164b99",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 187,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/33f03e10c8f1e1a681f7a5fdee77045ebbaf806038454b7f8cea6dc7e777c1cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98074996-abf6-2347-153b-0738f6b4b3f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aaa9ef19-cae0-7a7a-c874-c305b7d00523",
  "kind": "lemma",
  "lexical_name": "inj_apply_eq_iff_of_isColimit",
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
  "slug": "inj-apply-eq-iff-of-iscolimit--5e93c1b69a69cd3089cc80fb",
  "source": {
    "blob": "47eb171910d3ea85beac416164200b7412164b99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 187,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproducts/Variant33f03e10c8f1e1a681f7a5fdee77045ebbaf806038454b7f8cea6dc7e777c1cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e93c1b69a69cd3089cc80fb561683e1d96760d044acf900f574b5dbe0584840",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproducts/Variant33f03e10c8f1e1a681f7a5fdee77045ebbaf806038454b7f8cea6dc7e777c1cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aaa9ef19-cae0-7a7a-c874-c305b7d00523`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inj_apply_eq_iff_of_isColimit (hc : IsColimit c) {i j : C} (x : F i) (y : F j) :
    c.inj i x = c.inj j y ↔ ∃ (hij : i = j), y = cast (by rw [hij]) x :=
  CofanTypes.inj_apply_eq_iff_of_isColimit ((isColimit_cofanTypes_iff c).2 ⟨hc⟩) _ _

end Cofan

namespace Types

/-- The category of types has `PEmpty` as an initial object. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproducts/Variant33f03e10c8f1e1a681f7a5fdee77045ebbaf806038454b7f8cea6dc7e777c1cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproducts/Variant33f03e10c8f1e1a681f7a5fdee77045ebbaf806038454b7f8cea6dc7e777c1cb.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47eb171910d3ea85beac416164200b7412164b99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
