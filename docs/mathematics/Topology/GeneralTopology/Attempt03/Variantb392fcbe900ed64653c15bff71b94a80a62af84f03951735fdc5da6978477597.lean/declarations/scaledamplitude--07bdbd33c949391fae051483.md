# scaledAmplitude

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b9313285722aee0c0ebf5b559ec6ee3a0d85a254da8c76e4e3d3d22ea8688a1",
  "kind": "def",
  "lexical_name": "scaledAmplitude",
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
  "slug": "scaledamplitude--07bdbd33c949391fae051483",
  "source": {
    "blob": "a954437138f72c31669c930439068c48704e86b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 20,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt03/Variantb392fcbe900ed64653c15bff71b94a80a62af84f03951735fdc5da6978477597.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07bdbd33c949391fae05148313b86fc46b3089a51429c351ab714fe68f997c16",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt03/Variantb392fcbe900ed64653c15bff71b94a80a62af84f03951735fdc5da6978477597.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b9313285722aee0c0ebf5b559ec6ee3a0d85a254da8c76e4e3d3d22ea8688a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def scaledAmplitude (A : ℝ) (z : ℂ) : ℂ :=
  ((A^4*Real.sqrt A : ℝ) : ℂ)*Complex.exp (-(A : ℂ)*z)*normalizedTransform A z

/-- Fixed complex endpoint coefficient with the actual limiting normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt03/Variantb392fcbe900ed64653c15bff71b94a80a62af84f03951735fdc5da6978477597.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt03/Variantb392fcbe900ed64653c15bff71b94a80a62af84f03951735fdc5da6978477597.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a954437138f72c31669c930439068c48704e86b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
