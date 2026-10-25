# sum_isBase_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf82c847-f8b5-fd83-b9f0-203bfaff3004",
  "kind": "lemma",
  "lexical_name": "sum_isBase_iff",
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
  "slug": "sum-isbase-iff--0e07a68bfa00cf542833b93c",
  "source": {
    "blob": "cbbf1a7d2b2b92797f94c4402ccf7e36c1837dd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 254,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant7e795fcc7f13b85772567673b8e26a28d41c4c688bb8bff1b4b1bfd19a149eee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e07a68bfa00cf542833b93cd2b5fb48567b1a329fa104b5db810a6b81dcafcf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant7e795fcc7f13b85772567673b8e26a28d41c4c688bb8bff1b4b1bfd19a149eee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf82c847-f8b5-fd83-b9f0-203bfaff3004`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma sum_isBase_iff {M : Matroid α} {N : Matroid β} {B : Set (α ⊕ β)} :
    (M.sum N).IsBase B ↔ M.IsBase (.inl ⁻¹' B) ∧ N.IsBase (.inr ⁻¹' B) := by
  simp only [Matroid.sum, mapEquiv_isBase_iff, Equiv.sumCongr_symm, Equiv.sumCongr_apply,
    Equiv.symm_symm, sigma_isBase_iff, Bool.forall_bool]
  convert! Iff.rfl <;>
    simp [Set.ext_iff, Equiv.ulift, Equiv.sumEquivSigmaBool]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant7e795fcc7f13b85772567673b8e26a28d41c4c688bb8bff1b4b1bfd19a149eee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant7e795fcc7f13b85772567673b8e26a28d41c4c688bb8bff1b4b1bfd19a149eee.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbbf1a7d2b2b92797f94c4402ccf7e36c1837dd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
