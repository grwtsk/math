# filtration_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73179262d2625f5abf16a2c0f2bb57a46866097b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/144c0f122106acaff43a17cdd1898258cf9a91311cc0d2b581a1f23a19772b97.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ad2afd6-653f-da64-fced-f513cbf1ee7e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6c3d059-1476-62ba-53bd-eb706172962e",
  "kind": "lemma",
  "lexical_name": "filtration_succ",
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
  "slug": "filtration-succ--e8023cd0f5ff5cd87908282d",
  "source": {
    "blob": "73179262d2625f5abf16a2c0f2bb57a46866097b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 154,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variant144c0f122106acaff43a17cdd1898258cf9a91311cc0d2b581a1f23a19772b97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8023cd0f5ff5cd87908282d3f149bc9b3592987284425ac63a90f28efe41eb6",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variant144c0f122106acaff43a17cdd1898258cf9a91311cc0d2b581a1f23a19772b97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6c3d059-1476-62ba-53bd-eb706172962e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma filtration_succ [SuccOrder ι] (i : ι) (hi : ¬ IsMax i) :
    f.filtration (Order.succ i) =
      f.filtration i ⊔ ⨆ (c : f.Cell i), (P.p c.s).val.subcomplex := by
  apply le_antisymm
  · conv_lhs => rw [filtration_def]
    simp only [sup_le_iff, iSup_le_iff]
    refine ⟨(f.le_filtration _).trans le_sup_left, fun j hj c ↦ ?_⟩
    rw [Order.lt_succ_iff_of_not_isMax hi] at hj
    obtain hj | rfl := hj.lt_or_eq
    · exact (f.subcomplex_le_filtration _ hj).trans le_sup_left
    · exact le_trans (le_trans (by rfl) (le_iSup _ c)) le_sup_right
  · simp only [sup_le_iff, iSup_le_iff]
    exact ⟨f.filtration_monotone (Order.le_succ i),
      fun c ↦ f.subcomplex_le_filtration _ (Order.lt_succ_of_not_isMax hi)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variant144c0f122106acaff43a17cdd1898258cf9a91311cc0d2b581a1f23a19772b97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variant144c0f122106acaff43a17cdd1898258cf9a91311cc0d2b581a1f23a19772b97.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73179262d2625f5abf16a2c0f2bb57a46866097b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
