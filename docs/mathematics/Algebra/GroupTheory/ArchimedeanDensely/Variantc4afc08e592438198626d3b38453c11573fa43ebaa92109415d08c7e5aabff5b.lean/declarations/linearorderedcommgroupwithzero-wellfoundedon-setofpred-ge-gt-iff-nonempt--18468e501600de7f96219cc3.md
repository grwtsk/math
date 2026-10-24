# LinearOrderedCommGroupWithZero.wellFoundedOn_setOfPred_ge_gt_iff_nonempty_discrete_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac2643d6-5769-7d78-86bf-999c8b878700",
  "kind": "lemma",
  "lexical_name": "LinearOrderedCommGroupWithZero.wellFoundedOn_setOfPred_ge_gt_iff_nonempty_discrete_of_ne_zero",
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
  "slug": "linearorderedcommgroupwithzero-wellfoundedon-setofpred-ge-gt-iff-nonempt--18468e501600de7f96219cc3",
  "source": {
    "blob": "ae1e95500e6d8ee2f6082fbc22e2ab945ac27a31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 452,
    "path": "GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variantc4afc08e592438198626d3b38453c11573fa43ebaa92109415d08c7e5aabff5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18468e501600de7f96219cc3713f7da69b43459237bfc76206d8d5ac448d0140",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ArchimedeanDensely/Variantc4afc08e592438198626d3b38453c11573fa43ebaa92109415d08c7e5aabff5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac2643d6-5769-7d78-86bf-999c8b878700`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 452–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearOrderedCommGroupWithZero.wellFoundedOn_setOfPred_ge_gt_iff_nonempty_discrete_of_ne_zero
    {G₀ : Type*} [LinearOrderedCommGroupWithZero G₀] [Nontrivial G₀ˣ] {g : G₀} (hg : g ≠ 0) :
    Set.WellFoundedOn {x : G₀ | x ≤ g} (· > ·) ↔ Nonempty (G₀ ≃*o ℤᵐ⁰) := by
  have hg' : g⁻¹ ≠ 0 := by simp [hg]
  rw [← wellFoundedOn_setOfPred_le_lt_iff_nonempty_discrete_of_ne_zero hg',
    ← Set.wellFoundedOn_sdiff_singleton (a := 0)]
  refine ⟨fun h ↦ (h.mapsTo (·⁻¹) ?_).mono' ?_, fun h ↦ (h.mapsTo (·⁻¹) ?_).mono' ?_⟩
  · intro x
    rcases eq_or_ne x 0 with rfl | hx
    · simp [hg]
    simp only [mem_ofPred_eq, mem_sdiff, mem_singleton_iff, inv_eq_zero, hx, not_false_eq_true,
      and_true]
    refine (inv_le_comm₀ ?_ ?_).mp <;>
    simp [zero_lt_iff, hg, hx]
  · simp only [mem_ofPred_eq, Function.onFun, gt_iff_lt]
    intro a ha b _
    refine inv_strictAnti₀ ?_
    contrapose! ha
    simp only [le_zero_iff] at ha
    simp [zero_lt_iff, ha, hg]
  · intro x
    simp only [mem_sdiff, mem_ofPred_eq, mem_singleton_iff, and_imp]
    intro hxg hx
    refine inv_anti₀ ?_ hxg
    simp [zero_lt_iff, hx]
  · simp only [mem_sdiff, mem_ofPred_eq, mem_singleton_iff, gt_iff_lt, Function.onFun, and_imp]
    intro a _ _ b _ hb0
    refine inv_strictAnti₀ ?_
    simp [zero_lt_iff, hb0]

@[deprecated (since := "2026-07-09")]
alias LinearOrderedCommGroupWithZero.wellFoundedOn_setOf_ge_gt_iff_nonempty_discrete_of_ne_zero :=
  LinearOrderedCommGroupWithZero.wellFoundedOn_setOfPred_ge_gt_iff_nonempty_discrete_of_ne_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ArchimedeanDensely/Variantc4afc08e592438198626d3b38453c11573fa43ebaa92109415d08c7e5aabff5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variantc4afc08e592438198626d3b38453c11573fa43ebaa92109415d08c7e5aabff5b.lean#L452).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae1e95500e6d8ee2f6082fbc22e2ab945ac27a31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
