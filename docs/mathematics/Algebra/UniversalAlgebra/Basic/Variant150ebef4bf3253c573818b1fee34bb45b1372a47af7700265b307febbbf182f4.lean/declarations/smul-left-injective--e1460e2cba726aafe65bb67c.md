# smul_left_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "339ac8c5f92cb61a60379348c2b35f80e2febade",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a09534f3-71df-9b22-a570-9bb5e4ebe97d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66dc3b0f-9615-6834-8488-291c9ab4aebc",
  "kind": "theorem",
  "lexical_name": "smul_left_injective",
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
  "slug": "smul-left-injective--e1460e2cba726aafe65bb67c",
  "source": {
    "blob": "339ac8c5f92cb61a60379348c2b35f80e2febade",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 104,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1460e2cba726aafe65bb67cc55c17d321cf522c39c211f084724c03c5167e5f",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66dc3b0f-9615-6834-8488-291c9ab4aebc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_left_injective {x : M} (hx : x ≠ 0) : Function.Injective fun c : R => c • x :=
  fun c d h =>
  sub_eq_zero.mp
    ((smul_eq_zero.mp
          (calc
            (c - d) • x = c • x - d • x := sub_smul c d x
            _ = 0 := sub_eq_zero.mpr h
            )).resolve_right
      hx)

end SMulInjective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant150ebef4bf3253c573818b1fee34bb45b1372a47af7700265b307febbbf182f4.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `339ac8c5f92cb61a60379348c2b35f80e2febade` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
