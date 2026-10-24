# verify_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39d8eb65-ee8f-6efc-e238-f89829a3b050",
  "kind": "theorem",
  "lexical_name": "verify_sound",
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
  "slug": "verify-sound--1c2a41b1740a5a47ef687910",
  "source": {
    "blob": "2d5a94a9b3306e31e3d819315c91046fa2cc75a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 170,
    "path": "GRWTSK/Analysis/Complex/RationalTentEvaluation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c2a41b1740a5a47ef6879104cb9fb73a196e53f4518bd95e31c4b724c51633c",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39d8eb65-ee8f-6efc-e238-f89829a3b050`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_sound (x h : ℚ) (p : Input) (tolerance : ℚ) (out : State)
    (haccept : verify x h p tolerance out = true) (z : ℂ) (hz : z.re ≤ 1)
    (hcoord : ‖z - QComplex.embed p.center‖ ≤ (p.coordinateError : ℝ)) :
    ‖tentKernel (x : ℝ) (h : ℝ) z - QComplex.embed out.value‖ ≤ (out.error : ℝ) ∧
      out.error ≤ tolerance := by
  have he : evaluate x h p tolerance = some out := by
    simpa only [verify, decide_eq_true_eq] using haccept
  obtain ⟨hp, ht, rfl⟩ := (evaluate_some_iff x h p tolerance out).mp he
  exact ⟨compute_sound x h p hp z hz hcoord, ht⟩

end GRWTSK.Analysis.Complex.RationalTentEvaluation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalTentEvaluation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalTentEvaluation.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d5a94a9b3306e31e3d819315c91046fa2cc75a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
