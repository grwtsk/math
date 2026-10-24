# holley

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "738ca974415fdd82f0c148cb81e348db01ad47f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 352,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f600f9107a0615157912352a0cc410850227717c7127470cf8fade52b07f69a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50143049-e28b-5e7f-174d-23c69dc6f649",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4a4406d-e599-79ca-440b-54369d6fdac0",
  "kind": "lemma",
  "lexical_name": "holley",
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
  "slug": "holley--ded7dd5aa0fd64e522c81c12",
  "source": {
    "blob": "738ca974415fdd82f0c148cb81e348db01ad47f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 352,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FourFunctions/Variantf600f9107a0615157912352a0cc410850227717c7127470cf8fade52b07f69a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ded7dd5aa0fd64e522c81c12b1144d3e044094e0763d7d0016450c7da06e06f8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FourFunctions/Variantf600f9107a0615157912352a0cc410850227717c7127470cf8fade52b07f69a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4a4406d-e599-79ca-440b-54369d6fdac0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma holley (hμ₀ : 0 ≤ μ) (hf : 0 ≤ f) (hg : 0 ≤ g) (hμ : Monotone μ)
    (hfg : ∑ a, f a = ∑ a, g a) (h : ∀ a b, f a * g b ≤ f (a ⊓ b) * g (a ⊔ b)) :
    ∑ a, μ a * f a ≤ ∑ a, μ a * g a := by
  classical
  obtain rfl | hf := hf.eq_or_lt
  · simp only [Pi.zero_apply, sum_const_zero, eq_comm, Fintype.sum_eq_zero_iff_of_nonneg hg] at hfg
    simp [hfg]
  obtain rfl | hg := hg.eq_or_lt
  · simp only [Pi.zero_apply, sum_const_zero, Fintype.sum_eq_zero_iff_of_nonneg hf.le] at hfg
    simp [hfg]
  have := four_functions_theorem g (μ * f) f (μ * g) hg.le (mul_nonneg hμ₀ hf.le) hf.le
    (mul_nonneg hμ₀ hg.le) (fun a b ↦ ?_) univ univ
  · simpa [hfg, sum_pos hg] using this
  · simp_rw [Pi.mul_apply, mul_left_comm _ (μ _), mul_comm (g _)]
    rw [sup_comm, inf_comm]
    exact mul_le_mul (hμ le_sup_left) (h _ _) (mul_nonneg (hf.le _) <| hg.le _) <| hμ₀ _

/-- The **Fortuin-Kasteleyn-Ginibre Inequality**. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FourFunctions/Variantf600f9107a0615157912352a0cc410850227717c7127470cf8fade52b07f69a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FourFunctions/Variantf600f9107a0615157912352a0cc410850227717c7127470cf8fade52b07f69a0.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `738ca974415fdd82f0c148cb81e348db01ad47f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
