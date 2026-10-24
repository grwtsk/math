# inl_mul_inr_eq_coe_toLex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c4d36ff1eb43b85cb94574a2cb36757533838e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4cd7f58f0bca0f326fb0f65b56f74f78f8f888e6f276ef25d724ad62290e68cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8870012b-d5e9-9d97-fc6b-724f18bbc680",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb67b50a-f5d6-524a-9520-3294d4ea7503",
  "kind": "theorem",
  "lexical_name": "inl_mul_inr_eq_coe_toLex",
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
  "slug": "inl-mul-inr-eq-coe-tolex--5949f3c7c8100f12cb63bcc0",
  "source": {
    "blob": "5c4d36ff1eb43b85cb94574a2cb36757533838e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 139,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Lex/Variant4cd7f58f0bca0f326fb0f65b56f74f78f8f888e6f276ef25d724ad62290e68cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5949f3c7c8100f12cb63bcc0f7a516d83858a0fb790289f457de60bd82c28729",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Lex/Variant4cd7f58f0bca0f326fb0f65b56f74f78f8f888e6f276ef25d724ad62290e68cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb67b50a-f5d6-524a-9520-3294d4ea7503`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inl_mul_inr_eq_coe_toLex {m : α} {n : β} (hm : m ≠ 0) (hn : n ≠ 0) :
    inl α β m * inr α β n = toLex (Units.mk0 _ hm, Units.mk0 _ hn) := by
  rw [inl_eq_coe_inlₗ hm, inr_eq_coe_inrₗ hn,
      ← WithZero.coe_mul, OrderMonoidHom.inlₗ_mul_inrₗ_eq_toLex]

end LinearOrderedCommGroupWithZero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Lex/Variant4cd7f58f0bca0f326fb0f65b56f74f78f8f888e6f276ef25d724ad62290e68cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Lex/Variant4cd7f58f0bca0f326fb0f65b56f74f78f8f888e6f276ef25d724ad62290e68cf.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c4d36ff1eb43b85cb94574a2cb36757533838e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
