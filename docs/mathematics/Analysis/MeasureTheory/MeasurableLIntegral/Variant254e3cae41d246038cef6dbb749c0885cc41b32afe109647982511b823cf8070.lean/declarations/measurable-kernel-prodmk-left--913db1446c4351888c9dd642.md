# measurable_kernel_prodMk_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f9d3441ed4976bac7b264c0834919a77b694285",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24da8764-43cf-e180-838b-980f78c41fda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a8010e2-23e4-6fac-57bd-e5ca3f1fa20e",
  "kind": "theorem",
  "lexical_name": "measurable_kernel_prodMk_left",
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
  "slug": "measurable-kernel-prodmk-left--913db1446c4351888c9dd642",
  "source": {
    "blob": "7f9d3441ed4976bac7b264c0834919a77b694285",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 77,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:913db1446c4351888c9dd6429ef124c00643f6813953ff7bb904bf7e8bd89230",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a8010e2-23e4-6fac-57bd-e5ca3f1fa20e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurable_kernel_prodMk_left [IsSFiniteKernel κ] {t : Set (α × β)}
    (ht : MeasurableSet t) : Measurable fun a => κ a (Prod.mk a ⁻¹' t) := by
  rw [← Kernel.kernel_sum_seq κ]
  have (a) : Kernel.sum (Kernel.seq κ) a (Prod.mk a ⁻¹' t) =
      ∑' n, Kernel.seq κ n a (Prod.mk a ⁻¹' t) :=
    Kernel.sum_apply' _ _ (measurable_prodMk_left ht)
  simp_rw [this]
  refine Measurable.ennreal_tsum fun n => ?_
  exact measurable_kernel_prodMk_left_of_finite ht inferInstance

@[deprecated (since := "2025-03-05")]
alias measurable_kernel_prod_mk_left := measurable_kernel_prodMk_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f9d3441ed4976bac7b264c0834919a77b694285` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
