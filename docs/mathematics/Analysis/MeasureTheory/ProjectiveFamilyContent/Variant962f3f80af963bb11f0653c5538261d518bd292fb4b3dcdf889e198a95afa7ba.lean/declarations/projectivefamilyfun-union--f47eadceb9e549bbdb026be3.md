# projectiveFamilyFun_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d198a0f5f15ae48194826ef7d0bcd41b146bcb2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3852240-412b-6885-c1a5-e261ad1e21e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2aea603-8680-784c-7bfd-95af5cb544d5",
  "kind": "lemma",
  "lexical_name": "projectiveFamilyFun_union",
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
  "slug": "projectivefamilyfun-union--f47eadceb9e549bbdb026be3",
  "source": {
    "blob": "d198a0f5f15ae48194826ef7d0bcd41b146bcb2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 84,
    "path": "GRWTSK/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f47eadceb9e549bbdb026be34f89b65d00617256699d46c34a0d7beedf0199db",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2aea603-8680-784c-7bfd-95af5cb544d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma projectiveFamilyFun_union (hP : IsProjectiveMeasureFamily P)
    (hs : s ∈ measurableCylinders α) (ht : t ∈ measurableCylinders α) (hst : Disjoint s t) :
    projectiveFamilyFun P (s ∪ t) = projectiveFamilyFun P s + projectiveFamilyFun P t := by
  obtain ⟨I, S, hS, hs_eq⟩ := (mem_measurableCylinders _).1 hs
  obtain ⟨J, T, hT, ht_eq⟩ := (mem_measurableCylinders _).1 ht
  classical
  let S' := restrict₂ (subset_union_left (s₂ := J)) ⁻¹' S
  let T' := restrict₂ (subset_union_right (s₁ := I)) ⁻¹' T
  have hS' : MeasurableSet S' := measurable_restrict₂ _ hS
  have hT' : MeasurableSet T' := measurable_restrict₂ _ hT
  have h_eq1 : s = cylinder (I ∪ J) S' := by rw [hs_eq]; exact cylinder_eq_cylinder_union I S J
  have h_eq2 : t = cylinder (I ∪ J) T' := by rw [ht_eq]; exact cylinder_eq_cylinder_union J T I
  have h_eq3 : s ∪ t = cylinder (I ∪ J) (S' ∪ T') := by
    rw [hs_eq, ht_eq]; exact union_cylinder _ _ _ _
  rw [projectiveFamilyFun_congr hP hs h_eq1 hS', projectiveFamilyFun_congr hP ht h_eq2 hT',
    projectiveFamilyFun_congr hP (union_mem_measurableCylinders hs ht) h_eq3 (hS'.union hT')]
  cases isEmpty_or_nonempty (Π i, α i) with
  | inl h => simp [hP.eq_zero_of_isEmpty]
  | inr h =>
    rw [measure_union _ hT']
    rwa [hs_eq, ht_eq, disjoint_cylinder_iff] at hst

end ProjectiveFamilyFun

section ProjectiveFamilyContent

/-- For `P` a projective family of measures, we define an additive content on the measurable
cylinders, by setting `projectiveFamilyContent s = P I S` for `s = cylinder I S`, where `I` is
a finite set of indices and `S` is a measurable set in `Π i : I, α i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d198a0f5f15ae48194826ef7d0bcd41b146bcb2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
