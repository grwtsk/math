# analytic_gradient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b97fd5cfd321374d2eda46480a470c98fdd2f13d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4c097971368b30c6e7c74845a7820d393ff91b25293b7a0ae8e33875b65167b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc821968-f311-745f-8d05-ab48861da146",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c59dfad8-1dc2-205b-3d2f-f6adede506bc",
  "kind": "theorem",
  "lexical_name": "analytic_gradient",
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
  "slug": "analytic-gradient--445c51468e9655da2b89975f",
  "source": {
    "blob": "b97fd5cfd321374d2eda46480a470c98fdd2f13d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 121,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/B4c097971368b30c6e7c74845a7820d393ff91b25293b7a0ae8e33875b65167bAnalyticDispersi/Variantb4c097971368b30c6e7c74845a7820d393ff91b25293b7a0ae8e33875b65167b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:445c51468e9655da2b89975f7ed920d35ef5acaa19ad8a309ce4af74f7793fce",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/B4c097971368b30c6e7c74845a7820d393ff91b25293b7a0ae8e33875b65167bAnalyticDispersi/Variantb4c097971368b30c6e7c74845a7820d393ff91b25293b7a0ae8e33875b65167b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c59dfad8-1dc2-205b-3d2f-f6adede506bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem analytic_gradient :
    ∀ x : E, AnalyticAt ℝ D.gradient x :=
  D.gradient_analytic

end AnalyticDispersionReconstruction

universe v w

variable {P : Type u} [NormedAddCommGroup P] [NormedSpace ℝ P]
variable {U : Type v} [NormedAddCommGroup U] [NormedSpace ℝ U]
variable {X : Type w} [AddCommGroup X] [Module ℝ X]

namespace ThreePhaseCore

/-- Build the comparator-free three-phase core from an actual analytic
Phase-I dispersion reconstruction evaluated at one parameter point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/B4c097971368b30c6e7c74845a7820d393ff91b25293b7a0ae8e33875b65167bAnalyticDispersi/Variantb4c097971368b30c6e7c74845a7820d393ff91b25293b7a0ae8e33875b65167b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/B4c097971368b30c6e7c74845a7820d393ff91b25293b7a0ae8e33875b65167bAnalyticDispersi/Variantb4c097971368b30c6e7c74845a7820d393ff91b25293b7a0ae8e33875b65167b.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b97fd5cfd321374d2eda46480a470c98fdd2f13d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
