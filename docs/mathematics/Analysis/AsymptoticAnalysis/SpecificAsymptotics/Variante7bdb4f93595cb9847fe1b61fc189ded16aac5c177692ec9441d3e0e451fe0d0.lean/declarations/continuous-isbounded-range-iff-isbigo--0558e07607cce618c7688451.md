# Continuous.isBounded_range_iff_isBigO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a487c618-1fc1-2f4c-9ccb-30cae389c94b",
  "kind": "theorem",
  "lexical_name": "Continuous.isBounded_range_iff_isBigO",
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
  "slug": "continuous-isbounded-range-iff-isbigo--0558e07607cce618c7688451",
  "source": {
    "blob": "96b0a12eda2bb2e1500eecbbe61263b7a99e7fcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 242,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variante7bdb4f93595cb9847fe1b61fc189ded16aac5c177692ec9441d3e0e451fe0d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0558e07607cce618c7688451c0be2be333f926dfd3bcd8ecb836f0e5804b2d2d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variante7bdb4f93595cb9847fe1b61fc189ded16aac5c177692ec9441d3e0e451fe0d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a487c618-1fc1-2f4c-9ccb-30cae389c94b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Continuous.isBounded_range_iff_isBigO {f : D → E} (hf : Continuous f) :
    IsBounded (range f) ↔ f =O[cocompact D] (1 : D → ℝ) := by
  constructor <;> intro h
  · rw [isBounded_iff_forall_norm_le] at h
    obtain ⟨c, hc⟩ := h
    simp only [Set.mem_range, forall_exists_index, forall_apply_eq_imp_iff] at hc
    rw [isBigO_iff]
    use c
    apply Eventually.of_forall
    simpa using hc
  · simp_rw [isBigO_iff, Filter.Eventually, Filter.mem_cocompact] at h
    simp only [Pi.one_apply, norm_one, mul_one] at h
    obtain ⟨c, t, hcompact, h⟩ := h
    rw [← Set.image_union_image_compl_eq_range (s := t)]
    apply IsBounded.union
    · apply (IsCompact.image hcompact hf).isBounded
    · rw [isBounded_iff_forall_norm_le]
      refine ⟨c, fun x hx ↦ ?_⟩
      rw [Set.mem_image] at hx
      obtain ⟨y, hy, rfl⟩ := hx
      simpa using mem_of_mem_of_subset hy h

/--
A continuous function `f` on an unbounded linear order with compact intervals has bounded range if
and only if it is `O(1)` at both `atTop` and `atBot`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variante7bdb4f93595cb9847fe1b61fc189ded16aac5c177692ec9441d3e0e451fe0d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variante7bdb4f93595cb9847fe1b61fc189ded16aac5c177692ec9441d3e0e451fe0d0.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96b0a12eda2bb2e1500eecbbe61263b7a99e7fcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
