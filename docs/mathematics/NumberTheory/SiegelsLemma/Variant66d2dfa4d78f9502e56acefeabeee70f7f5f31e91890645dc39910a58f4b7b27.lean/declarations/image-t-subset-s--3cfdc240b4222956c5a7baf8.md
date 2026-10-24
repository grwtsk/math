# image_T_subset_S

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c52bde98-b810-2b94-9c60-e8ebd8068ec0",
  "kind": "lemma",
  "lexical_name": "image_T_subset_S",
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
  "slug": "image-t-subset-s--3cfdc240b4222956c5a7baf8",
  "source": {
    "blob": "00ff8d79e77e36009f6f5315936e2e994893fa12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 78,
    "path": "GRWTSK/NumberTheory/SiegelsLemma/Variant66d2dfa4d78f9502e56acefeabeee70f7f5f31e91890645dc39910a58f4b7b27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cfdc240b4222956c5a7baf8928bd12a9037308915b3bf29abf0cff993f14929",
  "verification": {
    "reference": "docs/verification/NumberTheory/SiegelsLemma/Variant66d2dfa4d78f9502e56acefeabeee70f7f5f31e91890645dc39910a58f4b7b27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c52bde98-b810-2b94-9c60-e8ebd8068ec0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma image_T_subset_S [DecidableEq α] [DecidableEq β] (v) (hv : v ∈ T) : A *ᵥ v ∈ S := by
  rw [mem_Icc] at hv ⊢
  have mulVec_def : A.mulVec v =
      fun i ↦ Finset.sum univ fun j : β ↦ A i j * v j := rfl
  rw [mulVec_def]
  refine ⟨fun i ↦ ?_, fun i ↦ ?_⟩
  all_goals
    simp only [mul_neg]
    gcongr ∑ _ : α, ?_ with j _ -- Get rid of sums
    rw [← mul_comm (v j)] -- Move A i j to the right of the products
    rcases le_total 0 (A i j) with hsign | hsign-- We have to distinguish cases: we have now 4 goals
  · rw [negPart_eq_zero.2 hsign]
    exact mul_nonneg (hv.1 j) hsign
  · rw [negPart_eq_neg.2 hsign]
    simp only [mul_neg, neg_neg]
    exact mul_le_mul_of_nonpos_right (hv.2 j) hsign
  · rw [posPart_eq_self.2 hsign]
    gcongr
    apply hv.2
  · rw [posPart_eq_zero.2 hsign]
    exact mul_nonpos_of_nonneg_of_nonpos (hv.1 j) hsign

-- # Preparation for Step 2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SiegelsLemma/Variant66d2dfa4d78f9502e56acefeabeee70f7f5f31e91890645dc39910a58f4b7b27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SiegelsLemma/Variant66d2dfa4d78f9502e56acefeabeee70f7f5f31e91890645dc39910a58f4b7b27.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00ff8d79e77e36009f6f5315936e2e994893fa12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
