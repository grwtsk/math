# ncard_sumEquiv_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2720b1c0-1b2f-0511-50f2-51238cbb020d",
  "kind": "theorem",
  "lexical_name": "ncard_sumEquiv_symm_apply",
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
  "slug": "ncard-sumequiv-symm-apply--51a5d9a42417114825619c40",
  "source": {
    "blob": "b08e799e6244fa8fd4a5cd055c04b858fda23fd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1403,
    "line": 1392,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantb2e84ee11704f2348cb08ed1f1dcd64f018d2bc6acc83ccefd7bb8fedf4f7a21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51a5d9a42417114825619c402e7d88e8e15e71abb5b92fbead1c226bf4eb90fb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantb2e84ee11704f2348cb08ed1f1dcd64f018d2bc6acc83ccefd7bb8fedf4f7a21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2720b1c0-1b2f-0511-50f2-51238cbb020d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1392–1403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ncard_sumEquiv_symm_apply {α : Type*} (s : Set α) :
    (Set.sumEquiv.symm (s, s)).ncard = s.ncard + s.ncard := by
  by_cases hs : s.Finite
  · simp [(ncard_union_eq_iff (.image _ hs) (.image _ hs)).2 disjoint_image_inl_image_inr,
      ncard_image_of_injective _ Sum.inl_injective, ncard_image_of_injective _ Sum.inr_injective]
  · simp [(infinite_union.2 <| .inl <| .image Sum.inl_injective.injOn hs).ncard, Infinite.ncard hs]

end ncard
end Set

/-- A surjective function `f : α → β` decreases cardinality by at most one if and only if
there is at most a collision between a unique pair of elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantb2e84ee11704f2348cb08ed1f1dcd64f018d2bc6acc83ccefd7bb8fedf4f7a21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantb2e84ee11704f2348cb08ed1f1dcd64f018d2bc6acc83ccefd7bb8fedf4f7a21.lean#L1392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b08e799e6244fa8fd4a5cd055c04b858fda23fd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
