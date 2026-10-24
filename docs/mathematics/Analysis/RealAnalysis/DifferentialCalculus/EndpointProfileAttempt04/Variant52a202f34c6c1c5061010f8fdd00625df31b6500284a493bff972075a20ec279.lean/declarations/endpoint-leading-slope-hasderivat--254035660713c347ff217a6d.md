# endpoint_leading_slope_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34c628ca-d689-b628-a521-5897fec02c44",
  "kind": "theorem",
  "lexical_name": "endpoint_leading_slope_hasDerivAt",
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
  "slug": "endpoint-leading-slope-hasderivat--254035660713c347ff217a6d",
  "source": {
    "blob": "a6ff6a10a0f7b777239b81263286843d34f68636",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 93,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt04/Variant52a202f34c6c1c5061010f8fdd00625df31b6500284a493bff972075a20ec279.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:254035660713c347ff217a6df97d0c258d01ec11867f874036a35bcd0ce43e26",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt04/Variant52a202f34c6c1c5061010f8fdd00625df31b6500284a493bff972075a20ec279.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34c628ca-d689-b628-a521-5897fec02c44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpoint_leading_slope_hasDerivAt (y : ℝ) :
    HasDerivAt endpointLeadingSlope
      (endpointLeadingSlope y/2-endpointLeadingCurvature y) y := by
  have hi := ((((((hasDerivAt_id y).pow 5).sub
    (((hasDerivAt_id y).pow 4).const_mul 18)).sub
    (((hasDerivAt_id y).pow 3).const_mul 576)).add
    (((hasDerivAt_id y).pow 2).const_mul 8064)).add
    ((hasDerivAt_id y).const_mul 48384)).sub_const 483840
  have hd := (((hasDerivAt_id y).pow 4).mul hi).const_mul (4/315:ℝ)
  convert hd using 1 <;> (try rfl) <;> (try funext x) <;> (try dsimp [endpointLeadingSlope,endpointLeadingCurvature]) <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt04/Variant52a202f34c6c1c5061010f8fdd00625df31b6500284a493bff972075a20ec279.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt04/Variant52a202f34c6c1c5061010f8fdd00625df31b6500284a493bff972075a20ec279.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6ff6a10a0f7b777239b81263286843d34f68636` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
