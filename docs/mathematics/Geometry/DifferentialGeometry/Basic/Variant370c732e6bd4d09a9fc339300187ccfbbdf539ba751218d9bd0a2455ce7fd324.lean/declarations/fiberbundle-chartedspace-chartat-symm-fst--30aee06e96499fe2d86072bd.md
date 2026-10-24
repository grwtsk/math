# FiberBundle.chartedSpace_chartAt_symm_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b2271d0-63a2-d981-1046-06045e50c30c",
  "kind": "theorem",
  "lexical_name": "FiberBundle.chartedSpace_chartAt_symm_fst",
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
  "slug": "fiberbundle-chartedspace-chartat-symm-fst--30aee06e96499fe2d86072bd",
  "source": {
    "blob": "eb54446ef768f7fd34d217b063a4b43ec4cc3e0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 127,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant370c732e6bd4d09a9fc339300187ccfbbdf539ba751218d9bd0a2455ce7fd324.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30aee06e96499fe2d86072bd673bb42b4a2c1f8862c6a82952a48858d6c44b1a",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant370c732e6bd4d09a9fc339300187ccfbbdf539ba751218d9bd0a2455ce7fd324.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b2271d0-63a2-d981-1046-06045e50c30c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FiberBundle.chartedSpace_chartAt_symm_fst (x : TotalSpace F E) (y : ModelProd HB F)
    (hy : y ∈ (chartAt (ModelProd HB F) x).target) :
    ((chartAt (ModelProd HB F) x).symm y).proj = (chartAt HB x.proj).symm y.1 := by
  simp only [FiberBundle.chartedSpace_chartAt, mfld_simps] at hy ⊢
  exact (trivializationAt F E x.proj).proj_symm_apply hy.2
#align fiber_bundle.charted_space_chart_at_symm_fst FiberBundle.chartedSpace_chartAt_symm_fst

end

section

variable [NontriviallyNormedField 𝕜] [NormedAddCommGroup F] [NormedSpace 𝕜 F]
  [TopologicalSpace (TotalSpace F E)] [∀ x, TopologicalSpace (E x)] {EB : Type*}
  [NormedAddCommGroup EB] [NormedSpace 𝕜 EB] {HB : Type*} [TopologicalSpace HB]
  (IB : ModelWithCorners 𝕜 EB HB) (E' : B → Type*) [∀ x, Zero (E' x)] {EM : Type*}
  [NormedAddCommGroup EM] [NormedSpace 𝕜 EM] {HM : Type*} [TopologicalSpace HM]
  {IM : ModelWithCorners 𝕜 EM HM} [TopologicalSpace M] [ChartedSpace HM M]
  [Is : SmoothManifoldWithCorners IM M] {n : ℕ∞}

variable [TopologicalSpace B] [ChartedSpace HB B] [FiberBundle F E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant370c732e6bd4d09a9fc339300187ccfbbdf539ba751218d9bd0a2455ce7fd324.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant370c732e6bd4d09a9fc339300187ccfbbdf539ba751218d9bd0a2455ce7fd324.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb54446ef768f7fd34d217b063a4b43ec4cc3e0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
