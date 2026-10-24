# mk_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "49a533f1c4537d7b0e4de7ae177fc534b145fa2c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 406,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ada19eeb55b50ff53d27f5ce382a781658f431ddbbd312e3095e415f9a0a2b53.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ee257fd-30ee-8f64-d1a0-6f1eed1003fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8c40885-c8fc-c6be-ec6a-a9cdb46bbc7b",
  "kind": "theorem",
  "lexical_name": "mk_left",
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
  "slug": "mk-left--e594b26cefe7ec5a3743f2db",
  "source": {
    "blob": "49a533f1c4537d7b0e4de7ae177fc534b145fa2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 406,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variantada19eeb55b50ff53d27f5ce382a781658f431ddbbd312e3095e415f9a0a2b53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e594b26cefe7ec5a3743f2db601019c99516ebfc672437ce561b14b138784343",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variantada19eeb55b50ff53d27f5ce382a781658f431ddbbd312e3095e415f9a0a2b53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8c40885-c8fc-c6be-ec6a-a9cdb46bbc7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_left (f : S.obj Y ⟶ T) : (mk f).left = Y :=
  rfl
#align category_theory.costructured_arrow.mk_left CategoryTheory.CostructuredArrow.mk_left

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variantada19eeb55b50ff53d27f5ce382a781658f431ddbbd312e3095e415f9a0a2b53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variantada19eeb55b50ff53d27f5ce382a781658f431ddbbd312e3095e415f9a0a2b53.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49a533f1c4537d7b0e4de7ae177fc534b145fa2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
