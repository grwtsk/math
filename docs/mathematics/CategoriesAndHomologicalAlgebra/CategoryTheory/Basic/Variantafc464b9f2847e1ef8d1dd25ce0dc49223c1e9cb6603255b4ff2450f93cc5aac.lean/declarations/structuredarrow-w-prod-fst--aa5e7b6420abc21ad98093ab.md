# StructuredArrow.w_prod_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7fc1155580bc5c4f4b54703d365f28c111a141f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afc464b9f2847e1ef8d1dd25ce0dc49223c1e9cb6603255b4ff2450f93cc5aac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:062f7ef3-9493-1157-99c8-9d4540772358",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74859934-5d79-cadf-0d21-5b0876a85bc7",
  "kind": "theorem",
  "lexical_name": "StructuredArrow.w_prod_fst",
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
  "slug": "structuredarrow-w-prod-fst--aa5e7b6420abc21ad98093ab",
  "source": {
    "blob": "7fc1155580bc5c4f4b54703d365f28c111a141f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1202,
    "line": 1198,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantafc464b9f2847e1ef8d1dd25ce0dc49223c1e9cb6603255b4ff2450f93cc5aac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa5e7b6420abc21ad98093ab56baf4bca9ea27e834bbad0339312be455874e4a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantafc464b9f2847e1ef8d1dd25ce0dc49223c1e9cb6603255b4ff2450f93cc5aac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74859934-5d79-cadf-0d21-5b0876a85bc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1198–1202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StructuredArrow.w_prod_fst {X Y : StructuredArrow (S, S') (T.prod T')}
    (f : X ⟶ Y) : X.hom.1 ≫ T.map f.right.1 = Y.hom.1 :=
  congr_arg _root_.Prod.fst (StructuredArrow.w f)

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantafc464b9f2847e1ef8d1dd25ce0dc49223c1e9cb6603255b4ff2450f93cc5aac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantafc464b9f2847e1ef8d1dd25ce0dc49223c1e9cb6603255b4ff2450f93cc5aac.lean#L1198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fc1155580bc5c4f4b54703d365f28c111a141f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
