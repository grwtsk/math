# atanhIntervalRefined'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c355569b3cf1b6dca2f49acc251186e9f3c84a49274797b6cd4fe8cc7787804",
  "kind": "def",
  "lexical_name": "atanhIntervalRefined'",
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
  "slug": "atanhintervalrefined--368d08f02b339389f845ddee",
  "source": {
    "blob": "4389c9871d08669b1ef5b23c4546296b381b9551",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 120,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant2482f6656e57d3ca1e84b72818ae29f709ff717ccc4daa4060240e533ff6890c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:368d08f02b339389f845ddee3b0157379b4e182e323448a195d39140de2783c7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant2482f6656e57d3ca1e84b72818ae29f709ff717ccc4daa4060240e533ff6890c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c355569b3cf1b6dca2f49acc251186e9f3c84a49274797b6cd4fe8cc7787804`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def atanhIntervalRefined' (I : IntervalRat) (hlo : -1 < I.lo) (hhi : I.hi < 1) : IntervalRat :=
  -- Use Taylor model only when interval is small AND radius is bounded away from 1
  if I.width ≤ 1 ∧ max (|I.lo|) (|I.hi|) ≤ 99/100 then
    (TaylorModel.tmAtanh I 5).bound
  else
    -- Use computed bound via monotonicity
    let Iball : IntervalRat.IntervalRatInUnitBall := ⟨I.lo, I.hi, I.le, hlo, hhi⟩
    IntervalRat.atanhIntervalComputed Iball

/-- Refined interval bound for atanh (version without proof arguments, falls back to default) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant2482f6656e57d3ca1e84b72818ae29f709ff717ccc4daa4060240e533ff6890c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant2482f6656e57d3ca1e84b72818ae29f709ff717ccc4daa4060240e533ff6890c.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4389c9871d08669b1ef5b23c4546296b381b9551` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
