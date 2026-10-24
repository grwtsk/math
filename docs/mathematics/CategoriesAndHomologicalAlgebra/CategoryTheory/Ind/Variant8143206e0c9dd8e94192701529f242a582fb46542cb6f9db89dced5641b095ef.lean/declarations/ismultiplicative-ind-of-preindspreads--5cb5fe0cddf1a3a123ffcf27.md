# IsMultiplicative.ind_of_preIndSpreads

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1184c5a2026cbdd73613572f5d6298658c093707",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 225,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/8143206e0c9dd8e94192701529f242a582fb46542cb6f9db89dced5641b095ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c72f416b-45e7-3f1a-71dc-a001d0727034",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66277b5e-883b-1a72-b068-37c5885049e2",
  "kind": "lemma",
  "lexical_name": "IsMultiplicative.ind_of_preIndSpreads",
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
  "slug": "ismultiplicative-ind-of-preindspreads--5cb5fe0cddf1a3a123ffcf27",
  "source": {
    "blob": "1184c5a2026cbdd73613572f5d6298658c093707",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 225,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ind/Variant8143206e0c9dd8e94192701529f242a582fb46542cb6f9db89dced5641b095ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cb5fe0cddf1a3a123ffcf275d1fd8fa6532d28f89c793de7445ac93212f97cd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ind/Variant8143206e0c9dd8e94192701529f242a582fb46542cb6f9db89dced5641b095ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66277b5e-883b-1a72-b068-37c5885049e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsMultiplicative.ind_of_preIndSpreads
    [∀ X : C, (IsFinitelyAccessibleCategory.{w} (Under X))] [HasPushouts C]
    [P.IsMultiplicative] [P.IsStableUnderCobaseChange]
    [PreIndSpreads.{w} P] (H : P ≤ isFinitelyPresentable.{w} C) :
    (ind.{w} P).IsMultiplicative where
  __ := IsStableUnderComposition.ind_of_preIndSpreads H

end CategoryTheory.MorphismProperty
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ind/Variant8143206e0c9dd8e94192701529f242a582fb46542cb6f9db89dced5641b095ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ind/Variant8143206e0c9dd8e94192701529f242a582fb46542cb6f9db89dced5641b095ef.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1184c5a2026cbdd73613572f5d6298658c093707` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
