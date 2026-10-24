# _root_.GRWTSK.Analysis.MeasureTheory.HasPDF.Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.Real.hasPDF_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bcceadc5-6722-2740-1b06-f227a28c1e85",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.HasPDF.Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.Real.hasPDF_iff",
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
  "slug": "root-grwtsk-analysis-measuretheory-haspdf-variant2fbfff699ad3ce8fc8d165f--39bb2407bfa8f7d4dc330902",
  "source": {
    "blob": "b0d18e533b89699c6319b78162320b06848deaa9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 272,
    "path": "GRWTSK/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39bb2407bfa8f7d4dc3309021a7a279f514ac1b9ff8798b1df82c05d7f224d63",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcceadc5-6722-2740-1b06-f227a28c1e85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem _root_.GRWTSK.Analysis.MeasureTheory.HasPDF.Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.Real.hasPDF_iff [SFinite ℙ] :
    HasPDF X ℙ ↔ AEMeasurable X ℙ ∧ map X ℙ ≪ volume := by
  rw [hasPDF_iff, and_iff_right (inferInstance : HaveLebesgueDecomposition _ _)]

/-- A real-valued random variable `X` `HasPDF X ℙ λ` (where `λ` is the Lebesgue measure) if and
only if the push-forward measure of `ℙ` along `X` is absolutely continuous with respect to `λ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0d18e533b89699c6319b78162320b06848deaa9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
