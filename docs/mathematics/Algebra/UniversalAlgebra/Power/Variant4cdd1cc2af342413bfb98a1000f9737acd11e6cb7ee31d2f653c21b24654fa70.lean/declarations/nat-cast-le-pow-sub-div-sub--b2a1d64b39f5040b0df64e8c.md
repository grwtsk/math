# Nat.cast_le_pow_sub_div_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2f4d3c4435d89e7e9c536036e9b0c168c1d02ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 225,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2eb12f8-79dd-a6ab-42bc-19189be2e34c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acb9ca68-c021-e30e-1ce7-71c1b82326af",
  "kind": "theorem",
  "lexical_name": "Nat.cast_le_pow_sub_div_sub",
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
  "slug": "nat-cast-le-pow-sub-div-sub--b2a1d64b39f5040b0df64e8c",
  "source": {
    "blob": "c2f4d3c4435d89e7e9c536036e9b0c168c1d02ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 225,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2a1d64b39f5040b0df64e8c438ae9704484bcbbf47d1db2692ca6e8db7cd42e",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acb9ca68-c021-e30e-1ce7-71c1b82326af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nat.cast_le_pow_sub_div_sub (H : 1 < a) (n : ℕ) : (n : α) ≤ (a ^ n - 1) / (a - 1) :=
  (le_div_iff (sub_pos.2 H)).2 <|
    le_sub_left_of_add_le <| one_add_mul_sub_le_pow ((neg_le_self zero_le_one).trans H.le) _
#align nat.cast_le_pow_sub_div_sub Nat.cast_le_pow_sub_div_sub

/-- For any `a > 1` and a natural `n` we have `n ≤ a ^ n / (a - 1)`. See also
`Nat.cast_le_pow_sub_div_sub` for a stronger inequality with `a ^ n - 1` in the numerator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2f4d3c4435d89e7e9c536036e9b0c168c1d02ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
