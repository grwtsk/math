# superFactorial_four_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8392429ef862d6650d8f81131349d99eb58a061f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc2714c3-c6f2-afa8-ab90-ae9bf441a90d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7af818e5-5a4b-1fea-2dfd-02e722383150",
  "kind": "theorem",
  "lexical_name": "superFactorial_four_mul",
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
  "slug": "superfactorial-four-mul--39c2ba3b16b715e1056df70e",
  "source": {
    "blob": "8392429ef862d6650d8f81131349d99eb58a061f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 93,
    "path": "GRWTSK/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39c2ba3b16b715e1056df70e27b36f88180c6898a2c5651f97e5a580842b963e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7af818e5-5a4b-1fea-2dfd-02e722383150`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem superFactorial_four_mul (n : ℕ) :
    sf (4 * n) = ((∏ i ∈ range (2 * n), (2 * i + 1) !) * 2 ^ n) ^ 2 * (2 * n) ! :=
  calc
    sf (4 * n) = (∏ i ∈ range (2 * n), (2 * i + 1) !) ^ 2 * 2 ^ (2 * n) * (2 * n) ! := by
      rw [← superFactorial_two_mul, ← mul_assoc, Nat.mul_two]
    _ = ((∏ i ∈ range (2 * n), (2 * i + 1) !) * 2 ^ n) ^ 2 * (2 * n) ! := by
      rw [pow_mul', mul_pow]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SuperFactorial/Variant7abb883c97561d3773837ae4a9c2f114a3ebed5ae1088131dc9d1784d041f95a.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8392429ef862d6650d8f81131349d99eb58a061f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
