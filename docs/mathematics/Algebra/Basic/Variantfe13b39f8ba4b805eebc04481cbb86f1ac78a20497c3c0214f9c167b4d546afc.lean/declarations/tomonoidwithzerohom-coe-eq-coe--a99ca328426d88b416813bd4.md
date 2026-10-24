# toMonoidWithZeroHom_coe_eq_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "426380d048576f26cd51f627dc4dce9473acf0f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe13b39f8ba4b805eebc04481cbb86f1ac78a20497c3c0214f9c167b4d546afc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b691aff6-d3bf-f000-b39e-115aaa3f4c91",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ecc33922-ee41-e2e7-3468-641d39d90bc3",
  "kind": "theorem",
  "lexical_name": "toMonoidWithZeroHom_coe_eq_coe",
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
  "slug": "tomonoidwithzerohom-coe-eq-coe--a99ca328426d88b416813bd4",
  "source": {
    "blob": "426380d048576f26cd51f627dc4dce9473acf0f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 139,
    "path": "GRWTSK/Algebra/Basic/Variantfe13b39f8ba4b805eebc04481cbb86f1ac78a20497c3c0214f9c167b4d546afc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a99ca328426d88b416813bd43f53e0b96f5ee98dcb0e93092567c0dfe7804d46",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantfe13b39f8ba4b805eebc04481cbb86f1ac78a20497c3c0214f9c167b4d546afc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecc33922-ee41-e2e7-3468-641d39d90bc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toMonoidWithZeroHom_coe_eq_coe (v : Valuation R Γ₀) : (v.toMonoidWithZeroHom : R → Γ₀) = v
    := by rfl

@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantfe13b39f8ba4b805eebc04481cbb86f1ac78a20497c3c0214f9c167b4d546afc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantfe13b39f8ba4b805eebc04481cbb86f1ac78a20497c3c0214f9c167b4d546afc.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `426380d048576f26cd51f627dc4dce9473acf0f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
