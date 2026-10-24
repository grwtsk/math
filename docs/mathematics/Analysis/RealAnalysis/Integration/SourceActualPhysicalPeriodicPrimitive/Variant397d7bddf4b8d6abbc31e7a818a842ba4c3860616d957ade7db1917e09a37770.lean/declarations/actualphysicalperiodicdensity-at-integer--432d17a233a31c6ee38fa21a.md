# actualPhysicalPeriodicDensity_at_integer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4a0acc4-b4fd-d647-e8ee-0af6ce82c7d8",
  "kind": "theorem",
  "lexical_name": "actualPhysicalPeriodicDensity_at_integer",
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
  "slug": "actualphysicalperiodicdensity-at-integer--432d17a233a31c6ee38fa21a",
  "source": {
    "blob": "0c6fc08b9ed50d8a30fbf080bdea0376e5c2c6a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 105,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPhysicalPeriodicPrimitive/Variant397d7bddf4b8d6abbc31e7a818a842ba4c3860616d957ade7db1917e09a37770.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:432d17a233a31c6ee38fa21ad9827d37f2c036c586180d288d07ead39810ef97",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualPhysicalPeriodicPrimitive/Variant397d7bddf4b8d6abbc31e7a818a842ba4c3860616d957ade7db1917e09a37770.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4a0acc4-b4fd-d647-e8ee-0af6ce82c7d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPhysicalPeriodicDensity_at_integer (U M : ℕ) :
    actualPhysicalPeriodicDensity U (M : ℝ) =
      actualSignedPeriodicPrimitive U (M + 1) - actualSignedPeriodicPrimitive U M := by
  unfold actualPhysicalPeriodicDensity
  rw [Nat.floor_natCast]
  exact (aggregate_increment U M).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualPhysicalPeriodicPrimitive/Variant397d7bddf4b8d6abbc31e7a818a842ba4c3860616d957ade7db1917e09a37770.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPhysicalPeriodicPrimitive/Variant397d7bddf4b8d6abbc31e7a818a842ba4c3860616d957ade7db1917e09a37770.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c6fc08b9ed50d8a30fbf080bdea0376e5c2c6a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
