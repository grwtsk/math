# apply_abs_le_mul_of_one_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a4217a718f23aa6cfc6c98649bd9dfc285e682b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 250,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b66940d8-6f3e-56ea-2f42-6d50c2c15596",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:690b7e30-a19e-6289-e6f5-28c63e3a5d20",
  "kind": "theorem",
  "lexical_name": "apply_abs_le_mul_of_one_le",
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
  "slug": "apply-abs-le-mul-of-one-le--376555ffd116ccfd7cb6fb2a",
  "source": {
    "blob": "0a4217a718f23aa6cfc6c98649bd9dfc285e682b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 250,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:376555ffd116ccfd7cb6fb2a76e8ed8fa9e4cf1300f4257e8af03632b23e7371",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:690b7e30-a19e-6289-e6f5-28c63e3a5d20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_abs_le_mul_of_one_le {H : Type*} [MulOneClass H] [LE H]
    [MulLeftMono H] [MulRightMono H] {f : G → H}
    (h : ∀ x, 1 ≤ f x) (a : G) : f |a| ≤ f a * f (-a) :=
  apply_abs_le_mul_of_one_le' (h _) (h _)

end LinearOrderedAddCommGroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a4217a718f23aa6cfc6c98649bd9dfc285e682b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
