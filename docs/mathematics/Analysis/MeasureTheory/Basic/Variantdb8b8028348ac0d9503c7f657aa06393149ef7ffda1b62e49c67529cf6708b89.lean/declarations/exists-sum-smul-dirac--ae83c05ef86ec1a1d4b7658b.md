# exists_sum_smul_dirac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3431d6976e3a76bd141f5be517d8eb2fdc79436d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09e0787a-f20d-5b47-4ab8-540b61032db9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f47bc4ac-10e4-6b55-4dcc-a7c97eca3a47",
  "kind": "lemma",
  "lexical_name": "exists_sum_smul_dirac",
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
  "slug": "exists-sum-smul-dirac--ae83c05ef86ec1a1d4b7658b",
  "source": {
    "blob": "3431d6976e3a76bd141f5be517d8eb2fdc79436d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 98,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae83c05ef86ec1a1d4b7658bc28ff79de588d76e8a341678c6c447451042c479",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f47bc4ac-10e4-6b55-4dcc-a7c97eca3a47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_sum_smul_dirac [Countable α] (μ : Measure α) :
    ∃ s : Set α, μ = Measure.sum (fun x : s ↦ μ (measurableAtom x) • dirac (x : α)) := by
  let measurableAtoms := measurableAtom '' (Set.univ : Set α)
  have h_nonempty (s : measurableAtoms) : Set.Nonempty s.1 := by
    obtain ⟨y, _, hy⟩ := s.2
    rw [← hy]
    exact ⟨y, mem_measurableAtom_self y⟩
  let points : measurableAtoms → α := fun s ↦ (h_nonempty s).some
  have h_points_mem (s : measurableAtoms) : points s ∈ s.1 := (h_nonempty s).some_mem
  refine ⟨Set.range points, ext_of_measurableAtoms fun x ↦ ?_⟩
  rw [sum_apply _ (MeasurableSet.measurableAtom_of_countable x)]
  simp only [Measure.smul_apply, smul_eq_mul]
  simp_rw [dirac_apply' _ (MeasurableSet.measurableAtom_of_countable x)]
  rw [tsum_eq_single ⟨points ⟨measurableAtom x, by simp [measurableAtoms]⟩, by simp⟩]
  · rw [indicator_of_mem]
    · simp only [Pi.one_apply, mul_one]
      congr 1
      refine (measurableAtom_eq_of_mem ?_).symm
      convert! h_points_mem _
      simp
    · convert! h_points_mem _
      simp
  · simp only [ne_eq, mul_eq_zero, indicator_apply_eq_zero, Pi.one_apply, one_ne_zero, imp_false,
      Subtype.forall, Set.mem_range, Subtype.exists, Subtype.mk.injEq, forall_exists_index]
    refine fun y s hs hsy hyx ↦ .inr fun hyx' ↦ hyx ?_
    rw [← hsy]
    congr
    have h1 : measurableAtom y = measurableAtom x := measurableAtom_eq_of_mem hyx'
    have h2 : measurableAtom y = s := by
      specialize h_points_mem ⟨s, hs⟩
      obtain ⟨z, _, hz⟩ := hs
      simp only at h_points_mem
      rw [← hz, ← hsy]
      refine measurableAtom_eq_of_mem ?_
      convert! h_points_mem
    rw [← h2, h1]

/-- Given that `α` is a countable, measurable space with all singleton sets measurable,
write the measure of a set `s` as the sum of the measure of `{x}` for all `x ∈ s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3431d6976e3a76bd141f5be517d8eb2fdc79436d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
