# mobiusReciprocalSum_floor_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ba947c446260b6aec236b1eab1cca430bbfdd87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 320,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3374edcc-5378-b381-6fcb-275796da41c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aef8dc57-6063-8708-ada1-62e4d3b8d5f0",
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
  "slug": "mobiusreciprocalsum-floor-abs-le--73eee55620ba481ab09260a5",
  "source": {
    "blob": "7ba947c446260b6aec236b1eab1cca430bbfdd87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 320,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73eee55620ba481ab09260a5e8858caf9c943ba0ef40bd45db1779f96aab5cb1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aef8dc57-6063-8708-ada1-62e4d3b8d5f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–325.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ba947c446260b6aec236b1eab1cca430bbfdd87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
