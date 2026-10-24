# deriv2_qaryEntropy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "74f76bc67e50141bcef64b117b4f37454442e791",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 332,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5fd1fa49ed8477db87313214d7e7fc92fbb78c1c652463dc3e493cb3cbdaa0c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23357732-f2df-84f6-4078-124b11c92104",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0aa10eee-167d-09d4-72e7-d02ae2b53d91",
  "kind": "lemma",
  "lexical_name": "deriv2_qaryEntropy",
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
  "slug": "deriv2-qaryentropy--98e4231c6907d4130ad18614",
  "source": {
    "blob": "74f76bc67e50141bcef64b117b4f37454442e791",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 332,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantd5fd1fa49ed8477db87313214d7e7fc92fbb78c1c652463dc3e493cb3cbdaa0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98e4231c6907d4130ad18614106d7718069b0faece77e05d170d4b1b582a313c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantd5fd1fa49ed8477db87313214d7e7fc92fbb78c1c652463dc3e493cb3cbdaa0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0aa10eee-167d-09d4-72e7-d02ae2b53d91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma deriv2_qaryEntropy :
    deriv^[2] (qaryEntropy q) p = -1 / (p * (1 - p)) := by
  simp only [Function.iterate_succ, Function.iterate_zero, Function.id_comp, Function.comp_apply]
  by_cases is_x_where_nondiff : p ≠ 0 ∧ p ≠ 1  -- normal case
  · obtain ⟨xne0, xne1⟩ := is_x_where_nondiff
    suffices ∀ᶠ y in (𝓝 p),
        deriv (fun p ↦ (qaryEntropy q) p) y = log (q - 1) + log (1 - y) - log y by
      refine (Filter.EventuallyEq.deriv_eq this).trans ?_
      rw [deriv_fun_sub ?_ (differentiableAt_log xne0)]
      · rw [deriv.log differentiableAt_fun_id xne0]
        simp only [deriv_id'', one_div]
        · have {q : ℝ} (p : ℝ) : DifferentiableAt ℝ (fun p => q - p) p := by fun_prop
          simp [field, sub_ne_zero_of_ne xne1.symm, this]
          ring
      · apply DifferentiableAt.add
        · simp only [differentiableAt_const]
        exact DifferentiableAt.log (by fun_prop) (sub_ne_zero.mpr xne1.symm)
    filter_upwards [eventually_ne_nhds xne0, eventually_ne_nhds xne1]
      with y xne0 h2 using deriv_qaryEntropy xne0 h2
  -- Pathological case where we use junk value (because function not differentiable)
  · have : p = 0 ∨ p = 1 := Decidable.or_iff_not_not_and_not.mpr is_x_where_nondiff
    rw [deriv_zero_of_not_differentiableAt]
    · simp_all only [ne_eq, not_and, Decidable.not_not]
      cases this <;>
        simp_all only [mul_zero, one_ne_zero, zero_ne_one, sub_zero, mul_one, div_zero, sub_self]
    · intro h
      have contAt := h.continuousAt
      cases this <;>
        simp_all [not_continuousAt_deriv_qaryEntropy_zero, not_continuousAt_deriv_qaryEntropy_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantd5fd1fa49ed8477db87313214d7e7fc92fbb78c1c652463dc3e493cb3cbdaa0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantd5fd1fa49ed8477db87313214d7e7fc92fbb78c1c652463dc3e493cb3cbdaa0c.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74f76bc67e50141bcef64b117b4f37454442e791` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
