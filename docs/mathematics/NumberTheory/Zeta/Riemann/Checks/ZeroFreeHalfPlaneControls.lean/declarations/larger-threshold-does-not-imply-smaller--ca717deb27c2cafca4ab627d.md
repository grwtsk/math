# larger_threshold_does_not_imply_smaller

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1d54c1e-230b-cbe0-6808-278d07919b4c",
  "kind": "theorem",
  "lexical_name": "larger_threshold_does_not_imply_smaller",
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
  "slug": "larger-threshold-does-not-imply-smaller--ca717deb27c2cafca4ab627d",
  "source": {
    "blob": "b2d1a0938f9650a5fede3669151eddc5164dbada",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 37,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/ZeroFreeHalfPlaneControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca717deb27c2cafca4ab627d8dc9e00f3b6887e521771ed4072633f2386b299f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/ZeroFreeHalfPlaneControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1d54c1e-230b-cbe0-6808-278d07919b4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem larger_threshold_does_not_imply_smaller
    {a b : ℝ} (hab : a < b) :
    (∀ s : ℂ, b < s.re →
      ¬ VerticalLineZero ((a + b) / 2) s) ∧
    ¬ (∀ s : ℂ, a < s.re →
      ¬ VerticalLineZero ((a + b) / 2) s) := by
  constructor
  · intro s hright hzero
    have hmid : (a + b) / 2 < b := by linarith
    unfold VerticalLineZero at hzero
    linarith
  · intro hsmall
    have haleft : a < (a + b) / 2 := by linarith
    have hnot := hsmall (((a + b) / 2 : ℝ) : ℂ) (by simpa using haleft)
    exact hnot (by simp [VerticalLineZero])

/-- The unconditional threshold `1` is weaker than the critical-line threshold
in the ordering used by the main module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/ZeroFreeHalfPlaneControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/ZeroFreeHalfPlaneControls.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2d1a0938f9650a5fede3669151eddc5164dbada` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
