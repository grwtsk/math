# discrepancy_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "788ce4bb18ec18c19f5c3e76a884f0beff5552e8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 829,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/18b1e769f416621f73cad9ea60a104f5cccce7e861a10fa1869d0d0d451bf104.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f80b0d73-d04c-fa6d-1a67-17c445bd72e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc598ac0-1765-5c64-0ed2-ba966bb53d7f",
  "kind": "theorem",
  "lexical_name": "discrepancy_det",
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
  "slug": "discrepancy-det--eb11eb5f4518c041b940d8bc",
  "source": {
    "blob": "788ce4bb18ec18c19f5c3e76a884f0beff5552e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 838,
    "line": 829,
    "path": "GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalk/Variant18b1e769f416621f73cad9ea60a104f5cccce7e861a10fa1869d0d0d451bf104.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb11eb5f4518c041b940d8bcedb1f3b3508e1cd7ad37458032fedd86352a1bf4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CyclicPrimeWalk/Variant18b1e769f416621f73cad9ea60a104f5cccce7e861a10fa1869d0d0d451bf104.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc598ac0-1765-5c64-0ed2-ba966bb53d7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 829–838.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discrepancy_det (q : ℝ) :
    Matrix.det (discrepancy q) = -3 * centeredWeight q ^ 2 := by
  rw [discrepancy_entries, Matrix.det_fin_two]
  simp
  ring_nf
  rw [sqrtThree_sq]
  ring

/-- Determinant cannot distinguish a weight from its complementary weight. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CyclicPrimeWalk/Variant18b1e769f416621f73cad9ea60a104f5cccce7e861a10fa1869d0d0d451bf104.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalk/Variant18b1e769f416621f73cad9ea60a104f5cccce7e861a10fa1869d0d0d451bf104.lean#L829).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `788ce4bb18ec18c19f5c3e76a884f0beff5552e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
