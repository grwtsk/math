# trace_checked

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbb91723-fb65-eba2-101a-094edee58174",
  "kind": "theorem",
  "lexical_name": "trace_checked",
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
  "slug": "trace-checked--c142c45778c99ff43dcd870d",
  "source": {
    "blob": "76d8315e713e699a00fb97e56bd097cf6ba6ffcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 52,
    "path": "GRWTSK/Analysis/ErrorBounds/RationalRoundedExp.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c142c45778c99ff43dcd870d3768d206e25ae36e03346f32636693e1604b5a57",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/RationalRoundedExp.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbb91723-fb65-eba2-101a-094edee58174`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trace_checked (bits : ℕ) {w : Coordinates} (hw : w.1 ≤ 0) (s M : ℕ)
    (hg : (magnitude w / (2 ^ s : ℕ)) / (M + 1 : ℕ) ≤ (1 / 2 : ℚ)) :
    RationalExpTrace.check w (magnitude w) s M (trace bits w s M) = true := by
  apply (RationalExpTrace.check_iff_valid _ _ _ _ _).mpr
  refine ⟨hw, (inBall_iff _ _).mpr (norm_le_magnitude w), hg,
    by simp [trace], by simp [trace], ?_, ?_⟩
  · rw [trace_value bits w s M 0 (Nat.zero_le s)]
    exact (inBall_iff _ _).mpr (norm_le_magnitude _)
  · intro j hj
    have hj' := Finset.mem_range.mp hj
    rw [trace_value bits w s M (j + 1) (by omega),
      trace_value bits w s M j (by omega), trace_radius bits w s M j hj']
    exact (inBall_iff _ _).mpr (norm_le_magnitude _)

/-- The outward allowance is the existing dominating recurrence, not the seed tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/RationalRoundedExp.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/RationalRoundedExp.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76d8315e713e699a00fb97e56bd097cf6ba6ffcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
