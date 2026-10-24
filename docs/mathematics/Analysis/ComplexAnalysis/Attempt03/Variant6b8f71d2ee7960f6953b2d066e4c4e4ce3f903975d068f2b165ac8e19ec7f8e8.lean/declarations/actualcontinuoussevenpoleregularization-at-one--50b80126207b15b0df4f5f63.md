# actualContinuousSevenPoleRegularization_at_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83f16447-4a12-78dc-39bd-095f546c7c04",
  "kind": "theorem",
  "lexical_name": "actualContinuousSevenPoleRegularization_at_one",
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
  "slug": "actualcontinuoussevenpoleregularization-at-one--50b80126207b15b0df4f5f63",
  "source": {
    "blob": "ef7e765aa8f04e884cec7a8baec81cce10132737",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 102,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Attempt03/Variant6b8f71d2ee7960f6953b2d066e4c4e4ce3f903975d068f2b165ac8e19ec7f8e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50b80126207b15b0df4f5f63859598a239eadf0113e1cf51ed799cb52dcdc3c5",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Attempt03/Variant6b8f71d2ee7960f6953b2d066e4c4e4ce3f903975d068f2b165ac8e19ec7f8e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83f16447-4a12-78dc-39bd-095f546c7c04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualContinuousSevenPoleRegularization_at_one :
    actualContinuousSevenPoleRegularization 1 = Complex.log 7 - 1 := by
  unfold actualContinuousSevenPoleRegularization
  rw [dslope_same]
  have hd := (hasDerivAt_const (1 : ℂ) (1 : ℂ)).fun_sub
    ((hasDerivAt_id (1 : ℂ)).fun_mul (seven_power_hasDerivAt 1))
  unfold actualContinuousSevenPoleNumerator
  convert hd.deriv using 1
  simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Attempt03/Variant6b8f71d2ee7960f6953b2d066e4c4e4ce3f903975d068f2b165ac8e19ec7f8e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Attempt03/Variant6b8f71d2ee7960f6953b2d066e4c4e4ce3f903975d068f2b165ac8e19ec7f8e8.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef7e765aa8f04e884cec7a8baec81cce10132737` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
