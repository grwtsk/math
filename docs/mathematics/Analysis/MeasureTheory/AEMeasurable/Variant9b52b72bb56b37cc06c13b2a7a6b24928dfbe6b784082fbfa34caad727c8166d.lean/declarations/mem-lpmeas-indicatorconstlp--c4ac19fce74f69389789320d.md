# mem_lpMeas_indicatorConstLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9412e564-203a-cb1b-24f3-0ea4077fb7dd",
  "kind": "theorem",
  "lexical_name": "mem_lpMeas_indicatorConstLp",
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
  "slug": "mem-lpmeas-indicatorconstlp--c4ac19fce74f69389789320d",
  "source": {
    "blob": "f397779b8f3f10c3541ee1f14058988ec8df78a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 121,
    "path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4ac19fce74f69389789320d29547b571a8157d96860ad421fb707ff02c01344",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9412e564-203a-cb1b-24f3-0ea4077fb7dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_lpMeas_indicatorConstLp {m m0 : MeasurableSpace α} (hm : m ≤ m0) {μ : Measure α}
    {s : Set α} (hs : MeasurableSet[m] s) (hμs : μ s ≠ ∞) {c : F} :
    indicatorConstLp p (hm s hs) hμs c ∈ lpMeas F 𝕜 m p μ :=
  ⟨s.indicator fun _ : α => c, (@stronglyMeasurable_const _ _ m _ _).indicator hs,
    indicatorConstLp_coeFn⟩

section CompleteSubspace

/-! ## The subspace `lpMeas` is complete.

We define an `IsometryEquiv` between `lpMeasSubgroup` and the `Lp` space corresponding to the
measure `μ.trim hm`. As a consequence, the completeness of `Lp` implies completeness of
`lpMeasSubgroup` (and `lpMeas`). -/


variable {m m0 : MeasurableSpace α} {μ : Measure α}

/-- If `f` belongs to `lpMeasSubgroup F m p μ`, then the measurable function it is almost
everywhere equal to (given by `AEMeasurable.mk`) belongs to `ℒp` for the measure `μ.trim hm`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variant9b52b72bb56b37cc06c13b2a7a6b24928dfbe6b784082fbfa34caad727c8166d.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f397779b8f3f10c3541ee1f14058988ec8df78a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
