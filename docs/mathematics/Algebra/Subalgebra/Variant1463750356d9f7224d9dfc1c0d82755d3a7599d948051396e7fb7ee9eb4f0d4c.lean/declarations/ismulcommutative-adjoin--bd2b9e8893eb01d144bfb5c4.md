# isMulCommutative_adjoin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81170d19692b46d1c8cb1ddb3f643f63b3a91dbd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 587,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/1463750356d9f7224d9dfc1c0d82755d3a7599d948051396e7fb7ee9eb4f0d4c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98163bf5-ffa0-9723-3630-689e8585785f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:83ce6441-f1d8-5e0a-5412-266dbdc28aea",
  "kind": "theorem",
  "lexical_name": "isMulCommutative_adjoin",
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
  "slug": "ismulcommutative-adjoin--bd2b9e8893eb01d144bfb5c4",
  "source": {
    "blob": "81170d19692b46d1c8cb1ddb3f643f63b3a91dbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 603,
    "line": 587,
    "path": "GRWTSK/Algebra/Subalgebra/Variant1463750356d9f7224d9dfc1c0d82755d3a7599d948051396e7fb7ee9eb4f0d4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd2b9e8893eb01d144bfb5c47142be8ecf3ebad8a6eeecf6592567caa6d00e72",
  "verification": {
    "reference": "docs/verification/Algebra/Subalgebra/Variant1463750356d9f7224d9dfc1c0d82755d3a7599d948051396e7fb7ee9eb4f0d4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83ce6441-f1d8-5e0a-5412-266dbdc28aea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 587–603.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMulCommutative_adjoin {s : Set A} (hnormal : ∀ x ∈ s, IsStarNormal x)
    (hcomm : s.Pairwise Commute) (hcomm_star : s.Pairwise (Commute · <| star ·)) :
    IsMulCommutative (adjoin R s) := by
  have := adjoin_le_centralizer_centralizer R s
  refine .of_setLike_mul_comm fun _ h₁ _ h₂ ↦ ?_
  apply this at h₁
  apply this at h₂
  rw [← SetLike.mem_coe, coe_centralizer_centralizer] at h₁ h₂
  exact Set.centralizer_centralizer_comm_of_comm
    (Set.Pairwise.commute_union_star_self_iff.mpr ⟨hcomm, hcomm_star, hnormal⟩) _ h₁ _ h₂

open scoped IsMulCommutative in
/-- If all elements of `s : Set A` are normal, commute pairwise, and commute pairwise with the
`star` of elements in this set, then `StarAlgebra.adjoin R s` is a commutative semiring.

See note [reducible non-instances]. -/
@[deprecated isMulCommutative_adjoin (since := "2026-03-11")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Subalgebra/Variant1463750356d9f7224d9dfc1c0d82755d3a7599d948051396e7fb7ee9eb4f0d4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Subalgebra/Variant1463750356d9f7224d9dfc1c0d82755d3a7599d948051396e7fb7ee9eb4f0d4c.lean#L587).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81170d19692b46d1c8cb1ddb3f643f63b3a91dbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
