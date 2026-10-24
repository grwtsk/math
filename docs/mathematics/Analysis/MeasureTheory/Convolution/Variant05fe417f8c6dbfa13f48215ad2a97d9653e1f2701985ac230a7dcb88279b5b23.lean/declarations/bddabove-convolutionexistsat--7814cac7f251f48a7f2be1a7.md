# BddAbove.convolutionExistsAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e9d26ff-5c26-8fcd-0be9-cee499e3fefc",
  "kind": "theorem",
  "lexical_name": "BddAbove.convolutionExistsAt",
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
  "slug": "bddabove-convolutionexistsat--7814cac7f251f48a7f2be1a7",
  "source": {
    "blob": "4a985c84eb8940462e2fb30431e25d9e19d34b38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 392,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7814cac7f251f48a7f2be1a79f93e1a7c4af8b7aa9dd649060eecc475dc0b482",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e9d26ff-5c26-8fcd-0be9-cee499e3fefc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BddAbove.convolutionExistsAt [MeasurableAdd₂ G] [SigmaFinite μ] {x₀ : G} {s : Set G}
    (hbg : BddAbove ((fun i => ‖g i‖) '' ((fun t => x₀ - t) ⁻¹' s))) (hs : MeasurableSet s)
    (h2s : (support fun t => L (f t) (g (x₀ - t))) ⊆ s) (hf : IntegrableOn f s μ)
    (hmg : AEStronglyMeasurable g μ) : ConvolutionExistsAt f g x₀ L μ := by
  refine' BddAbove.convolutionExistsAt' L _ hs h2s hf _
  · simp_rw [← sub_eq_neg_add, hbg]
  · have : AEStronglyMeasurable g (map (fun t : G => x₀ - t) μ) :=
      hmg.mono' (quasiMeasurePreserving_sub_left_of_right_invariant μ x₀).absolutelyContinuous
    apply this.mono_measure
    exact map_mono restrict_le_self (measurable_const.sub measurable_id')
#align bdd_above.convolution_exists_at BddAbove.convolutionExistsAt

variable {L} [MeasurableAdd G] [IsNegInvariant μ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a985c84eb8940462e2fb30431e25d9e19d34b38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
