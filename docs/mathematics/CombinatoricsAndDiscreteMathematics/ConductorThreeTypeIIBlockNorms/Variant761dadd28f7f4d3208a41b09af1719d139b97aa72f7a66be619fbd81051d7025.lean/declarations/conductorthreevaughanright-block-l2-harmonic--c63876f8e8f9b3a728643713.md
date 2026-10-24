# conductorThreeVaughanRight_block_l2_harmonic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b6f2eb4-10cd-27ac-c033-416731744760",
  "kind": "theorem",
  "lexical_name": "conductorThreeVaughanRight_block_l2_harmonic",
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
  "slug": "conductorthreevaughanright-block-l2-harmonic--c63876f8e8f9b3a728643713",
  "source": {
    "blob": "c671112b21e31264fb82ae7f977de5bb083e7d0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 116,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c63876f8e8f9b3a7286437136a5fe5bc5eae342ebcc722e8c2b47c98c72ae887",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b6f2eb4-10cd-27ac-c033-416731744760`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThreeVaughanRight_block_l2_harmonic {N : ℕ}
    (B : TypeIIDyadicBlock N) :
    ‖blockRightEuclideanCoefficient B‖ ≤
      Real.sqrt ((vaughanFourthRootCutoff N : ℝ) *
        (2 * B.K : ℝ) *
        (harmonic (vaughanFourthRootCutoff N) : ℝ)) := by
  have hharmonic : 0 ≤
      (harmonic (vaughanFourthRootCutoff N) : ℝ) := by
    exact (Real.log_nonneg (by
      exact_mod_cast (show 1 ≤ vaughanFourthRootCutoff N + 1 by omega))).trans
      (log_add_one_le_harmonic (vaughanFourthRootCutoff N))
  apply (Real.le_sqrt (norm_nonneg _)
    (by
      exact mul_nonneg (mul_nonneg (by positivity) (by positivity)) hharmonic : 0 ≤
      (vaughanFourthRootCutoff N : ℝ) * (2 * B.K : ℝ) *
        (harmonic (vaughanFourthRootCutoff N) : ℝ))).2
  exact (blockRight_norm_sq_le_secondMoment B).trans (by
    simpa only [Nat.cast_mul, Nat.cast_ofNat] using
      conductorThreeVaughanRightSecondMoment_le_harmonic
        (vaughanFourthRootCutoff N) (2 * B.K))

/-- Sharp harmonic-cube energy bound for one dyadic right block. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c671112b21e31264fb82ae7f977de5bb083e7d0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
