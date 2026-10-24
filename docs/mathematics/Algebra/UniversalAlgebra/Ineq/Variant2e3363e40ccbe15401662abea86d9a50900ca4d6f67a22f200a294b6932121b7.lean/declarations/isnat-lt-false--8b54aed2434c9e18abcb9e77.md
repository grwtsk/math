# isNat_lt_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8408a243882f1964899fbd265c107962c6c3ed6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:73aaa969-17df-45e5-8aa4-71d58592a88e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ccf72d1-922c-4ead-9466-1e0bae35fa45",
  "kind": "theorem",
  "lexical_name": "isNat_lt_false",
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
  "slug": "isnat-lt-false--8b54aed2434c9e18abcb9e77",
  "source": {
    "blob": "8408a243882f1964899fbd265c107962c6c3ed6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 61,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b54aed2434c9e18abcb9e77f399316f8c83ede169310d315596133280dfc5e3",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ccf72d1-922c-4ead-9466-1e0bae35fa45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNat_lt_false [Semiring α] [PartialOrder α] [IsOrderedRing α] {a b : α} {a' b' : ℕ}
    (ha : IsNat a a') (hb : IsNat b b') (h : Nat.ble b' a' = true) : ¬a < b :=
  not_lt_of_le (isNat_le_true hb ha h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Ineq/Variant2e3363e40ccbe15401662abea86d9a50900ca4d6f67a22f200a294b6932121b7.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8408a243882f1964899fbd265c107962c6c3ed6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
