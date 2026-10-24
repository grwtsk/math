# min_lt_max_of_mul_lt_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e89a43d86faf61070226d631b11096c6c26e117f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 291,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c50442706805535d60e7ce764f5b0a780d9faae752b6eea7b4a9db1965e1e8bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:236a813e-c002-04f6-ecb7-f7c2fc9c2d76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39a69ddf-4a86-75f7-0fcd-fc91f1012390",
  "kind": "theorem",
  "lexical_name": "min_lt_max_of_mul_lt_mul",
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
  "slug": "min-lt-max-of-mul-lt-mul--0f71cdf4600b023ad7377284",
  "source": {
    "blob": "e89a43d86faf61070226d631b11096c6c26e117f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 291,
    "path": "GRWTSK/Algebra/GroupTheory/Order/Variantc50442706805535d60e7ce764f5b0a780d9faae752b6eea7b4a9db1965e1e8bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f71cdf4600b023ad7377284771557a15ee20fdee2cbb0b2f6d2b373eb3371e1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Order/Variantc50442706805535d60e7ce764f5b0a780d9faae752b6eea7b4a9db1965e1e8bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39a69ddf-4a86-75f7-0fcd-fc91f1012390`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem min_lt_max_of_mul_lt_mul {a b c d : M} (h : a * b < c * d) : min a b < max c d :=
  lt_of_pow_lt_pow' 2 <| by
    simp_rw [pow_two]
    exact
      (mul_le_mul' inf_le_left inf_le_right).trans_lt
        (h.trans_le <| mul_le_mul' le_sup_left le_sup_right)
#align min_lt_max_of_mul_lt_mul min_lt_max_of_mul_lt_mul
#align min_lt_max_of_add_lt_add min_lt_max_of_add_lt_add

@[to_additive min_lt_of_add_lt_two_nsmul]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Order/Variantc50442706805535d60e7ce764f5b0a780d9faae752b6eea7b4a9db1965e1e8bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Order/Variantc50442706805535d60e7ce764f5b0a780d9faae752b6eea7b4a9db1965e1e8bd.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e89a43d86faf61070226d631b11096c6c26e117f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
