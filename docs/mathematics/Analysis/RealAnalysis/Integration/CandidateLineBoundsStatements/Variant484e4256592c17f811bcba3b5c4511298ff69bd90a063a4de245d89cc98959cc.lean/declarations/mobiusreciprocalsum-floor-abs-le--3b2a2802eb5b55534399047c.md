# mobiusReciprocalSum_floor_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac9ba422-189c-7fdb-997d-3c0825016039",
  "kind": "theorem",
  "lexical_name": "mobiusReciprocalSum_floor_abs_le",
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
  "slug": "mobiusreciprocalsum-floor-abs-le--3b2a2802eb5b55534399047c",
  "source": {
    "blob": "cbeeb2173fdc2ea5cc4cfc0ee589c3960fedaf11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 328,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant484e4256592c17f811bcba3b5c4511298ff69bd90a063a4de245d89cc98959cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b2a2802eb5b55534399047cbcd915bf1d7cfeaba4ee68428e37dfd371353633",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant484e4256592c17f811bcba3b5c4511298ff69bd90a063a4de245d89cc98959cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac9ba422-189c-7fdb-997d-3c0825016039`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mobiusReciprocalSum_floor_abs_le (x : ℝ) (hx : 1 ≤ x) :
    |mobiusReciprocalSum ⌊x⌋₊| ≤ 1 + Real.log x :=
  (mobiusReciprocalSum_abs_le_harmonic _).trans (harmonic_floor_le_one_add_log x hx)

/-- In the closed right half-plane, the exact integrand is bounded by an inverse-square-root
weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant484e4256592c17f811bcba3b5c4511298ff69bd90a063a4de245d89cc98959cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant484e4256592c17f811bcba3b5c4511298ff69bd90a063a4de245d89cc98959cc.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbeeb2173fdc2ea5cc4cfc0ee589c3960fedaf11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
