# unop_rightUnitor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "55d499eb29fc221df897059bc8e74e74ed36e901",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 724,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0ac203a4600827255805e36de4f31c520e4ceb1b552a771d4b4db5f22f7ca4a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:392ccefb-fb48-60bd-8166-c2150ab69078",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd0a2c42-ac00-51b0-eb40-312942d12209",
  "kind": "lemma",
  "lexical_name": "unop_rightUnitor",
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
  "slug": "unop-rightunitor--fd81ee27d5b797e65059a8ba",
  "source": {
    "blob": "55d499eb29fc221df897059bc8e74e74ed36e901",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 730,
    "line": 724,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant0ac203a4600827255805e36de4f31c520e4ceb1b552a771d4b4db5f22f7ca4a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd81ee27d5b797e65059a8bafe9bfb881a593e5ec8d442c1481cc90c917fd6fe",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant0ac203a4600827255805e36de4f31c520e4ceb1b552a771d4b4db5f22f7ca4a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd0a2c42-ac00-51b0-eb40-312942d12209`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 724–730.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma unop_rightUnitor {F : Cᵒᵖ ⥤ Dᵒᵖ} :
    NatIso.unop F.rightUnitor =
    F.unop.rightUnitor.symm ≪≫
      isoWhiskerLeft F.unop (Functor.unopId D).symm ≪≫
      (Functor.unopComp _ _).symm := by
  cat_disch

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant0ac203a4600827255805e36de4f31c520e4ceb1b552a771d4b4db5f22f7ca4a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant0ac203a4600827255805e36de4f31c520e4ceb1b552a771d4b4db5f22f7ca4a7.lean#L724).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55d499eb29fc221df897059bc8e74e74ed36e901` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
