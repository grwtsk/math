# IsMultiplyPretransitive.index_of_fixingSubgroup_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70c55f4d-d945-73bb-d87e-b3311498fd29",
  "kind": "theorem",
  "lexical_name": "IsMultiplyPretransitive.index_of_fixingSubgroup_eq",
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
  "slug": "ismultiplypretransitive-index-of-fixingsubgroup-eq--1b8e586e0c0056eb09639836",
  "source": {
    "blob": "7ef92d0cdf83f804be1f6ecfd29e1a2cdf279e8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 503,
    "path": "GRWTSK/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b8e586e0c0056eb096398360781ba3fbff417bb1a6db44907fe9a274921de2b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70c55f4d-d945-73bb-d87e-b3311498fd29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 503–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsMultiplyPretransitive.index_of_fixingSubgroup_eq
    [Finite α] (s : Set α) (hMk : IsMultiplyPretransitive G α s.ncard) :
    (fixingSubgroup G s).index =
      Nat.choose (Nat.card α) s.ncard * s.ncard.factorial := by
  apply Nat.eq_of_mul_eq_mul_right (Nat.factorial_pos _)
  rw [hMk.index_of_fixingSubgroup_mul rfl, Nat.choose_mul_factorial_mul_factorial]
  rw [← ncard_univ]
  exact ncard_le_ncard (subset_univ s)

end Index

end MulAction

namespace Equiv.Perm

variable {α : Type*}

/-- For any two embeddings from a finite type into `β`, some permutation of `β` maps one to the
other. This is the action-form of `Equiv.Perm.exists_extending_pair`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean#L503).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ef92d0cdf83f804be1f6ecfd29e1a2cdf279e8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
