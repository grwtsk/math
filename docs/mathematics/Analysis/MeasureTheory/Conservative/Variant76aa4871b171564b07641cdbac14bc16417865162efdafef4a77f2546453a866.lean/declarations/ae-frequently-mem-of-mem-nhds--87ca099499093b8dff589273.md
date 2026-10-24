# ae_frequently_mem_of_mem_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41f36418-54c3-a7a1-d431-99d34729d3d8",
  "kind": "theorem",
  "lexical_name": "ae_frequently_mem_of_mem_nhds",
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
  "slug": "ae-frequently-mem-of-mem-nhds--87ca099499093b8dff589273",
  "source": {
    "blob": "20226c202e555a3abbecd9acf0464ef7a31dd7aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 181,
    "path": "GRWTSK/Analysis/MeasureTheory/Conservative/Variant76aa4871b171564b07641cdbac14bc16417865162efdafef4a77f2546453a866.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87ca099499093b8dff589273bb7a807e9e52da7700a2f445eef98fcb76691827",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Conservative/Variant76aa4871b171564b07641cdbac14bc16417865162efdafef4a77f2546453a866.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41f36418-54c3-a7a1-d431-99d34729d3d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_frequently_mem_of_mem_nhds [TopologicalSpace α] [SecondCountableTopology α]
    [OpensMeasurableSpace α] {f : α → α} {μ : Measure α} (h : Conservative f μ) :
    ∀ᵐ x ∂μ, ∀ s ∈ 𝓝 x, ∃ᶠ n in atTop, f^[n] x ∈ s := by
  have : ∀ s ∈ countableBasis α, ∀ᵐ x ∂μ, x ∈ s → ∃ᶠ n in atTop, f^[n] x ∈ s := fun s hs =>
    h.ae_mem_imp_frequently_image_mem (isOpen_of_mem_countableBasis hs).measurableSet
  refine' ((ae_ball_iff <| countable_countableBasis α).2 this).mono fun x hx s hs => _
  rcases (isBasis_countableBasis α).mem_nhds_iff.1 hs with ⟨o, hoS, hxo, hos⟩
  exact (hx o hoS hxo).mono fun n hn => hos hn
#align measure_theory.conservative.ae_frequently_mem_of_mem_nhds MeasureTheory.Conservative.ae_frequently_mem_of_mem_nhds

/-- Iteration of a conservative system is a conservative system. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Conservative/Variant76aa4871b171564b07641cdbac14bc16417865162efdafef4a77f2546453a866.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Conservative/Variant76aa4871b171564b07641cdbac14bc16417865162efdafef4a77f2546453a866.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20226c202e555a3abbecd9acf0464ef7a31dd7aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
