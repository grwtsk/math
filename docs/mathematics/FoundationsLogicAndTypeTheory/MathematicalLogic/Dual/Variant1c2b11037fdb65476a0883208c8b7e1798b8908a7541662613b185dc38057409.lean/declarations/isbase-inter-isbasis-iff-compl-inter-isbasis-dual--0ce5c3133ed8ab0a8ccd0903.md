# IsBase.inter_isBasis_iff_compl_inter_isBasis_dual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3cbdd40387bf91c66e3f6f340f781fbe5cb4dabd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:605d7d73-6f17-c522-d9f3-5a8b42bdd3b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:635f801a-e94f-7235-c07e-9c6923102fe6",
  "kind": "theorem",
  "lexical_name": "IsBase.inter_isBasis_iff_compl_inter_isBasis_dual",
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
  "slug": "isbase-inter-isbasis-iff-compl-inter-isbasis-dual--0ce5c3133ed8ab0a8ccd0903",
  "source": {
    "blob": "3cbdd40387bf91c66e3f6f340f781fbe5cb4dabd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 200,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ce5c3133ed8ab0a8ccd09039329e6aae082497bafa6785643a92df5259fc790",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:635f801a-e94f-7235-c07e-9c6923102fe6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsBase.inter_isBasis_iff_compl_inter_isBasis_dual (hB : M.IsBase B)
    (hX : X ⊆ M.E := by aesop_mat) :
    M.IsBasis (B ∩ X) X ↔ M✶.IsBasis ((M.E \ B) ∩ (M.E \ X)) (M.E \ X) := by
  refine ⟨hB.compl_inter_isBasis_of_inter_isBasis, fun h ↦ ?_⟩
  simpa [inter_eq_self_of_subset_right hX, inter_eq_self_of_subset_right hB.subset_ground] using
    hB.compl_isBase_dual.compl_inter_isBasis_of_inter_isBasis h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dual/Variant1c2b11037fdb65476a0883208c8b7e1798b8908a7541662613b185dc38057409.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cbdd40387bf91c66e3f6f340f781fbe5cb4dabd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
