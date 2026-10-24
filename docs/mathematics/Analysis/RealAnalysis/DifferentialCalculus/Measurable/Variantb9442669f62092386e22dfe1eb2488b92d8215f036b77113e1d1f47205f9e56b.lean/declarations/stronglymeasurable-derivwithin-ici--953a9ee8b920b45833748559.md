# stronglyMeasurable_derivWithin_Ici

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9cf086bb-add9-7589-17b5-790fda66b5c5",
  "kind": "theorem",
  "lexical_name": "stronglyMeasurable_derivWithin_Ici",
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
  "slug": "stronglymeasurable-derivwithin-ici--953a9ee8b920b45833748559",
  "source": {
    "blob": "ce9cb930538ae370bc57e7e93aada8057e5ba0e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 748,
    "line": 729,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantb9442669f62092386e22dfe1eb2488b92d8215f036b77113e1d1f47205f9e56b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:953a9ee8b920b45833748559b86ccaf88b8715fd1dc118bf04b05f8cddc4b6d2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantb9442669f62092386e22dfe1eb2488b92d8215f036b77113e1d1f47205f9e56b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cf086bb-add9-7589-17b5-790fda66b5c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 729–748.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stronglyMeasurable_derivWithin_Ici :
    StronglyMeasurable (fun x ↦ derivWithin f (Ici x) x) := by
  borelize F
  apply stronglyMeasurable_iff_measurable_separable.2 ⟨measurable_derivWithin_Ici f, ?_⟩
  obtain ⟨t, t_count, ht⟩ : ∃ t : Set ℝ, t.Countable ∧ Dense t := exists_countable_dense ℝ
  suffices H : range (fun x ↦ derivWithin f (Ici x) x) ⊆ closure (Submodule.span ℝ (f '' t)) from
    IsSeparable.mono (t_count.image f).isSeparable.span.closure H
  rintro - ⟨x, rfl⟩
  suffices H' : range (fun y ↦ derivWithin f (Ici x) y) ⊆ closure (Submodule.span ℝ (f '' t)) from
    H' (mem_range_self _)
  apply range_derivWithin_subset_closure_span_image
  calc Ici x
    = closure (Ioi x ∩ closure t) := by simp [dense_iff_closure_eq.1 ht]
  _ ⊆ closure (closure (Ioi x ∩ t)) := by
      apply closure_mono
      simpa [inter_comm] using (isOpen_Ioi (a := x)).closure_inter (s := t)
  _ ⊆ closure (Ici x ∩ t) := by
      rw [closure_closure]
      exact closure_mono (inter_subset_inter_left _ Ioi_subset_Ici_self)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantb9442669f62092386e22dfe1eb2488b92d8215f036b77113e1d1f47205f9e56b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantb9442669f62092386e22dfe1eb2488b92d8215f036b77113e1d1f47205f9e56b.lean#L729).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce9cb930538ae370bc57e7e93aada8057e5ba0e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
