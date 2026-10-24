# Subgroup.Normal.quotient_commutative_iff_commutator_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bf77a5b-2325-1d7b-a38f-d4c983f16a38",
  "kind": "theorem",
  "lexical_name": "Subgroup.Normal.quotient_commutative_iff_commutator_le",
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
  "slug": "subgroup-normal-quotient-commutative-iff-commutator-le--e8c0de8d9aeaae2997962915",
  "source": {
    "blob": "baa949e1fd5a74609ff23fb18b890208fd90625e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 584,
    "line": 568,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variante5e8dc4777a7ec585a89f4b09b2761d1ca7a8ea57c32bd359259b975ebb41aaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8c0de8d9aeaae2997962915099eff720891fd7864d9f8768bdb82fc05a4a867",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variante5e8dc4777a7ec585a89f4b09b2761d1ca7a8ea57c32bd359259b975ebb41aaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bf77a5b-2325-1d7b-a38f-d4c983f16a38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 568–584.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subgroup.Normal.quotient_commutative_iff_commutator_le {N : Subgroup G} [N.Normal] :
    IsMulCommutative (G ⧸ N) ↔ _root_.GRWTSK.Algebra.GroupTheory.ConjEqCommutatorElementMul.Variant8b2344c44b8867c41e283c912a874b7c6df5e9bebc7902543ba46eec84c7f621.commutator G ≤ N := by
  refine ⟨fun hcomm ↦ ?_, fun hGN ↦ ⟨⟨fun x' y' ↦ ?_⟩⟩⟩
  · rw [commutator_eq_normalClosure, ← Subgroup.normalClosure_subset_iff]
    rintro x ⟨p, q, rfl⟩
    rw [SetLike.mem_coe, ← QuotientGroup.eq_one_iff, commutatorElement_def]
    simp only [QuotientGroup.mk_mul, QuotientGroup.mk_inv]
    rw [← commutatorElement_def, commutatorElement_eq_one_iff_mul_comm, mul_comm']
  · obtain ⟨x, rfl⟩ := QuotientGroup.mk'_surjective N x'
    obtain ⟨y, rfl⟩ := QuotientGroup.mk'_surjective N y'
    rw [← commutatorElement_eq_one_iff_mul_comm, ← map_commutatorElement, QuotientGroup.mk'_apply,
      QuotientGroup.eq_one_iff]
    apply hGN
    rw [commutator_eq_closure]
    exact Subgroup.subset_closure (commutator_mem_commutatorSet x y)

open IsMulCommutative in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variante5e8dc4777a7ec585a89f4b09b2761d1ca7a8ea57c32bd359259b975ebb41aaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variante5e8dc4777a7ec585a89f4b09b2761d1ca7a8ea57c32bd359259b975ebb41aaa.lean#L568).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `baa949e1fd5a74609ff23fb18b890208fd90625e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
