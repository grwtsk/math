# stageThree_multiplicative_lt_pivot_ordinary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f330130e-a044-9960-cc6b-7ab377ae946e",
  "kind": "theorem",
  "lexical_name": "stageThree_multiplicative_lt_pivot_ordinary",
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
  "slug": "stagethree-multiplicative-lt-pivot-ordinary--dd8c80a9f8ed14dce9f92ea3",
  "source": {
    "blob": "fb3f61846511ff9edf8759c611ce860d35ac4325",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 305,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd8c80a9f8ed14dce9f92ea309c971f8c2835e52fbd074c61e6fb81d1f5d99f1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f330130e-a044-9960-cc6b-7ab377ae946e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stageThree_multiplicative_lt_pivot_ordinary :
    realMultiplicativeMoment 1 <
      reciprocalPivot * realOrdinaryMoment 1 := by
  have hpos := stageThreeReciprocalGap_integral_pos
  have hdiv := canonicalTentReal_div_integrableOn 1
  have htent : IntegrableOn (canonicalTentReal 1) (Set.Ioi (0 : ℝ)) :=
    (canonicalTentReal_integrable 1).integrableOn
  have heq :
      (∫ x in Set.Ioi (0 : ℝ), stageThreeReciprocalGap x) =
        reciprocalPivot * realOrdinaryMoment 1 -
          realMultiplicativeMoment 1 := by
    unfold stageThreeReciprocalGap realMultiplicativeMoment realOrdinaryMoment
    rw [integral_sub (htent.const_mul reciprocalPivot) hdiv,
      integral_const_mul]
  rw [heq] at hpos
  exact sub_pos.mp hpos

/-- Determinant of the two moment functionals on the stage-two/stage-three span. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb3f61846511ff9edf8759c611ce860d35ac4325` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
