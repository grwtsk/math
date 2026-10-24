# mabs_div_lt_of_one_le_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63e8975d-88d0-ba0a-c569-b6402dc13a8c",
  "kind": "theorem",
  "lexical_name": "mabs_div_lt_of_one_le_of_lt",
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
  "slug": "mabs-div-lt-of-one-le-of-lt--6f8e29db3dfbcf860df4e602",
  "source": {
    "blob": "8eb36b5a62081a64e58ebc51a7ca7ac98773396a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 140,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Abs/Variantc0c90515834e751f12b71a9faf2fefbc5b010ce497964e3d34480458fcc35dc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f8e29db3dfbcf860df4e602755231f1a5cda13f53b834447b62ae4055fc6982",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Abs/Variantc0c90515834e751f12b71a9faf2fefbc5b010ce497964e3d34480458fcc35dc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63e8975d-88d0-ba0a-c569-b6402dc13a8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mabs_div_lt_of_one_le_of_lt {a b n : G} (one_le_a : 1 ≤ a) (a_lt_n : a < n)
    (one_le_b : 1 ≤ b) (b_lt_n : b < n) : |a / b|ₘ < n := by
  rw [mabs_div_lt_iff, div_lt_iff_lt_mul, div_lt_iff_lt_mul]
  exact ⟨lt_mul_of_lt_of_one_le a_lt_n one_le_b, lt_mul_of_lt_of_one_le b_lt_n one_le_a⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Abs/Variantc0c90515834e751f12b71a9faf2fefbc5b010ce497964e3d34480458fcc35dc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Abs/Variantc0c90515834e751f12b71a9faf2fefbc5b010ce497964e3d34480458fcc35dc1.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eb36b5a62081a64e58ebc51a7ca7ac98773396a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
