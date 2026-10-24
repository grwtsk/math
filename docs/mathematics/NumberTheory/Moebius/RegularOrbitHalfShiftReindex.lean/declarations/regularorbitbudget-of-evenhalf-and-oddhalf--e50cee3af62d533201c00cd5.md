# regularOrbitBudget_of_evenHalf_and_oddHalf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c2e5a6f-1f5a-bcba-de4f-a7cc280d5c2d",
  "kind": "theorem",
  "lexical_name": "regularOrbitBudget_of_evenHalf_and_oddHalf",
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
  "slug": "regularorbitbudget-of-evenhalf-and-oddhalf--e50cee3af62d533201c00cd5",
  "source": {
    "blob": "ef8cbe12fc85e532e9c650074cb5d49d96bcbc32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 384,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e50cee3af62d533201c00cd578840e3ac7a22f5f10c2b74c1a3d9a064dbb4909",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c2e5a6f-1f5a-bcba-de4f-a7cc280d5c2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularOrbitBudget_of_evenHalf_and_oddHalf
    (hEven : DyadicNaturalScaleTwoNonunitEvenHalfShiftBudget)
    (hOdd : DyadicNaturalScaleTwoNonunitOddHalfShiftBudget) :
    DyadicNaturalScaleTwoNonunitRegularOrbitBudget :=
  regularOrbitBudget_of_even_and_odd_shift
    (dyadicEvenHalfShiftBudget_iff_evenShift.mp hEven)
    (dyadicOddHalfShiftBudget_iff_oddShift.mp hOdd)

/-- Conditional downstream composition with the unchanged zero mode,
exceptional orbit, and two-unit branch. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef8cbe12fc85e532e9c650074cb5d49d96bcbc32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
