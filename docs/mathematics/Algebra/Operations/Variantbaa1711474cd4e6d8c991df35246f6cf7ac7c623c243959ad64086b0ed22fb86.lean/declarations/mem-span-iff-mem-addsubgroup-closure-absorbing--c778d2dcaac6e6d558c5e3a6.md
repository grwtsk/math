# mem_span_iff_mem_addSubgroup_closure_absorbing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84e569437c694cdd6fca619c4cf9ed1739f8c9b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/baa1711474cd4e6d8c991df35246f6cf7ac7c623c243959ad64086b0ed22fb86.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ee93b1e-88ab-1d31-6d0e-f5d93d84f173",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4ff49db-6d61-e494-c48f-7a2596a11fd0",
  "kind": "lemma",
  "lexical_name": "mem_span_iff_mem_addSubgroup_closure_absorbing",
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
  "slug": "mem-span-iff-mem-addsubgroup-closure-absorbing--c778d2dcaac6e6d558c5e3a6",
  "source": {
    "blob": "84e569437c694cdd6fca619c4cf9ed1739f8c9b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 173,
    "path": "GRWTSK/Algebra/Operations/Variantbaa1711474cd4e6d8c991df35246f6cf7ac7c623c243959ad64086b0ed22fb86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c778d2dcaac6e6d558c5e3a63e31006604f7b78b5a66494dfc7390cb38ea92fd",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variantbaa1711474cd4e6d8c991df35246f6cf7ac7c623c243959ad64086b0ed22fb86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4ff49db-6d61-e494-c48f-7a2596a11fd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_span_iff_mem_addSubgroup_closure_absorbing {s : Set R}
    (h_left : ∀ x y, y ∈ s → x * y ∈ s) (h_right : ∀ y x, y ∈ s → y * x ∈ s) {z : R} :
    z ∈ span s ↔ z ∈ closure s := by
  have h_left' {x y} (hy : y ∈ closure s) : x * y ∈ closure s := by
    have := (AddMonoidHom.mulLeft x).map_closure s ▸ mem_map_of_mem _ hy
    refine closure_mono ?_ this
    rintro - ⟨y, hy, rfl⟩
    exact h_left x y hy
  have h_right' {y x} (hy : y ∈ closure s) : y * x ∈ closure s := by
    have := (AddMonoidHom.mulRight x).map_closure s ▸ mem_map_of_mem _ hy
    refine closure_mono ?_ this
    rintro - ⟨y, hy, rfl⟩
    exact h_right y x hy
  let I : TwoSidedIdeal R := .mk' (closure s) (AddSubgroup.zero_mem _)
    (AddSubgroup.add_mem _) (AddSubgroup.neg_mem _) h_left' h_right'
  suffices z ∈ span s ↔ z ∈ I by simpa only [I, mem_mk', SetLike.mem_coe]
  rw [mem_span_iff]
  -- Suppose that for every ideal `J` with `s ⊆ J`, then `z ∈ J`. Apply this to `I` to get `z ∈ I`.
  refine ⟨fun h ↦ h I fun x hx ↦ ?mem_closure_of_forall, fun hz J hJ ↦ ?mem_ideal_of_subset⟩
  case mem_closure_of_forall => simpa only [I, SetLike.mem_coe, mem_mk'] using subset_closure hx
  /- Conversely, suppose that `z ∈ I` and that `J` is any ideal containing `s`. Then by the
  induction principle for `AddSubgroup`, we must also have `z ∈ J`. -/
  case mem_ideal_of_subset =>
    simp only [I, SetLike.mem_coe, mem_mk'] at hz
    induction hz using closure_induction with
    | mem x hx => exact hJ hx
    | one => exact zero_mem _
    | mul x y _ _ hx hy => exact J.add_mem hx hy
    | inv x _ hx => exact J.neg_mem hx

open Pointwise Set

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variantbaa1711474cd4e6d8c991df35246f6cf7ac7c623c243959ad64086b0ed22fb86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variantbaa1711474cd4e6d8c991df35246f6cf7ac7c623c243959ad64086b0ed22fb86.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84e569437c694cdd6fca619c4cf9ed1739f8c9b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
