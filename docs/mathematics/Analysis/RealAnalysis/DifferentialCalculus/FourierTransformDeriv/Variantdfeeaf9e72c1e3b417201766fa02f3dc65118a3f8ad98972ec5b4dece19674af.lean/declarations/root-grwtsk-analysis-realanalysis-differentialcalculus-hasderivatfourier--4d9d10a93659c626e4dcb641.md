# _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasDerivAtFourierChar.Variant8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.MeasureTheory.AEStronglyMeasurable.fourierPowSMulRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a7b5cbf-616c-f65b-61ba-91b603cebde3",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasDerivAtFourierChar.Variant8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.MeasureTheory.AEStronglyMeasurable.fourierPowSMulRight",
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
  "slug": "root-grwtsk-analysis-realanalysis-differentialcalculus-hasderivatfourier--4d9d10a93659c626e4dcb641",
  "source": {
    "blob": "9aaf9246a748d42ddbf7989048cd3267580295bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 440,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantdfeeaf9e72c1e3b417201766fa02f3dc65118a3f8ad98972ec5b4dece19674af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d9d10a93659c626e4dcb6418f7a211ad7c09721a5b1af78a473f18713580369",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantdfeeaf9e72c1e3b417201766fa02f3dc65118a3f8ad98972ec5b4dece19674af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a7b5cbf-616c-f65b-61ba-91b603cebde3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 440–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasDerivAtFourierChar.Variant8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.MeasureTheory.AEStronglyMeasurable.fourierPowSMulRight
    (hf : AEStronglyMeasurable f μ) (n : ℕ) :
    AEStronglyMeasurable (fun v ↦ fourierPowSMulRight L f v n) μ := by
  simp_rw [fourierPowSMulRight_eq_comp]
  apply AEStronglyMeasurable.fun_const_smul
  apply (smulRightL ℝ (fun (_ : Fin n) ↦ W) E).continuous₂.comp_aestronglyMeasurable₂ _ hf
  apply Continuous.aestronglyMeasurable
  exact Continuous.comp (map_continuous _) (continuous_pi (fun _ ↦ L.continuous))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantdfeeaf9e72c1e3b417201766fa02f3dc65118a3f8ad98972ec5b4dece19674af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantdfeeaf9e72c1e3b417201766fa02f3dc65118a3f8ad98972ec5b4dece19674af.lean#L440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9aaf9246a748d42ddbf7989048cd3267580295bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
