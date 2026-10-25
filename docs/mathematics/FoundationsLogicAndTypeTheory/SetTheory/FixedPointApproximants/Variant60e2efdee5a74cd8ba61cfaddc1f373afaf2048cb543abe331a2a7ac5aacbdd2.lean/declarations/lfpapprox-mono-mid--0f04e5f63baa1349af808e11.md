# lfpApprox_mono_mid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d1e937f10243ae8371797767abedc90fdcf7a36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b11b7566-2345-4756-455a-9cc72b3b600f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:389733ce-c65b-d67e-f0b4-4be05fcf4e3d",
  "kind": "theorem",
  "lexical_name": "lfpApprox_mono_mid",
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
  "slug": "lfpapprox-mono-mid--0f04e5f63baa1349af808e11",
  "source": {
    "blob": "4d1e937f10243ae8371797767abedc90fdcf7a36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f04e5f63baa1349af808e11704ad9456bc7af553cf6645e8e035066a6d8eab1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:389733ce-c65b-d67e-f0b4-4be05fcf4e3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lfpApprox_mono_mid : Monotone (lfpApprox f) := by
  intro x₁ x₂ h a
  induction a using Ordinal.induction with
  | h i ih =>
    rw [lfpApprox, lfpApprox]
    apply sSup_le
    simp only [exists_prop, Set.union_singleton, Set.mem_insert_iff, Set.mem_setOf_eq, sSup_insert,
      forall_eq_or_imp, forall_exists_index, and_imp, forall_apply_eq_imp_iff₂]
    constructor
    · exact le_sup_of_le_left h
    · intro i' h_i'
      apply le_sup_of_le_right
      apply le_sSup_of_le
      · use i'
      · exact f.monotone (ih i' h_i')

/-- The approximations of the least fixed point stabilize at a fixed point of `f` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d1e937f10243ae8371797767abedc90fdcf7a36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
