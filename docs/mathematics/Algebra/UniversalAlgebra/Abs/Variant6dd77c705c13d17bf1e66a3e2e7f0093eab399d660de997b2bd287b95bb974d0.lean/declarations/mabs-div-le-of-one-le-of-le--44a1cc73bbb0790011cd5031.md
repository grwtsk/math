# mabs_div_le_of_one_le_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c7ff3f7d790ef4ee34408b1bd586b1ce727f5dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2f07b10-111e-345e-cb20-6e3f564eff91",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bba7931a-fdab-3f62-d258-8461ad2c813d",
  "kind": "theorem",
  "lexical_name": "mabs_div_le_of_one_le_of_le",
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
  "slug": "mabs-div-le-of-one-le-of-le--44a1cc73bbb0790011cd5031",
  "source": {
    "blob": "1c7ff3f7d790ef4ee34408b1bd586b1ce727f5dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 125,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44a1cc73bbb0790011cd5031aead8564be4ee9241330470f301892dd7cf4e9d5",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bba7931a-fdab-3f62-d258-8461ad2c813d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mabs_div_le_of_one_le_of_le {a b n : G} (one_le_a : 1 ≤ a) (a_le_n : a ≤ n)
    (one_le_b : 1 ≤ b) (b_le_n : b ≤ n) : |a / b|ₘ ≤ n := by
  rw [mabs_div_le_iff, div_le_iff_le_mul, div_le_iff_le_mul]
  exact ⟨le_mul_of_le_of_one_le a_le_n one_le_b, le_mul_of_le_of_one_le b_le_n one_le_a⟩

/-- `|a / b|ₘ < n` if `1 ≤ a < n` and `1 ≤ b < n`. -/
@[to_additive /-- `|a - b| < n` if `0 ≤ a < n` and `0 ≤ b < n`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c7ff3f7d790ef4ee34408b1bd586b1ce727f5dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
