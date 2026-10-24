# natTrailingDegree_le_trailingDegree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88b33866a072126d81fdd44237127f8ccb55d37b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8957ce875746a7d4bcc2c0d0011d3059e088cde3ac5539ebe483d3c94dbce27.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6dd8941c-984d-4ae6-e322-a02505ae2fab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c2208b3-0dd1-e95b-7cce-d23e439ae973",
  "kind": "theorem",
  "lexical_name": "natTrailingDegree_le_trailingDegree",
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
  "slug": "nattrailingdegree-le-trailingdegree--ecac1ef765a70279e3a0f57d",
  "source": {
    "blob": "88b33866a072126d81fdd44237127f8ccb55d37b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 141,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/TrailingDegree/Variantc8957ce875746a7d4bcc2c0d0011d3059e088cde3ac5539ebe483d3c94dbce27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecac1ef765a70279e3a0f57da23c212aebf86ca30c414b55a5b099de12b01842",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/TrailingDegree/Variantc8957ce875746a7d4bcc2c0d0011d3059e088cde3ac5539ebe483d3c94dbce27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c2208b3-0dd1-e95b-7cce-d23e439ae973`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natTrailingDegree_le_trailingDegree : ↑(natTrailingDegree p) ≤ trailingDegree p := by
  by_cases hp : p = 0;
  · rw [hp, trailingDegree_zero]
    exact le_top
  rw [trailingDegree_eq_natTrailingDegree hp]
#align polynomial.nat_trailing_degree_le_trailing_degree Polynomial.natTrailingDegree_le_trailingDegree

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/TrailingDegree/Variantc8957ce875746a7d4bcc2c0d0011d3059e088cde3ac5539ebe483d3c94dbce27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/TrailingDegree/Variantc8957ce875746a7d4bcc2c0d0011d3059e088cde3ac5539ebe483d3c94dbce27.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88b33866a072126d81fdd44237127f8ccb55d37b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
