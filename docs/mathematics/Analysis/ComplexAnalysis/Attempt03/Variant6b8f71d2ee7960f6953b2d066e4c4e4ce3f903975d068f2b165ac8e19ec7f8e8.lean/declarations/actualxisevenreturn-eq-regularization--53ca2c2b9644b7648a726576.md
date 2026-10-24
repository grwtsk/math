# actualXiSevenReturn_eq_regularization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b69b54a-a4cb-ecbb-8b00-99aff339bf49",
  "kind": "theorem",
  "lexical_name": "actualXiSevenReturn_eq_regularization",
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
  "slug": "actualxisevenreturn-eq-regularization--53ca2c2b9644b7648a726576",
  "source": {
    "blob": "ef7e765aa8f04e884cec7a8baec81cce10132737",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 154,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Attempt03/Variant6b8f71d2ee7960f6953b2d066e4c4e4ce3f903975d068f2b165ac8e19ec7f8e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53ca2c2b9644b7648a726576c5da282a697b75c157310cd15f699672d6e3c0ae",
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

Occurrence: `result:9b69b54a-a4cb-ecbb-8b00-99aff339bf49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiSevenReturn_eq_regularization {s : ℂ} (hs0 : s ≠ 0) (hs1 : s ≠ 1)
    (hsz : riemannZeta s ≠ 0) :
    actualXiSevenReturn s = actualXiSevenReturnRegularization s := by
  unfold actualXiSevenReturn actualXiSevenReturnRegularization
  rw [actualZeta_logDerivative_pole_identity hs0 hs1 hsz]
  unfold actualContinuousSevenPoleRegularization
  rw [dslope_of_ne _ hs1, slope_def_field, actualContinuousSevenPoleNumerator_at_one]
  unfold actualContinuousSevenPoleNumerator
  field_simp
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualXiSevenPoleCancellation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Attempt03/Variant6b8f71d2ee7960f6953b2d066e4c4e4ce3f903975d068f2b165ac8e19ec7f8e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Attempt03/Variant6b8f71d2ee7960f6953b2d066e4c4e4ce3f903975d068f2b165ac8e19ec7f8e8.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef7e765aa8f04e884cec7a8baec81cce10132737` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
