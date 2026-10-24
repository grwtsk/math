# inversePrimitive_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e74be82-c416-4ad6-4575-febe8c56b4e1",
  "kind": "theorem",
  "lexical_name": "inversePrimitive_hasDerivAt",
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
  "slug": "inverseprimitive-hasderivat--26099d46ef39fe2f3eb4e66e",
  "source": {
    "blob": "4e28575a58b6d12bba06b39ee61d0a300415cf6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 181,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectSquareShell/Variant67ce1beac579d835ed5c8b86fb0cb7ebfb617118ca20ad0d22e3e951d25b28cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26099d46ef39fe2f3eb4e66e0d3060ee7b2f9c752d609d837c6e6a5313e3153d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectSquareShell/Variant67ce1beac579d835ed5c8b86fb0cb7ebfb617118ca20ad0d22e3e951d25b28cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e74be82-c416-4ad6-4575-febe8c56b4e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inversePrimitive_hasDerivAt {x : ℝ} (hx : 0 < x) :
    HasDerivAt inversePrimitive (inverseThreeHalves x) x := by
  unfold inversePrimitive inverseThreeHalves
  have h := (Real.hasDerivAt_rpow_const
    (p := -(1 / 2 : ℝ)) (Or.inl hx.ne')).const_mul (-2)
  apply h.congr_deriv
  rw [show -(1 / 2 : ℝ) - 1 = -(3 / 2 : ℝ) by ring, Real.rpow_neg hx.le]
  ring

/-- Continuity on the exact finite comparison interval excludes zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectSquareShell/Variant67ce1beac579d835ed5c8b86fb0cb7ebfb617118ca20ad0d22e3e951d25b28cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectSquareShell/Variant67ce1beac579d835ed5c8b86fb0cb7ebfb617118ca20ad0d22e3e951d25b28cd.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e28575a58b6d12bba06b39ee61d0a300415cf6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
