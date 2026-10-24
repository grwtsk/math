# ae_forall_image_mem_imp_frequently_image_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "afbae1cda770943e280ecd4c3d7c776077f7392a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b06774219d72d2c13b06d61d2e6de0664c0e1fb0603d689740cb0b1ba8f3bce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29accf2d-a14e-689b-7177-b62c962e1f99",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44097b9f-132a-3f2f-51af-8570bc34d589",
  "kind": "theorem",
  "lexical_name": "ae_forall_image_mem_imp_frequently_image_mem",
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
  "slug": "ae-forall-image-mem-imp-frequently-image-mem--ecda438ea1b73ffed727ae8c",
  "source": {
    "blob": "afbae1cda770943e280ecd4c3d7c776077f7392a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 153,
    "path": "GRWTSK/Analysis/MeasureTheory/Conservative/Variant8b06774219d72d2c13b06d61d2e6de0664c0e1fb0603d689740cb0b1ba8f3bce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecda438ea1b73ffed727ae8ca3b97daf12742b89acf41b197cb99a022ac4d0b8",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Conservative/Variant8b06774219d72d2c13b06d61d2e6de0664c0e1fb0603d689740cb0b1ba8f3bce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44097b9f-132a-3f2f-51af-8570bc34d589`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_forall_image_mem_imp_frequently_image_mem (hf : Conservative f μ)
    (hs : MeasurableSet s) : ∀ᵐ x ∂μ, ∀ k, f^[k] x ∈ s → ∃ᶠ n in atTop, f^[n] x ∈ s := by
  refine' ae_all_iff.2 fun k => _
  refine' (hf.ae_mem_imp_frequently_image_mem (hf.measurable.iterate k hs)).mono fun x hx hk => _
  rw [← map_add_atTop_eq_nat k, frequently_map]
  refine' (hx hk).mono fun n hn => _
  rwa [add_comm, iterate_add_apply]
#align measure_theory.conservative.ae_forall_image_mem_imp_frequently_image_mem MeasureTheory.Conservative.ae_forall_image_mem_imp_frequently_image_mem

/-- If `f` is a conservative self-map and `s` is a measurable set of positive measure, then
`μ.ae`-frequently we have `x ∈ s` and `s` returns to `s` under infinitely many iterations of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Conservative/Variant8b06774219d72d2c13b06d61d2e6de0664c0e1fb0603d689740cb0b1ba8f3bce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Conservative/Variant8b06774219d72d2c13b06d61d2e6de0664c0e1fb0603d689740cb0b1ba8f3bce.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afbae1cda770943e280ecd4c3d7c776077f7392a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
