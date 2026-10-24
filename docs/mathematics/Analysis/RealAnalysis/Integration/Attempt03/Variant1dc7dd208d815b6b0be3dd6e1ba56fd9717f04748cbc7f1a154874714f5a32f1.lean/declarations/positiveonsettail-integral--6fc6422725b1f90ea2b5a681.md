# positiveOnsetTail_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:502e3fa1-2a14-9be5-0865-ae9e8e1a249a",
  "kind": "theorem",
  "lexical_name": "positiveOnsetTail_integral",
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
  "slug": "positiveonsettail-integral--6fc6422725b1f90ea2b5a681",
  "source": {
    "blob": "494be23993a79e799931bc0ef3cb9ae18759d438",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 134,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fc6422725b1f90ea2b5a68177077b3f5759a2ef8e0085626034ebe3dbf4b456",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:502e3fa1-2a14-9be5-0865-ae9e8e1a249a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveOnsetTail_integral : (∫ t : ℝ, positiveOnsetTail t) = properPowerB1 := by
  have he := (ofReal_integral_eq_lintegral_ofReal positiveOnsetTail_integrable
    (Eventually.of_forall positiveOnsetTail_nonneg)).trans positiveOnsetTail_lintegral
  have h := congrArg ENNReal.toReal he
  simpa only [ENNReal.toReal_ofReal (integral_nonneg positiveOnsetTail_nonneg),
    ENNReal.toReal_ofReal (properPowerMoment_nonneg 1)] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `494be23993a79e799931bc0ef3cb9ae18759d438` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
