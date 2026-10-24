# sqrtBaselinePrimitive_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee74a6c7-0547-3cb5-597c-e0c300ae8e55",
  "kind": "theorem",
  "lexical_name": "sqrtBaselinePrimitive_hasDerivAt",
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
  "slug": "sqrtbaselineprimitive-hasderivat--b910c97a368e06de36e8338a",
  "source": {
    "blob": "cfeaf51ced416c8ae6abaaa09c87cd8b3339b8a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiSqrtClosedReadout/Variant8ed56875a918e9349d8ce89a804b7a768cc280e5bfa0bbcccf99046c2e75fc01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b910c97a368e06de36e8338a30a3d37d514dec3aad2c85d10b7902417feb2955",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiSqrtClosedReadout/Variant8ed56875a918e9349d8ce89a804b7a768cc280e5bfa0bbcccf99046c2e75fc01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee74a6c7-0547-3cb5-597c-e0c300ae8e55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrtBaselinePrimitive_hasDerivAt (c x : ℝ) (hx : 0 < x) :
    HasDerivAt (sqrtBaselinePrimitive c) ((c - x) / x ^ (3 / 2 : ℝ)) x := by
  have hs := (Real.hasDerivAt_rpow_const (x := x) (p := (1 / 2 : ℝ))
    (Or.inl hx.ne')).const_mul 2
  have he : x ^ (-1 / 2 : ℝ) = x / x ^ (3 / 2 : ℝ) := by
    rw [show (-1 / 2 : ℝ) = 1 - 3 / 2 by ring, Real.rpow_sub hx, Real.rpow_one]
  exact (((halfAtomPrimitive_hasDerivAt x hx).const_mul c).sub hs).congr_deriv (by
    rw [show (1 / 2 - 1 : ℝ) = -1 / 2 by ring, he]
    ring)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiSqrtClosedReadout/Variant8ed56875a918e9349d8ce89a804b7a768cc280e5bfa0bbcccf99046c2e75fc01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiSqrtClosedReadout/Variant8ed56875a918e9349d8ce89a804b7a768cc280e5bfa0bbcccf99046c2e75fc01.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfeaf51ced416c8ae6abaaa09c87cd8b3339b8a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
