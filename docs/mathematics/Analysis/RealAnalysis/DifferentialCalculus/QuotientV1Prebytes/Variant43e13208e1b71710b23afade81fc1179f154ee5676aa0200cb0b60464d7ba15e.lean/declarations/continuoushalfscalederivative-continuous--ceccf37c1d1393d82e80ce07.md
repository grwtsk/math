# continuousHalfScaleDerivative_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c60cf9e6-57e3-fff0-0443-e09bbb886d60",
  "kind": "theorem",
  "lexical_name": "continuousHalfScaleDerivative_continuous",
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
  "slug": "continuoushalfscalederivative-continuous--ceccf37c1d1393d82e80ce07",
  "source": {
    "blob": "18222610f9df0f70d67c8cb38f9e7e6e5fe6f88a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuotientV1Prebytes/Variant43e13208e1b71710b23afade81fc1179f154ee5676aa0200cb0b60464d7ba15e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ceccf37c1d1393d82e80ce072970977410473ff4dc6b4531a83ec6f1c63b6f25",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/QuotientV1Prebytes/Variant43e13208e1b71710b23afade81fc1179f154ee5676aa0200cb0b60464d7ba15e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c60cf9e6-57e3-fff0-0443-e09bbb886d60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousHalfScaleDerivative_continuous : Continuous continuousHalfScaleDerivative := by
  have hn : Continuous (fun A : ℝ => -544 * A * (7 * A ^ 4 + 756 * A ^ 2 + 7344)) := by
    fun_prop
  have hd : Continuous continuousHalfDenominator := by
    unfold continuousHalfDenominator
    fun_prop
  exact hn.div (hd.pow 2) (fun A => pow_ne_zero 2 (ne_of_gt (continuousHalfDenominator_pos A)))

/-- The actual independent source slope is negative at every positive scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/QuotientV1Prebytes/Variant43e13208e1b71710b23afade81fc1179f154ee5676aa0200cb0b60464d7ba15e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuotientV1Prebytes/Variant43e13208e1b71710b23afade81fc1179f154ee5676aa0200cb0b60464d7ba15e.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18222610f9df0f70d67c8cb38f9e7e6e5fe6f88a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
