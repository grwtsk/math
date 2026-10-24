# _root_.GRWTSK.Analysis.RealAnalysis.Integration.CondDistribApplyOfNeZero.Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.MeasureTheory.Integrable.condDistrib_ae_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6366764e-282a-993d-04de-cc8693db2c83",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.Integration.CondDistribApplyOfNeZero.Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.MeasureTheory.Integrable.condDistrib_ae_map",
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
  "slug": "root-grwtsk-analysis-realanalysis-integration-conddistribapplyofnezero-v--09eb63be7dc79a063171606b",
  "source": {
    "blob": "8a664e4cf9b584979ed5a9fccfc68508a3faa2ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 159,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CondDistrib/Variant8c26bd155239e752a5584d542806209b8bc785a874a61d00b1e9dca75b325caf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09eb63be7dc79a063171606bf3d9502afc2c1e621158096edd3ca12a005fe140",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CondDistrib/Variant8c26bd155239e752a5584d542806209b8bc785a874a61d00b1e9dca75b325caf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6366764e-282a-993d-04de-cc8693db2c83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.RealAnalysis.Integration.CondDistribApplyOfNeZero.Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.MeasureTheory.Integrable.condDistrib_ae_map
    (hY : AEMeasurable Y μ) (hf_int : Integrable f (μ.map fun a => (X a, Y a))) :
    ∀ᵐ b ∂μ.map X, Integrable (fun ω => f (b, ω)) (condDistrib Y X μ b) := by
  rw [condDistrib, ← Measure.fst_map_prodMk₀ (X := X) hY]; exact hf_int.condKernel_ae

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CondDistrib/Variant8c26bd155239e752a5584d542806209b8bc785a874a61d00b1e9dca75b325caf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CondDistrib/Variant8c26bd155239e752a5584d542806209b8bc785a874a61d00b1e9dca75b325caf.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a664e4cf9b584979ed5a9fccfc68508a3faa2ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
