# Function.Injective.mulActionHom_embedding_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9c9fa7f-6109-e8b8-e367-2e6325513e71",
  "kind": "theorem",
  "lexical_name": "Function.Injective.mulActionHom_embedding_apply",
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
  "slug": "function-injective-mulactionhom-embedding-apply--cb99d661d06bd4db0196f4c4",
  "source": {
    "blob": "f535497d9c5c837feaaa3f8a1c3765a1e7c8e7b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 68,
    "path": "GRWTSK/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb99d661d06bd4db0196f4c418da65c0458e7f1ed254a922918e08175d839557",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9c9fa7f-6109-e8b8-e367-2e6325513e71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Function.Injective.mulActionHom_embedding_apply
    (hf : Function.Injective f) {x : ι ↪ α} {i : ι} :
    hf.mulActionHom_embedding ι x i = f (x i) := rfl

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MultipleTransitivity/Variant3607710dc5b7d7cabd8132caae4b020f67ced09e1fa240cf14417f7531d3fe43.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f535497d9c5c837feaaa3f8a1c3765a1e7c8e7b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
