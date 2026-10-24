# original_seed_valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be648a4b-6ab4-086e-085e-a2c02d804cab",
  "kind": "theorem",
  "lexical_name": "original_seed_valid",
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
  "slug": "original-seed-valid--035dda49f2cfde391fc3e520",
  "source": {
    "blob": "b90ac2c3a8eab147d460e3e35c555d3432e35b38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 181,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:035dda49f2cfde391fc3e520831f54913622672f73995b79d513e6bbdb51dd5a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be648a4b-6ab4-086e-085e-a2c02d804cab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_seed_valid : SeedValid 64
    (RationalPowerEvaluation.seed 3 (sourceExponent center) (schedule 3))
    (RationalPowerEvaluation.seedError 3 (sourceExponent center) (schedule 3)) start := by
  rw [seed_identity, seed_error_identity]
  have hE : (0 : ℚ) ≤ (errorNum : ℚ) / errorDen :=
    div_nonneg (by exact_mod_cast errorNum_nonneg)
      (by exact_mod_cast denominators_pos.2.2.2.2.le)
  have hr := floor_window_scaled seedDen (scaleZ 64) seedNum.1 start.realPart
    denominators_pos.2.1 real_integer_window
  have hi := floor_window_scaled seedDen (scaleZ 64) seedNum.2 start.imagPart
    denominators_pos.2.1 imag_integer_window
  have he := error_window_scaled errorDen (scaleZ 64) errorNum start.errorPart
    denominators_pos.2.2.2.2 error_integer_window
  have hgrid : scaleQ 64 ≠ 0 := ne_of_gt (scaleQ_pos 64)
  have herr : scaleQ 64 * ((errorNum : ℚ) / errorDen + roundoffQ 64) =
      scaleQ 64 * ((errorNum : ℚ) / errorDen) + 2 := by
    unfold roundoffQ
    field_simp [hgrid] <;> ring
  simp only [cast_scaleZ] at hr hi he
  refine ⟨hE, by norm_num [start], ?_, ?_, ?_⟩
  · exact hr
  · exact hi
  · simpa only [herr] using he

/-- This equality is only the initialized state, not the restored endpoint or a full block. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdSeed.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b90ac2c3a8eab147d460e3e35c555d3432e35b38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
