# exists_sum_smul_dirac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54ef769f-9768-2f6c-f713-3226eec66d2d",
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
  "slug": "exists-sum-smul-dirac--60b197a27c146da7adaa84c7",
  "source": {
    "blob": "a714226af6c6e77fab6ce61b204e2c489f107d6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 106,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant087b1d35c2c94f50c99eafea94c5ae22e41f28496bb8e521ac07f55b3546a779.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60b197a27c146da7adaa84c70fdb33da14ce18f47353c91d8915ab5bd2a40c79",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant087b1d35c2c94f50c99eafea94c5ae22e41f28496bb8e521ac07f55b3546a779.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54ef769f-9768-2f6c-f713-3226eec66d2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–144.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant087b1d35c2c94f50c99eafea94c5ae22e41f28496bb8e521ac07f55b3546a779.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant087b1d35c2c94f50c99eafea94c5ae22e41f28496bb8e521ac07f55b3546a779.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a714226af6c6e77fab6ce61b204e2c489f107d6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
