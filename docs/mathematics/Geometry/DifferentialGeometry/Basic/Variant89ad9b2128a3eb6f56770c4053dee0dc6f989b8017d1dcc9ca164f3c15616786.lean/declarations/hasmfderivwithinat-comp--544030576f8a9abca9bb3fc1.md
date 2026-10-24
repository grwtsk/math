# HasMFDerivWithinAt.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64e529e1-c11e-3c81-e144-66bbe7e2d50a",
  "kind": "theorem",
  "lexical_name": "HasMFDerivWithinAt.comp",
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
  "slug": "hasmfderivwithinat-comp--544030576f8a9abca9bb3fc1",
  "source": {
    "blob": "68a6306e02e35b1c57668a66531828346e868c4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1154,
    "line": 1128,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant89ad9b2128a3eb6f56770c4053dee0dc6f989b8017d1dcc9ca164f3c15616786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:544030576f8a9abca9bb3fc1797bd64429443490248709f6cf0fb56e59cf0c7b",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant89ad9b2128a3eb6f56770c4053dee0dc6f989b8017d1dcc9ca164f3c15616786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64e529e1-c11e-3c81-e144-66bbe7e2d50a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1128–1154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasMFDerivWithinAt.comp (hg : HasMFDerivAt[u] g (f x) g')
    (hf : HasMFDerivAt[s] f x f') (hst : s ⊆ f ⁻¹' u) :
    HasMFDerivAt[s] (g ∘ f) x (g'.comp f') := by
  refine ⟨ContinuousWithinAt.comp hg.1 hf.1 hst, ?_⟩
  have A :
    HasFDerivWithinAt (writtenInExtChartAt I' I'' (f x) g ∘ writtenInExtChartAt I I' x f)
      (ContinuousLinearMap.comp g' f' : E →L[𝕜] E'') ((extChartAt I x).symm ⁻¹' s ∩ range I)
      ((extChartAt I x) x) := by
    have :
      (extChartAt I x).symm ⁻¹' f ⁻¹' (extChartAt I' (f x)).source ∈
        𝓝[(extChartAt I x).symm ⁻¹' s ∩ range I] (extChartAt I x) x :=
      extChartAt_preimage_mem_nhdsWithin
        (hf.1.preimage_mem_nhdsWithin (extChartAt_source_mem_nhds _))
    unfold HasMFDerivWithinAt at *
    rw [← hasFDerivWithinAt_inter' this, ← extChartAt_preimage_inter_eq] at hf ⊢
    have : writtenInExtChartAt I I' x f ((extChartAt I x) x) = (extChartAt I' (f x)) (f x) := by
      simp only [mfld_simps]
    rw [← this] at hg
    apply HasFDerivWithinAt.comp ((extChartAt I x) x) hg.2 hf.2 _
    intro y hy
    simp only [mfld_simps] at hy
    have : f (((chartAt H x).symm : H → M) (I.symm y)) ∈ u := hst hy.1.1
    simp only [hy, this, mfld_simps]
  apply A.congr_of_eventuallyEq (writtenInExtChartAt_comp hf.1)
  simp only [mfld_simps]

/-- The **chain rule for manifolds**. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant89ad9b2128a3eb6f56770c4053dee0dc6f989b8017d1dcc9ca164f3c15616786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant89ad9b2128a3eb6f56770c4053dee0dc6f989b8017d1dcc9ca164f3c15616786.lean#L1128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68a6306e02e35b1c57668a66531828346e868c4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
