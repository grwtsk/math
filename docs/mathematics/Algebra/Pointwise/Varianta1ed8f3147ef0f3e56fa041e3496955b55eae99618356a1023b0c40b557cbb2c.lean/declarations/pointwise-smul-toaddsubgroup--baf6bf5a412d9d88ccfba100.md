# pointwise_smul_toAddSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0e11fa05f8d9117b7e1f56b3c7bc3b87cb96743",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1de778c0-6939-8113-4b98-7e0e92a78237",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af82572f-fc91-51e3-b7d2-91918a6063d1",
  "kind": "theorem",
  "lexical_name": "pointwise_smul_toAddSubgroup",
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
  "slug": "pointwise-smul-toaddsubgroup--baf6bf5a412d9d88ccfba100",
  "source": {
    "blob": "b0e11fa05f8d9117b7e1f56b3c7bc3b87cb96743",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 109,
    "path": "GRWTSK/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:baf6bf5a412d9d88ccfba10033d5b55532a1a9cc6628b11cff5c298962024aa1",
  "verification": {
    "reference": "docs/verification/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af82572f-fc91-51e3-b7d2-91918a6063d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pointwise_smul_toAddSubgroup {R : Type*} [Ring R] [MulSemiringAction M R]
    (a : M) (S : Ideal R) (ha : Function.Surjective fun r : R => a • r) :
    (a • S).toAddSubgroup = a • S.toAddSubgroup := by
  ext
  exact Ideal.mem_map_iff_of_surjective _ <| by exact ha

end Monoid

section Group

variable [Group M] [Semiring R] [MulSemiringAction M R]

open scoped Pointwise

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0e11fa05f8d9117b7e1f56b3c7bc3b87cb96743` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
