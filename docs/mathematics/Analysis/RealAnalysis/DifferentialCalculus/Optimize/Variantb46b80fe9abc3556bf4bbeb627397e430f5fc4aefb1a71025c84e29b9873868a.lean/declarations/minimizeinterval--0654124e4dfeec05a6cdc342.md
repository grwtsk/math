# minimizeInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a268e225312527d66a5bb97b2f7990fd823ce17b8f9b581bbc44a808dd353e0f",
  "kind": "def",
  "lexical_name": "minimizeInterval",
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
  "slug": "minimizeinterval--0654124e4dfeec05a6cdc342",
  "source": {
    "blob": "9ca70cedf89542b60ae036f418c0b4be33db63fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 76,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0654124e4dfeec05a6cdc342c880c1dea10790a1a4cc13aefc34d0eae691484c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a268e225312527d66a5bb97b2f7990fd823ce17b8f9b581bbc44a808dd353e0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def minimizeInterval (e : Expr) (I : IntervalRat) (varIdx : Nat)
    (maxDepth : ℕ) : OptResult :=
  go I maxDepth
where
  go (J : IntervalRat) (depth : ℕ) : OptResult :=
    if depth = 0 then
      -- Base case: just use interval evaluation
      { valueBound := evalInterval1 e J
        argBound := some J
        depth := maxDepth }
    else
      -- Check monotonicity
      if derivStrictlyPositive e J varIdx then
        -- f is increasing, minimum is at left endpoint
        { valueBound := evalInterval1 e (IntervalRat.singleton J.lo)
          argBound := some (IntervalRat.singleton J.lo)
          depth := maxDepth - depth }
      else if derivStrictlyNegative e J varIdx then
        -- f is decreasing, minimum is at right endpoint
        { valueBound := evalInterval1 e (IntervalRat.singleton J.hi)
          argBound := some (IntervalRat.singleton J.hi)
          depth := maxDepth - depth }
      else
        -- Bisect and take the better bound
        let (J₁, J₂) := J.bisect
        let r₁ := go J₁ (depth - 1)
        let r₂ := go J₂ (depth - 1)
        -- Take the interval with smaller lower bound
        if h : r₁.valueBound.lo ≤ r₂.valueBound.lo then
          { valueBound :=
              { lo := r₁.valueBound.lo
                hi := min r₁.valueBound.hi r₂.valueBound.hi
                le := by
                  apply le_min
                  · exact r₁.valueBound.le
                  · calc r₁.valueBound.lo ≤ r₂.valueBound.lo := h
                      _ ≤ r₂.valueBound.hi := r₂.valueBound.le }
            argBound := r₁.argBound
            depth := max r₁.depth r₂.depth }
        else
          { valueBound :=
              { lo := r₂.valueBound.lo
                hi := min r₁.valueBound.hi r₂.valueBound.hi
                le := by
                  apply le_min
                  · calc r₂.valueBound.lo ≤ r₁.valueBound.lo := le_of_lt (not_le.mp h)
                      _ ≤ r₁.valueBound.hi := r₁.valueBound.le
                  · exact r₂.valueBound.le }
            argBound := r₂.argBound
            depth := max r₁.depth r₂.depth }

/-- Base case correctness: interval evaluation gives a valid lower bound.
    This theorem is FULLY PROVED - no sorry, no axioms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ca70cedf89542b60ae036f418c0b4be33db63fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
