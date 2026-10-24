# LinearIndependent.pair_add_smul_add_smul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbb84669-da34-255a-2c3a-416d47e30f06",
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
  "slug": "linearindependent-pair-add-smul-add-smul-iff--0660c4f39e379911748542ff",
  "source": {
    "blob": "04f8474d8c2220a1d64a22e672421f322115a2ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 316,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant26d22d1d93cdad7e4d1bb7237858bc8c5bb67962670d166426bc5fc0bffac0c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0660c4f39e379911748542ff3e3ea3214b2c5f6438f5ed414c8988ee936d57b6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant26d22d1d93cdad7e4d1bb7237858bc8c5bb67962670d166426bc5fc0bffac0c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbb84669-da34-255a-2c3a-416d47e30f06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–341.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant26d22d1d93cdad7e4d1bb7237858bc8c5bb67962670d166426bc5fc0bffac0c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant26d22d1d93cdad7e4d1bb7237858bc8c5bb67962670d166426bc5fc0bffac0c2.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04f8474d8c2220a1d64a22e672421f322115a2ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
