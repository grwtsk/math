# actualXiComplexLaplace_eq_poleOneRegularization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:053efaf1-652c-be71-2a48-f3e5ed318dac",
  "kind": "theorem",
  "lexical_name": "actualXiComplexLaplace_eq_poleOneRegularization",
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
  "slug": "actualxicomplexlaplace-eq-poleoneregularization--af0da7dde1792c3a50874b2f",
  "source": {
    "blob": "26b38e2912925233f60a85619c5404a17d04c0f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 230,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Attempt06/Variant1325f021b004189a735765263e70314c22f694c839b98b59e1f31e4d2f7ebe1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af0da7dde1792c3a50874b2f76381ab29ef25b64cc32c36d7530396e2ab5e1d6",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Attempt06/Variant1325f021b004189a735765263e70314c22f694c839b98b59e1f31e4d2f7ebe1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:053efaf1-652c-be71-2a48-f3e5ed318dac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiComplexLaplace_eq_poleOneRegularization {z : ℂ} (hz : 1 / 2 < z.re) :
    actualXiComplexLaplace z = actualXiLaplacePoleOneRegularization z := by
  have hs : 1 < (z + 1 / 2).re := by norm_num; linarith
  have hs0 : z + 1 / 2 ≠ 0 := by intro he; rw [he] at hs; norm_num at hs
  have hs1 : z + 1 / 2 ≠ 1 := by intro he; rw [he] at hs; norm_num at hs
  have hz0 : z ≠ 0 := by intro he; rw [he] at hz; norm_num at hz
  have hi := actualXiComplexLaplace_mul_eq_logDerivative hz
  change (z + 1 / 2) * (z * actualXiComplexLaplace z) = actualXiSevenReturn (z + 1 / 2) at hi
  rw [actualXiSevenReturn_eq_regularization hs0 hs1
    (riemannZeta_ne_zero_of_one_le_re hs.le)] at hi
  unfold actualXiLaplacePoleOneRegularization
  apply (eq_div_iff (mul_ne_zero hs0 hz0)).mpr
  linear_combination hi

/-- The genuine initial-domain Laplace integral has a finite Abel limit at z = one half. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Attempt06/Variant1325f021b004189a735765263e70314c22f694c839b98b59e1f31e4d2f7ebe1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Attempt06/Variant1325f021b004189a735765263e70314c22f694c839b98b59e1f31e4d2f7ebe1f.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26b38e2912925233f60a85619c5404a17d04c0f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
