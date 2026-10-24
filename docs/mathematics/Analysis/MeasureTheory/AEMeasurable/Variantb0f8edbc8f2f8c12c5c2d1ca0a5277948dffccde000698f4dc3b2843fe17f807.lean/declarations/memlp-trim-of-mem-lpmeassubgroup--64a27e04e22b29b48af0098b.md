# memLp_trim_of_mem_lpMeasSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27cdf5d8f0d46b69f3378b6600cda1504f0ee976",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16142f2e-e0a8-b8f0-0bdb-d50926c01a66",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:978c99fc-8194-a4fc-7b3f-3b28c4eaa076",
  "kind": "theorem",
  "lexical_name": "memLp_trim_of_mem_lpMeasSubgroup",
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
  "slug": "memlp-trim-of-mem-lpmeassubgroup--64a27e04e22b29b48af0098b",
  "source": {
    "blob": "27cdf5d8f0d46b69f3378b6600cda1504f0ee976",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 132,
    "path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64a27e04e22b29b48af0098b0f9e7bdab2528060477b8cf9ec724458a69d68a8",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:978c99fc-8194-a4fc-7b3f-3b28c4eaa076`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem memLp_trim_of_mem_lpMeasSubgroup (hm : m ≤ m0) (f : Lp F p μ)
    (hf_meas : f ∈ lpMeasSubgroup F m p μ) :
    MemLp (mem_lpMeasSubgroup_iff_aestronglyMeasurable.mp hf_meas).choose p (μ.trim hm) := by
  have hf : AEStronglyMeasurable[m] f μ :=
    mem_lpMeasSubgroup_iff_aestronglyMeasurable.mp hf_meas
  change MemLp (hf.mk f) p (μ.trim hm)
  rw [memLp_iff, eLpNorm_trim hm hf.stronglyMeasurable_mk]
  have heq : eLpNorm (hf.mk f) p μ = eLpNorm (f : α → F) p μ :=
    eLpNorm_congr_ae hf.ae_eq_mk.symm
  rw [heq]
  exact Lp.eLpNorm_lt_top f

/-- If `f` belongs to `Lp` for the measure `μ.trim hm`, then it belongs to the subgroup
`lpMeasSubgroup F m p μ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27cdf5d8f0d46b69f3378b6600cda1504f0ee976` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
