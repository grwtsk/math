# BijOn.exists_extend_of_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97f01211-238d-e275-1ce9-3bf71bf6fab8",
  "kind": "theorem",
  "lexical_name": "BijOn.exists_extend_of_subset",
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
  "slug": "bijon-exists-extend-of-subset--12ec34932767cd78543caeac",
  "source": {
    "blob": "46e2a10e5d0830a596ce203c699da765e9d73425",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1039,
    "line": 1022,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variant13b249ea517763860721e5fe0fd6daa092f77dcfb888908cb510c6437a2868dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12ec34932767cd78543caeac9f0cb7783bc020c3f59427a7b6918ef088caff90",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variant13b249ea517763860721e5fe0fd6daa092f77dcfb888908cb510c6437a2868dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97f01211-238d-e275-1ce9-3bf71bf6fab8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1022–1039.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BijOn.exists_extend_of_subset {t' : Set β} (h : BijOn f s t) (hss₁ : s ⊆ s₁) (htt' : t ⊆ t')
    (ht' : SurjOn f s₁ t') : ∃ s', s ⊆ s' ∧ s' ⊆ s₁ ∧ Set.BijOn f s' t' := by
  obtain ⟨r, hrss, hbij⟩ := exists_subset_bijOn ((s₁ ∩ f ⁻¹' t') \ f ⁻¹' t) f
  rw [image_diff_preimage, image_inter_preimage] at hbij
  refine ⟨s ∪ r, subset_union_left, ?_, ?_, ?_, fun y hyt' ↦ ?_⟩
  · exact union_subset hss₁ <| hrss.trans <| diff_subset.trans inter_subset_left
  · rw [mapsTo', image_union, hbij.image_eq, h.image_eq, union_subset_iff]
    exact ⟨htt', diff_subset.trans inter_subset_right⟩
  · rw [injOn_union, and_iff_right h.injOn, and_iff_right hbij.injOn]
    · refine fun x hxs y hyr hxy ↦ (hrss hyr).2 ?_
      rw [← h.image_eq]
      exact ⟨x, hxs, hxy⟩
    exact (subset_diff.1 hrss).2.symm.mono_left h.mapsTo
  rw [image_union, h.image_eq, hbij.image_eq, union_diff_self]
  exact .inr ⟨ht' hyt', hyt'⟩

/-- If `f` maps `s` bijectively to `t`, and `t'` is a superset of `t` contained in the range of `f`,
then `f` maps some superset of `s` bijectively to `t'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variant13b249ea517763860721e5fe0fd6daa092f77dcfb888908cb510c6437a2868dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variant13b249ea517763860721e5fe0fd6daa092f77dcfb888908cb510c6437a2868dd.lean#L1022).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46e2a10e5d0830a596ce203c699da765e9d73425` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
