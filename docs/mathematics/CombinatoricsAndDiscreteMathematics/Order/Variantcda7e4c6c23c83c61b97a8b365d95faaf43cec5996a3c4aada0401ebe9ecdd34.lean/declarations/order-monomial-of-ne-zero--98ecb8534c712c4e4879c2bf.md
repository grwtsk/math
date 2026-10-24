# order_monomial_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee54d6e9f646397f97af727b3306cefde4c69cfc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 450,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cda7e4c6c23c83c61b97a8b365d95faaf43cec5996a3c4aada0401ebe9ecdd34.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:effb0a28-bf62-5f5f-471b-56ad66e5a70b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bebb27a1-2cdd-2e7b-182e-31f261966cf0",
  "kind": "theorem",
  "lexical_name": "order_monomial_of_ne_zero",
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
  "slug": "order-monomial-of-ne-zero--98ecb8534c712c4e4879c2bf",
  "source": {
    "blob": "ee54d6e9f646397f97af727b3306cefde4c69cfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 450,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantcda7e4c6c23c83c61b97a8b365d95faaf43cec5996a3c4aada0401ebe9ecdd34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98ecb8534c712c4e4879c2bfb687ca372dd8c3a03ffa031bd690d2bb99afc51f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Order/Variantcda7e4c6c23c83c61b97a8b365d95faaf43cec5996a3c4aada0401ebe9ecdd34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bebb27a1-2cdd-2e7b-182e-31f261966cf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem order_monomial_of_ne_zero {d : σ →₀ ℕ} {a : R} (h : a ≠ 0) :
    order (monomial d a) = degree d := by
  rw [degree_eq_weight_one]
  exact weightedOrder_monomial_of_ne_zero _ h

/-- The order of the sum of two formal power series
is at least the minimum of their orders. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variantcda7e4c6c23c83c61b97a8b365d95faaf43cec5996a3c4aada0401ebe9ecdd34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantcda7e4c6c23c83c61b97a8b365d95faaf43cec5996a3c4aada0401ebe9ecdd34.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee54d6e9f646397f97af727b3306cefde4c69cfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
