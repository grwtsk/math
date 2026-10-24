# measure_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4481e9de-aeb7-74f4-065a-46ca5e38b149",
  "kind": "theorem",
  "lexical_name": "measure_preimage",
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
  "slug": "measure-preimage--9e56711f5fc85709e93d6811",
  "source": {
    "blob": "8a70af88a789107651762e23caa5959e45c8a057",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 351,
    "path": "GRWTSK/Analysis/MeasureTheory/Density/Variant1ce375f366b9b3a921aa42352ed3b5f93fddd9e9c4379228c8e08685e0ecf20f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e56711f5fc85709e93d68110728ca6201b1ef1de5124367e7a423be9269ee65",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Density/Variant1ce375f366b9b3a921aa42352ed3b5f93fddd9e9c4379228c8e08685e0ecf20f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4481e9de-aeb7-74f4-065a-46ca5e38b149`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_preimage {m : MeasurableSpace Ω} {X : Ω → E} {ℙ : Measure Ω} {μ : Measure E}
    {s : Set E} (hns : μ s ≠ 0) (hnt : μ s ≠ ∞) (hms : MeasurableSet s) (hu : IsUniform X s ℙ μ)
    {A : Set E} (hA : MeasurableSet A) : ℙ (X ⁻¹' A) = μ (s ∩ A) / μ s := by
  haveI := hu.hasPDF hns hnt
  rw [← Measure.map_apply (HasPDF.measurable X ℙ μ) hA, map_eq_set_lintegral_pdf X ℙ μ hA,
    lintegral_congr_ae hu.restrict]
  simp only [hms, hA, lintegral_indicator, Pi.smul_apply, Pi.one_apply, Algebra.id.smul_eq_mul,
    mul_one, lintegral_const, restrict_apply', Set.univ_inter]
  rw [ENNReal.div_eq_inv_mul]
#align measure_theory.pdf.is_uniform.measure_preimage MeasureTheory.pdf.IsUniform.measure_preimage

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Density/Variant1ce375f366b9b3a921aa42352ed3b5f93fddd9e9c4379228c8e08685e0ecf20f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Density/Variant1ce375f366b9b3a921aa42352ed3b5f93fddd9e9c4379228c8e08685e0ecf20f.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a70af88a789107651762e23caa5959e45c8a057` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
