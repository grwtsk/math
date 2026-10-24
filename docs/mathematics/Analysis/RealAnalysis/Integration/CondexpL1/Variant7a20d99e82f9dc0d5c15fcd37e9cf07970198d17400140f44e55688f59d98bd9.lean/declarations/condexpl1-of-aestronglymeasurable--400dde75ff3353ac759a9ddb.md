# condexpL1_of_aestronglyMeasurable'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83be77a8-092b-0721-0e1d-e26abf681f1c",
  "kind": "theorem",
  "lexical_name": "condexpL1_of_aestronglyMeasurable'",
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
  "slug": "condexpl1-of-aestronglymeasurable--400dde75ff3353ac759a9ddb",
  "source": {
    "blob": "5b60ab07be3708195f1e012bc688de60f74db63b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 599,
    "line": 592,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CondexpL1/Variant7a20d99e82f9dc0d5c15fcd37e9cf07970198d17400140f44e55688f59d98bd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:400dde75ff3353ac759a9ddbb58f53a8ca093cf58f6f9b1fcad1bf5d6441ffae",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CondexpL1/Variant7a20d99e82f9dc0d5c15fcd37e9cf07970198d17400140f44e55688f59d98bd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83be77a8-092b-0721-0e1d-e26abf681f1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 592–599.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condexpL1_of_aestronglyMeasurable' (hfm : AEStronglyMeasurable' m f μ)
    (hfi : Integrable f μ) : condexpL1 hm μ f =ᵐ[μ] f := by
  rw [condexpL1_eq hfi]
  refine' EventuallyEq.trans _ (Integrable.coeFn_toL1 hfi)
  rw [condexpL1Clm_of_aestronglyMeasurable']
  exact AEStronglyMeasurable'.congr hfm (Integrable.coeFn_toL1 hfi).symm
#align measure_theory.condexp_L1_of_ae_strongly_measurable' MeasureTheory.condexpL1_of_aestronglyMeasurable'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CondexpL1/Variant7a20d99e82f9dc0d5c15fcd37e9cf07970198d17400140f44e55688f59d98bd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CondexpL1/Variant7a20d99e82f9dc0d5c15fcd37e9cf07970198d17400140f44e55688f59d98bd9.lean#L592).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b60ab07be3708195f1e012bc688de60f74db63b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
