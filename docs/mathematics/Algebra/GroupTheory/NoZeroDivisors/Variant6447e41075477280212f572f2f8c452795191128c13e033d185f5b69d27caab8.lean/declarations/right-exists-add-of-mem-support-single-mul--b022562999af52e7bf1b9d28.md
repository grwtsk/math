# Right.exists_add_of_mem_support_single_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "68b4820e19751c749049815f5b8878eebf5b8981",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f55edda4-2412-58de-746f-6823b59119e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1f50276-e632-ae35-b3f7-51aad6ac5b31",
  "kind": "theorem",
  "lexical_name": "Right.exists_add_of_mem_support_single_mul",
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
  "slug": "right-exists-add-of-mem-support-single-mul--b022562999af52e7bf1b9d28",
  "source": {
    "blob": "68b4820e19751c749049815f5b8878eebf5b8981",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 77,
    "path": "GRWTSK/Algebra/GroupTheory/NoZeroDivisors/Variant6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b022562999af52e7bf1b9d282fb7bfdcbeb6ca2c380d7f85ab3787a531f0d5db",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/NoZeroDivisors/Variant6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1f50276-e632-ae35-b3f7-51aad6ac5b31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Right.exists_add_of_mem_support_single_mul [AddRightCancelSemigroup A]
    {f : AddMonoidAlgebra R A} (b x : A)
    (hx : x ∈ (f * single b 1 : AddMonoidAlgebra R A).support) : ∃ a ∈ f.support, a + b = x := by
  rwa [support_mul_single _ _ (fun y => by rw [mul_one] : ∀ y : R, y * 1 = 0 ↔ _),
    Finset.mem_map] at hx
#align add_monoid_algebra.right.exists_add_of_mem_support_single_mul AddMonoidAlgebra.Right.exists_add_of_mem_support_single_mul

/-- If `R` is a semiring with no non-trivial zero-divisors and `A` is a left-ordered add right
cancel semigroup, then `AddMonoidAlgebra R A` also contains no non-zero zero-divisors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/NoZeroDivisors/Variant6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/NoZeroDivisors/Variant6447e41075477280212f572f2f8c452795191128c13e033d185f5b69d27caab8.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68b4820e19751c749049815f5b8878eebf5b8981` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
