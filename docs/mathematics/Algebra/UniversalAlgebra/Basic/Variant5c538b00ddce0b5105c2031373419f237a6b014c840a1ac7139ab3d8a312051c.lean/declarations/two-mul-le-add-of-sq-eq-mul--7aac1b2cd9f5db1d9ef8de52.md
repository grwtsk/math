# two_mul_le_add_of_sq_eq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1208f08492bde25431c84e2c0847228c292f0bb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 766,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c538b00ddce0b5105c2031373419f237a6b014c840a1ac7139ab3d8a312051c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81752d2f-a7f0-3ed2-3889-ef40576a8f05",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6e50a29-0151-c301-3a16-edef357cdb29",
  "kind": "lemma",
  "lexical_name": "two_mul_le_add_of_sq_eq_mul",
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
  "slug": "two-mul-le-add-of-sq-eq-mul--7aac1b2cd9f5db1d9ef8de52",
  "source": {
    "blob": "1208f08492bde25431c84e2c0847228c292f0bb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 782,
    "line": 766,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant5c538b00ddce0b5105c2031373419f237a6b014c840a1ac7139ab3d8a312051c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7aac1b2cd9f5db1d9ef8de52af3227f9ed9cc27548c7c81cdef90756bde6c00d",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant5c538b00ddce0b5105c2031373419f237a6b014c840a1ac7139ab3d8a312051c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6e50a29-0151-c301-3a16-edef357cdb29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 766–782.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma two_mul_le_add_of_sq_eq_mul [ExistsAddOfLE R] [MulPosStrictMono R] [PosMulStrictMono R]
    [AddLeftReflectLE R] [AddLeftMono R] {a b r : R}
    (ha : 0 ≤ a) (hb : 0 ≤ b) (ht : r ^ 2 = a * b) : 2 * r ≤ a + b := by
  apply nonneg_le_nonneg_of_sq_le_sq (Left.add_nonneg ha hb)
  conv_rhs => rw [← pow_two]
  convert four_mul_le_sq_add a b using 1
  rw [mul_mul_mul_comm, two_mul, two_add_two_eq_four, ← pow_two, ht, mul_assoc]

end LinearOrderedCommSemiring

section LinearOrderedRing

variable [Ring R] [LinearOrder R] {a b : R}

-- TODO: Can the following five lemmas be generalised to
-- `[Semiring R] [LinearOrder R] [ExistsAddOfLE R] ..`?

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant5c538b00ddce0b5105c2031373419f237a6b014c840a1ac7139ab3d8a312051c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant5c538b00ddce0b5105c2031373419f237a6b014c840a1ac7139ab3d8a312051c.lean#L766).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1208f08492bde25431c84e2c0847228c292f0bb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
