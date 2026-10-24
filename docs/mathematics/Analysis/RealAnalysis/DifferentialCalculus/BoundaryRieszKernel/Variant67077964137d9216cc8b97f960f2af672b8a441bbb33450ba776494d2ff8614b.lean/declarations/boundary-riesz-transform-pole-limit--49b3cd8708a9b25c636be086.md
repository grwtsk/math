# boundary_riesz_transform_pole_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1b1788c-ce93-4765-b174-a2f3b9be50a4",
  "kind": "theorem",
  "lexical_name": "boundary_riesz_transform_pole_limit",
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
  "slug": "boundary-riesz-transform-pole-limit--49b3cd8708a9b25c636be086",
  "source": {
    "blob": "6ce2594688d30ff7d666c2de4b68b34cb8fdac39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 219,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49b3cd8708a9b25c636be08638c03fd1ddabcc3f72a9acb5d00403715f5c16dc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1b1788c-ce93-4765-b174-a2f3b9be50a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_riesz_transform_pole_limit (A : ℝ) (hA : 1 ≤ A) :
    Tendsto (fun s : ℂ ↦ s ^ 18 * boundaryRieszTransform A s)
      (nhdsWithin 0 ({0}ᶜ))
      (nhds ((101606400 : ℂ) / ((sourceNormalization A : ℂ) * (A : ℂ) ^ 8))) := by
  have h : Tendsto (boundaryRieszNumerator A) (nhdsWithin 0 ({0}ᶜ))
      (nhds (boundaryRieszNumerator A 0)) :=
    (boundary_riesz_numerator_continuous A).continuousAt.tendsto.mono_left
      nhdsWithin_le_nhds
  rw [boundary_riesz_numerator_at_zero] at h
  apply h.congr'
  filter_upwards [self_mem_nhdsWithin] with s hs
  have hsn : s ≠ 0 := by simpa using hs
  exact (boundary_riesz_transform_pole_normalization A hA s hsn).symm

/-- The independently defined rational transform is meromorphic at every complex parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant67077964137d9216cc8b97f960f2af672b8a441bbb33450ba776494d2ff8614b.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ce2594688d30ff7d666c2de4b68b34cb8fdac39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
