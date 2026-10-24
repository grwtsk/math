# pure_mul_pure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d26ed32e73b9e9a6ea4926c0674194b3eef321a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/ccc7c04a7ea0f271407a3d9b4fe44f32763017f64ab7ccf3de8bfe55367e6485.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a4821e2-0f9b-7528-0e62-16c31003d6b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f8dc5b0-0dbd-41b2-cb9d-2785d2db1798",
  "kind": "theorem",
  "lexical_name": "pure_mul_pure",
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
  "slug": "pure-mul-pure--8f22803984e04a9a0eca79e6",
  "source": {
    "blob": "2d26ed32e73b9e9a6ea4926c0674194b3eef321a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 197,
    "path": "GRWTSK/Algebra/GroupTheory/Interval/Variantccc7c04a7ea0f271407a3d9b4fe44f32763017f64ab7ccf3de8bfe55367e6485.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f22803984e04a9a0eca79e6224f6f598d16133658729ad95e8100c32bb44b09",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Interval/Variantccc7c04a7ea0f271407a3d9b4fe44f32763017f64ab7ccf3de8bfe55367e6485.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f8dc5b0-0dbd-41b2-cb9d-2785d2db1798`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pure_mul_pure : pure a * pure b = pure (a * b) :=
  rfl
#align nonempty_interval.pure_mul_pure NonemptyInterval.pure_mul_pure
#align nonempty_interval.pure_add_pure NonemptyInterval.pure_add_pure

end NonemptyInterval

namespace Interval

variable (s t : Interval α)

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Interval/Variantccc7c04a7ea0f271407a3d9b4fe44f32763017f64ab7ccf3de8bfe55367e6485.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Interval/Variantccc7c04a7ea0f271407a3d9b4fe44f32763017f64ab7ccf3de8bfe55367e6485.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d26ed32e73b9e9a6ea4926c0674194b3eef321a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
