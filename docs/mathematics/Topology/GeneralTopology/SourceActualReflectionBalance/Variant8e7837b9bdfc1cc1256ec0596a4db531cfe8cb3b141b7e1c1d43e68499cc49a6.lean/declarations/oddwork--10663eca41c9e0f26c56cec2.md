# oddWork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc27c2d7b7ab645bb020b560602a1a0efc0610c7f1b458d11e774685f81839b3",
  "kind": "def",
  "lexical_name": "oddWork",
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
  "slug": "oddwork--10663eca41c9e0f26c56cec2",
  "source": {
    "blob": "b54ae318bf04e28a81413507f1838b6e7cb4e506",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualReflectionBalance/Variant8e7837b9bdfc1cc1256ec0596a4db531cfe8cb3b141b7e1c1d43e68499cc49a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10663eca41c9e0f26c56cec2062d48db4e153ca5d000e799757e808d27512e1f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualReflectionBalance/Variant8e7837b9bdfc1cc1256ec0596a4db531cfe8cb3b141b7e1c1d43e68499cc49a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc27c2d7b7ab645bb020b560602a1a0efc0610c7f1b458d11e774685f81839b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def oddWork (A : ℝ) : ℝ :=
  ∫ t in lowerEndpoint..2 * A,
    oddPart lowerEndpoint (2 * A) centeredError t *
      oddPart lowerEndpoint (2 * A) (sourceWeight explicitSecondDerivative A) t

/-- Artificial mixed reflected work introduced by estimating the two sectors separately. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualReflectionBalance/Variant8e7837b9bdfc1cc1256ec0596a4db531cfe8cb3b141b7e1c1d43e68499cc49a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualReflectionBalance/Variant8e7837b9bdfc1cc1256ec0596a4db531cfe8cb3b141b7e1c1d43e68499cc49a6.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b54ae318bf04e28a81413507f1838b6e7cb4e506` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
