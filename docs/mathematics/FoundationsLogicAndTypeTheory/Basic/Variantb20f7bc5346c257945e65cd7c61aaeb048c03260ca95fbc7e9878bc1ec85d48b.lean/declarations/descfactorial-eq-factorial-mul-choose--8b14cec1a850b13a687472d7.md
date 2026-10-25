# descFactorial_eq_factorial_mul_choose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b9a76270917cdc41ac89c955046861da523608a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 255,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d5ccd91-7eb5-41bc-8ac7-abac62ca90ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb93d4ac-dfa1-426b-b88a-46879dea0f73",
  "kind": "theorem",
  "lexical_name": "descFactorial_eq_factorial_mul_choose",
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
  "slug": "descfactorial-eq-factorial-mul-choose--8b14cec1a850b13a687472d7",
  "source": {
    "blob": "b9a76270917cdc41ac89c955046861da523608a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 255,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b14cec1a850b13a687472d7aa4e52760320d93c5da53764474b987a40ecbd01",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb93d4ac-dfa1-426b-b88a-46879dea0f73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem descFactorial_eq_factorial_mul_choose (n k : ℕ) : n.descFactorial k = k ! * n.choose k := by
  obtain h | h := Nat.lt_or_ge n k
  · rw [descFactorial_eq_zero_iff_lt.2 h, choose_eq_zero_of_lt h, mul_zero]
  rw [mul_comm]
  apply mul_right_cancel₀ (factorial_ne_zero (n - k))
  rw [choose_mul_factorial_mul_factorial h, ← factorial_mul_descFactorial h, mul_comm]
#align nat.desc_factorial_eq_factorial_mul_choose Nat.descFactorial_eq_factorial_mul_choose

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantb20f7bc5346c257945e65cd7c61aaeb048c03260ca95fbc7e9878bc1ec85d48b.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9a76270917cdc41ac89c955046861da523608a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
