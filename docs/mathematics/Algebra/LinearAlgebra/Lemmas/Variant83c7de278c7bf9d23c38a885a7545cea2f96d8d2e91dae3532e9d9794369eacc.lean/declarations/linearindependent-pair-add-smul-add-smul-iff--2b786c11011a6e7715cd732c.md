# LinearIndependent.pair_add_smul_add_smul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f4b39fb-62d1-54a6-392d-1272faf837af",
  "kind": "lemma",
  "lexical_name": "LinearIndependent.pair_add_smul_add_smul_iff",
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
  "slug": "linearindependent-pair-add-smul-add-smul-iff--2b786c11011a6e7715cd732c",
  "source": {
    "blob": "d4b7c89d186030cf8b9d7e23f901e9ce0bd0fee4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 324,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant83c7de278c7bf9d23c38a885a7545cea2f96d8d2e91dae3532e9d9794369eacc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b786c11011a6e7715cd732c691a3bd4d329d6bf8c8ff082ef12772fe9e1b570",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant83c7de278c7bf9d23c38a885a7545cea2f96d8d2e91dae3532e9d9794369eacc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f4b39fb-62d1-54a6-392d-1272faf837af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma LinearIndependent.pair_add_smul_add_smul_iff [Nontrivial R] :
    LinearIndependent R ![a • x + b • y, c • x + d • y] ↔
      LinearIndependent R ![x, y] ∧ a * d ≠ b * c := by
  rcases eq_or_ne (a * d) (b * c) with h | h
  · suffices ¬ LinearIndependent R ![a • x + b • y, c • x + d • y] by simpa [h]
    rw [pair_iff]
    push_neg
    by_cases hbd : b = 0 ∧ d = 0
    · simp only [hbd.1, hbd.2, zero_smul, add_zero]
      by_cases hac : a = 0 ∧ c = 0; · exact ⟨1, 0, by simp [hac.1, hac.2], by simp⟩
      refine ⟨c • 1, -a • 1, ?_, by aesop⟩
      simp only [smul_assoc, one_smul, neg_smul]
      module
    refine ⟨d • 1, -b • 1, ?_, by contrapose! hbd; aesop⟩
    simp only [smul_add, smul_assoc, one_smul, smul_smul, mul_comm d, h]
    module
  refine ⟨fun h' ↦ ⟨?_, h⟩, fun ⟨h₁, h₂⟩ ↦ pair_add_smul_add_smul_iff_aux _ _ _ _ h₂ h₁⟩
  suffices LinearIndependent R ![(a * d - b * c) • x, (a * d - b * c) • y] by
    rwa [pair_smul_iff (sub_ne_zero_of_ne h)] at this
  convert pair_add_smul_add_smul_iff_aux d (-b) (-c) a (by simpa [mul_comm d a]) h' using 1
  ext i; fin_cases i <;> simp <;> module

@[deprecated (since := "2025-04-15")]
alias LinearIndependent.linear_combination_pair_of_det_ne_zero :=
  LinearIndependent.pair_add_smul_add_smul_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant83c7de278c7bf9d23c38a885a7545cea2f96d8d2e91dae3532e9d9794369eacc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant83c7de278c7bf9d23c38a885a7545cea2f96d8d2e91dae3532e9d9794369eacc.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4b7c89d186030cf8b9d7e23f901e9ce0bd0fee4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
