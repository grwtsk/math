# plainOffAt_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b98cb9bb-26fd-2f03-72fb-edd53415eb82",
  "kind": "theorem",
  "lexical_name": "plainOffAt_hasDerivAt",
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
  "slug": "plainoffat-hasderivat--6d514877a1e126dea4f1449e",
  "source": {
    "blob": "40f91016377b90ced05186d69ecec134f473855c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 138,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d514877a1e126dea4f1449eb2abf84b5bd0c7fc50d25cfe3a9d22fc0bbf0977",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b98cb9bb-26fd-2f03-72fb-edd53415eb82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem plainOffAt_hasDerivAt {A : ℝ} (hA : 0 < A) (U N : ℕ) :
    HasDerivAt (fun B ↦ plainOffAt B U N) (plainOffDerivativeAt A U N) A := by
  have hr : HasDerivAt (fun B ↦ rectangle (Finset.Ioc U N) (sourceKernel B) (fun _ ↦ 1))
      (rectangle (Finset.Ioc U N) (sourceKernelScaleDerivative A) (fun _ ↦ 1)) A := by
    apply HasDerivAt.fun_sum
    intro m _
    apply HasDerivAt.fun_sum
    intro n _
    exact (sourceKernel_hasDerivAt hA m n).mul_const 1
  have hd : HasDerivAt (fun B ↦ diagonal (Finset.Ioc U N) (sourceKernel B) (fun _ ↦ 1))
      (diagonal (Finset.Ioc U N) (sourceKernelScaleDerivative A) (fun _ ↦ 1)) A := by
    apply HasDerivAt.fun_sum
    intro m _
    exact (sourceKernel_hasDerivAt hA m m).mul_const 1
  exact hr.sub hd

/-- Local scale C¹ of the same full off-diagonal finite inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40f91016377b90ced05186d69ecec134f473855c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
