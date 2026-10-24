# OrderEmbedding.mulRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3639f006d87264d37c31cb7637f323b8d19e1fd8edff865f3dbacfc7c417b1ee",
  "kind": "def",
  "lexical_name": "OrderEmbedding.mulRight",
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
  "slug": "orderembedding-mulright--453f6d8f6a6ba9225784ed98",
  "source": {
    "blob": "b4157eed3a2510503e081eb50100c8fda6e72365",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 73,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantf1fe0001aa7bba174ee355e6c43e44def124e59820d595fab4af5a8353a5fea7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:453f6d8f6a6ba9225784ed982ab3964680636f8a56c7b808c929a2ea31c3e9ca",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantf1fe0001aa7bba174ee355e6c43e44def124e59820d595fab4af5a8353a5fea7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3639f006d87264d37c31cb7637f323b8d19e1fd8edff865f3dbacfc7c417b1ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def OrderEmbedding.mulRight {α : Type*} [Mul α] [LinearOrder α]
    [CovariantClass α α (swap (· * ·)) (· < ·)] (m : α) : α ↪o α :=
  OrderEmbedding.ofStrictMono (fun n => n * m) fun _ _ w => mul_lt_mul_right' w m
#align order_embedding.mul_right OrderEmbedding.mulRight
#align order_embedding.add_right OrderEmbedding.addRight
#align order_embedding.mul_right_apply OrderEmbedding.mulRight_apply
#align order_embedding.add_right_apply OrderEmbedding.addRight_apply

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantf1fe0001aa7bba174ee355e6c43e44def124e59820d595fab4af5a8353a5fea7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantf1fe0001aa7bba174ee355e6c43e44def124e59820d595fab4af5a8353a5fea7.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4157eed3a2510503e081eb50100c8fda6e72365` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
