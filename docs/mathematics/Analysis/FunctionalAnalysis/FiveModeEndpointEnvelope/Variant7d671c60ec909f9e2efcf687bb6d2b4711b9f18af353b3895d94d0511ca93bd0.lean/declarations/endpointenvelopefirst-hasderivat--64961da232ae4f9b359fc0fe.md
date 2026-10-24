# endpointEnvelopeFirst_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58c56ed8-185c-cf03-41a4-cfdacaa15d29",
  "kind": "theorem",
  "lexical_name": "endpointEnvelopeFirst_hasDerivAt",
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
  "slug": "endpointenvelopefirst-hasderivat--64961da232ae4f9b359fc0fe",
  "source": {
    "blob": "771f5dc48a63330c24eb230599a50c383c97c0c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 32,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant7d671c60ec909f9e2efcf687bb6d2b4711b9f18af353b3895d94d0511ca93bd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64961da232ae4f9b359fc0fe35d1fd7b7874c95ace48766063f32f3a4d0217e7",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant7d671c60ec909f9e2efcf687bb6d2b4711b9f18af353b3895d94d0511ca93bd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58c56ed8-185c-cf03-41a4-cfdacaa15d29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpointEnvelopeFirst_hasDerivAt (A : ℝ) (hA : A ≠ 0) :
    HasDerivAt endpointEnvelopeFirst (endpointEnvelopeSecond A) A := by
  unfold endpointEnvelopeFirst endpointEnvelopeSecond
  apply ((((Real.hasDerivAt_exp A).mul ((hasDerivAt_id A).sub_const 9)).sub_const 27).div
    ((hasDerivAt_id A).pow 10) (pow_ne_zero 10 hA)).congr_deriv
  simp only [Pi.pow_apply, Pi.mul_apply, id_eq]
  field_simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant7d671c60ec909f9e2efcf687bb6d2b4711b9f18af353b3895d94d0511ca93bd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant7d671c60ec909f9e2efcf687bb6d2b4711b9f18af353b3895d94d0511ca93bd0.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `771f5dc48a63330c24eb230599a50c383c97c0c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
