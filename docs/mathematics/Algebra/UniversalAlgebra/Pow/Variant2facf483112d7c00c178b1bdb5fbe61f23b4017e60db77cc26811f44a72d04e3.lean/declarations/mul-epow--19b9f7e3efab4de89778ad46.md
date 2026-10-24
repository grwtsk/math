# mul_epow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f1cb37d36a7477c6d079f72bad985ec90af4bc6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7147f604-3a5f-a51d-872c-dc295d915b47",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97cad772-dd98-35fe-eda7-9cbef45275e8",
  "kind": "lemma",
  "lexical_name": "mul_epow",
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
  "slug": "mul-epow--19b9f7e3efab4de89778ad46",
  "source": {
    "blob": "4f1cb37d36a7477c6d079f72bad985ec90af4bc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 141,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19b9f7e3efab4de89778ad463cd3326a83d09c2c84b19458594678378da83c1f",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97cad772-dd98-35fe-eda7-9cbef45275e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_epow : (x * y) ^ z = x ^ z * y ^ z := by
  induction z
  · rcases lt_trichotomy x 1 with x_0 | rfl | x_2
    · simp only [Order.lt_one_iff.1 x_0, zero_mul, zero_epow_top]
    · simp only [one_mul, one_epow]
    · rcases lt_trichotomy y 1 with y_0 | rfl | y_2
      · simp only [Order.lt_one_iff.1 y_0, mul_zero, zero_epow_top]
      · simp
      · rw [epow_top x_2, epow_top y_2, mul_top top_ne_zero]
        exact epow_top (one_lt_mul x_2.le y_2)
  · simp only [epow_natCast, mul_pow x y]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Pow/Variant2facf483112d7c00c178b1bdb5fbe61f23b4017e60db77cc26811f44a72d04e3.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f1cb37d36a7477c6d079f72bad985ec90af4bc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
