# isClosed_setOfPred_preimage_ae_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72e9d9d4-75a7-dc0d-bc3f-ef80132fbf85",
  "kind": "theorem",
  "lexical_name": "isClosed_setOfPred_preimage_ae_eq",
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
  "slug": "isclosed-setofpred-preimage-ae-eq--11a5b47b36672b4ba9cd8c5e",
  "source": {
    "blob": "89dc52d73599b65b882cf8922f7f6ec70ff0be49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousPreimage/Variant6df0902e3e169129c859f2372109db91ca161cd8439d42da7f9c08db1f9b5470.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11a5b47b36672b4ba9cd8c5e5e42a76c4d37fbb81a45c32ca95f7c0e7694af5e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousPreimage/Variant6df0902e3e169129c859f2372109db91ca161cd8439d42da7f9c08db1f9b5470.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72e9d9d4-75a7-dc0d-bc3f-ef80132fbf85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_setOfPred_preimage_ae_eq {f : Z → C(X, Y)} (hf : Continuous f)
    (hfm : ∀ z, MeasurePreserving (f z) μ ν) (s : Set X)
    {t : Set Y} (htm : NullMeasurableSet t ν) (ht : ν t ≠ ∞) :
    IsClosed {z | f z ⁻¹' t =ᵐ[μ] s} := by
  rw [← isOpen_compl_iff, isOpen_iff_mem_nhds]
  intro z hz
  replace hz : ∀ᶠ ε : ℝ≥0∞ in 𝓝 0, ε < μ ((f z ⁻¹' t) ∆ s) := by
    apply gt_mem_nhds
    rwa [pos_iff_ne_zero, ne_eq, measure_symmDiff_eq_zero_iff]
  filter_upwards [(tendsto_measure_symmDiff_preimage_nhds_zero (hf.tendsto z)
    (.of_forall hfm) (hfm z) htm ht).eventually hz] with w hw
  intro (hw' : f w ⁻¹' t =ᵐ[μ] s)
  rw [measure_congr (hw'.symmDiff .rfl), symmDiff_comm] at hw
  exact hw.false

@[deprecated (since := "2026-07-09")]
alias isClosed_setOf_preimage_ae_eq := isClosed_setOfPred_preimage_ae_eq

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousPreimage/Variant6df0902e3e169129c859f2372109db91ca161cd8439d42da7f9c08db1f9b5470.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousPreimage/Variant6df0902e3e169129c859f2372109db91ca161cd8439d42da7f9c08db1f9b5470.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89dc52d73599b65b882cf8922f7f6ec70ff0be49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
