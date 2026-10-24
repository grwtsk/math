# projectiveQuadraticReadout_return

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3aa8f41-f248-8ccc-8a35-f08da615b23b",
  "kind": "theorem",
  "lexical_name": "projectiveQuadraticReadout_return",
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
  "slug": "projectivequadraticreadout-return--3b477e6fb96d290b2756bd2d",
  "source": {
    "blob": "05c69220b9c2d37aa58346bb6a7aaf01401e661f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 115,
    "path": "GRWTSK/NumberTheory/Farey/ProjectiveQuadraticChannel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b477e6fb96d290b2756bd2d36702976e1d98eb5c196b0247feceb724cbe4c3f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3aa8f41-f248-8ccc-8a35-f08da615b23b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem projectiveQuadraticReadout_return (v : Vec3) :
    projectiveQuadraticReadout (modThreeReturn.mulVec v) =
      (-1 : ℂ) * projectiveQuadraticReadout v := by
  change ternaryComplexSign (quadraticSignal (modThreeReturn.mulVec v)) =
    (-1 : ℂ) * ternaryComplexSign (quadraticSignal v)
  rw [quadraticSignal_return, ternaryComplexSign_neg]
  ring

/-- The signal genuinely survives the projective quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/ProjectiveQuadraticChannel.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05c69220b9c2d37aa58346bb6a7aaf01401e661f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
