# Right.exists_add_of_mem_support_single_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d56774c-ace8-6233-58b4-4ec2294d9b21",
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
  "slug": "right-exists-add-of-mem-support-single-mul--a538814ef9741bb166bd77ac",
  "source": {
    "blob": "bb8a6accbafb9d12a529d525473fc2a0d36813eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 85,
    "path": "GRWTSK/Algebra/GroupTheory/NoZeroDivisors/Variant4370f86d5fca75e948e7a0eddda504eef4f3477a39cbb6ace8cfbb22244ac52a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a538814ef9741bb166bd77acd347f711c0f0bdc5a635587f766843124c29f99f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/NoZeroDivisors/Variant4370f86d5fca75e948e7a0eddda504eef4f3477a39cbb6ace8cfbb22244ac52a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d56774c-ace8-6233-58b4-4ec2294d9b21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–93.

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

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/NoZeroDivisors/Variant4370f86d5fca75e948e7a0eddda504eef4f3477a39cbb6ace8cfbb22244ac52a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/NoZeroDivisors/Variant4370f86d5fca75e948e7a0eddda504eef4f3477a39cbb6ace8cfbb22244ac52a.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb8a6accbafb9d12a529d525473fc2a0d36813eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
