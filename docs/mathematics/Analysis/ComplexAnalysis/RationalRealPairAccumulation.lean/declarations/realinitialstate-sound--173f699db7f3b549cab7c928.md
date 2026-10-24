# realInitialState_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efc5c04a-46df-772b-6d36-9df456c0a97b",
  "kind": "theorem",
  "lexical_name": "realInitialState_sound",
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
  "slug": "realinitialstate-sound--173f699db7f3b549cab7c928",
  "source": {
    "blob": "0b15c5074cba28018eacb315f9c22d4b5f3d65ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 69,
    "path": "GRWTSK/Analysis/Complex/RationalRealPairAccumulation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:173f699db7f3b549cab7c928193bc6f8dc07641aa92ebca8c89fd4c52a436ffe",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalRealPairAccumulation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efc5c04a-46df-772b-6d36-9df456c0a97b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realInitialState_sound
    (bits : ℕ) (seed initial : ℚ) (a : ℂ)
    (ha : ‖a - ((seed : ℝ) : ℂ)‖ ≤ (initial : ℝ)) :
    ‖a - QComplex.embed (realInitialState bits seed initial).value‖ ≤
      ((realInitialState bits seed initial).error : ℝ) := by
  have hroundR :=
    GRWTSK.Analysis.Complex.DyadicRoundedSquaring.abs_sub_down_le bits (seed : ℝ)
  have hround :
      ‖((seed : ℝ) : ℂ) -
          QComplex.embed (realInitialState bits seed initial).value‖ ≤
        (realRoundoffQ bits : ℝ) := by
    calc
      ‖((seed : ℝ) : ℂ) -
          QComplex.embed (realInitialState bits seed initial).value‖ =
          ‖(((seed : ℝ) - (downQ bits seed : ℝ) : ℝ) : ℂ)‖ := by
            congr 1
            ext <;> simp [realInitialState, QComplex.embed]
      _ = |(seed : ℝ) - (downQ bits seed : ℝ)| := by
            rw [Complex.norm_real, Real.norm_eq_abs]
      _ ≤ 1 / GRWTSK.Analysis.Complex.DyadicRoundedSquaring.scale bits := by
            rw [cast_downQ]
            exact hroundR
      _ = (realRoundoffQ bits : ℝ) := by
            rw [cast_realRoundoffQ]
  have hupper :
      (initial : ℝ) + (realRoundoffQ bits : ℝ) ≤
        ((realInitialState bits seed initial).error : ℝ) := by
    have hup :=
      (GRWTSK.Analysis.Complex.DyadicRoundedSquaring.up_bounds bits
        ((initial + realRoundoffQ bits : ℚ) : ℝ)).1
    simpa [realInitialState] using hup
  calc
    ‖a - QComplex.embed (realInitialState bits seed initial).value‖ =
        ‖(a - ((seed : ℝ) : ℂ)) +
          (((seed : ℝ) : ℂ) -
            QComplex.embed (realInitialState bits seed initial).value)‖ := by
          congr 1
          ring
    _ ≤ ‖a - ((seed : ℝ) : ℂ)‖ +
        ‖((seed : ℝ) : ℂ) -
          QComplex.embed (realInitialState bits seed initial).value‖ :=
      norm_add_le _ _
    _ ≤ (initial : ℝ) + (realRoundoffQ bits : ℝ) :=
      add_le_add ha hround
    _ ≤ _ := hupper

/-- The exact real center of all multiplicity-weighted conjugate pairs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalRealPairAccumulation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalRealPairAccumulation.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b15c5074cba28018eacb315f9c22d4b5f3d65ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
