# centeredMangoldtError_below_first_atom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efaaab5e-fd04-0bd8-e494-c2ee65bbf07d",
  "kind": "theorem",
  "lexical_name": "centeredMangoldtError_below_first_atom",
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
  "slug": "centeredmangoldterror-below-first-atom--a56a1cb6cfc53a50c7352630",
  "source": {
    "blob": "283dad73586ec5997d31399bf59a6dec30d2dbf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 101,
    "path": "GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant99da68bb481da77638e60caad49710b1280dff6c9a6a094e6d5da85a2b862e95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a56a1cb6cfc53a50c73526308c848fe9cb1c7640f282ebb3520d50e1d3be4dd1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant99da68bb481da77638e60caad49710b1280dff6c9a6a094e6d5da85a2b862e95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efaaab5e-fd04-0bd8-e494-c2ee65bbf07d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredMangoldtError_below_first_atom {t : ℝ} (ht : t < Real.log 2) :
    mangoldtLogError t+Real.eulerMascheroniConstant = Real.eulerMascheroniConstant-t := by
  rw [mangoldtLogError_below_first_atom ht]
  ring

end ContinuousResearch.MangoldtLaplaceIntegrability

#print ContinuousResearch.MangoldtLaplaceIntegrability.mangoldtLogPrefix_measurable
#print axioms ContinuousResearch.MangoldtLaplaceIntegrability.mangoldtLogPrefix_measurable
#print ContinuousResearch.MangoldtLaplaceIntegrability.mangoldtLogError_measurable
#print axioms ContinuousResearch.MangoldtLaplaceIntegrability.mangoldtLogError_measurable
#print ContinuousResearch.MangoldtLaplaceIntegrability.centeredMangoldtError_measurable
#print axioms ContinuousResearch.MangoldtLaplaceIntegrability.centeredMangoldtError_measurable
#print ContinuousResearch.MangoldtLaplaceIntegrability.centeredMangoldtError_bound
#print axioms ContinuousResearch.MangoldtLaplaceIntegrability.centeredMangoldtError_bound
#print ContinuousResearch.MangoldtLaplaceIntegrability.centeredMangoldtError_laplace_integrable
#print axioms ContinuousResearch.MangoldtLaplaceIntegrability.centeredMangoldtError_laplace_integrable
#print ContinuousResearch.MangoldtLaplaceIntegrability.mangoldtLogError_laplace_integrable
#print axioms ContinuousResearch.MangoldtLaplaceIntegrability.mangoldtLogError_laplace_integrable
#print ContinuousResearch.MangoldtLaplaceIntegrability.linear_exponential_integrable
#print axioms ContinuousResearch.MangoldtLaplaceIntegrability.linear_exponential_integrable
#print ContinuousResearch.MangoldtLaplaceIntegrability.linear_complex_laplace_integrable
#print axioms ContinuousResearch.MangoldtLaplaceIntegrability.linear_complex_laplace_integrable
#print ContinuousResearch.MangoldtLaplaceIntegrability.mangoldtLogPrefix_laplace_integrable
#print axioms ContinuousResearch.MangoldtLaplaceIntegrability.mangoldtLogPrefix_laplace_integrable
#print ContinuousResearch.MangoldtLaplaceIntegrability.centeredMangoldtError_below_first_atom
#print axioms ContinuousResearch.MangoldtLaplaceIntegrability.centeredMangoldtError_below_first_atom
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant99da68bb481da77638e60caad49710b1280dff6c9a6a094e6d5da85a2b862e95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant99da68bb481da77638e60caad49710b1280dff6c9a6a094e6d5da85a2b862e95.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `283dad73586ec5997d31399bf59a6dec30d2dbf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
