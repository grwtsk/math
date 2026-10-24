# innerContent_iSup_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d541fbc6900566162eae4801fceb6aea2c874a8c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6772931b-e99a-76d7-b603-de86b7af777f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c639b8f6-117b-ba0b-1009-398b20bf8b03",
  "kind": "theorem",
  "lexical_name": "innerContent_iSup_nat",
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
  "slug": "innercontent-isup-nat--dc8ff69bec8c491de7b0567b",
  "source": {
    "blob": "d541fbc6900566162eae4801fceb6aea2c874a8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 170,
    "path": "GRWTSK/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc8ff69bec8c491de7b0567b0be8f1b0b1893113b1d93d6cd0ba5c4d0923fc88",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c639b8f6-117b-ba0b-1009-398b20bf8b03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem innerContent_iSup_nat [T2Space G] (U : ℕ → Opens G) :
    μ.innerContent (⨆ i : ℕ, U i) ≤ ∑' i : ℕ, μ.innerContent (U i) := by
  have h3 : ∀ (t : Finset ℕ) (K : ℕ → Compacts G), μ (t.sup K) ≤ t.sum fun i => μ (K i) := by
    intro t K
    refine' Finset.induction_on t _ _
    · simp only [μ.empty, nonpos_iff_eq_zero, Finset.sum_empty, Finset.sup_empty]
    · intro n s hn ih
      rw [Finset.sup_insert, Finset.sum_insert hn]
      exact le_trans (μ.sup_le _ _) (add_le_add_left ih _)
  refine' iSup₂_le fun K hK => _
  obtain ⟨t, ht⟩ :=
    K.isCompact.elim_finite_subcover _ (fun i => (U i).isOpen) (by rwa [← Opens.coe_iSup])
  rcases K.isCompact.finite_compact_cover t (SetLike.coe ∘ U) (fun i _ => (U i).isOpen) ht with
    ⟨K', h1K', h2K', h3K'⟩
  let L : ℕ → Compacts G := fun n => ⟨K' n, h1K' n⟩
  convert le_trans (h3 t L) _
  · ext1
    rw [Compacts.coe_finset_sup, Finset.sup_eq_iSup]
    exact h3K'
  refine' le_trans (Finset.sum_le_sum _) (ENNReal.sum_le_tsum t)
  intro i _
  refine' le_trans _ (le_iSup _ (L i))
  refine' le_trans _ (le_iSup _ (h2K' i))
  rfl
#align measure_theory.content.inner_content_Sup_nat MeasureTheory.Content.innerContent_iSup_nat

/-- The inner content of a union of sets is at most the sum of the individual inner contents.
  This is the "unbundled" version of `innerContent_iSup_nat`.
  It is required for the API of `inducedOuterMeasure`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Content/Variant6a3bcbf827b99f45a7f953a471f9bb914445fb6d8040bdcdd28c1313999e4f09.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d541fbc6900566162eae4801fceb6aea2c874a8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
