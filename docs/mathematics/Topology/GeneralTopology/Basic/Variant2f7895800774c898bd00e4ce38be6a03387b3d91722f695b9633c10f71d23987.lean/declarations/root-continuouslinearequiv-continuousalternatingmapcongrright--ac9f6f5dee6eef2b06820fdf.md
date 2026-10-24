# _root_.ContinuousLinearEquiv.continuousAlternatingMapCongrRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab77958b6379c4a54ff6dd7597722e51821c97099a5285463ddedf16e9a1c7f7",
  "kind": "def",
  "lexical_name": "_root_.ContinuousLinearEquiv.continuousAlternatingMapCongrRight",
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
  "slug": "root-continuouslinearequiv-continuousalternatingmapcongrright--ac9f6f5dee6eef2b06820fdf",
  "source": {
    "blob": "b21619ae8a5a046aa4cc639ee8f498b486e57114",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 410,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant2f7895800774c898bd00e4ce38be6a03387b3d91722f695b9633c10f71d23987.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac9f6f5dee6eef2b06820fdfa9ec70ccb1797ba7591cda73c0f0bd11389d2e9f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant2f7895800774c898bd00e4ce38be6a03387b3d91722f695b9633c10f71d23987.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab77958b6379c4a54ff6dd7597722e51821c97099a5285463ddedf16e9a1c7f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.ContinuousLinearEquiv.continuousAlternatingMapCongrRight (g : F ≃L[𝕜] G) :
    (E [⋀^ι]→L[𝕜] F) ≃L[𝕜] (E [⋀^ι]→L[𝕜] G) where
  __ := g.continuousAlternatingMapCongrRightEquiv
  __ := compContinuousAlternatingMapCLM 𝕜 E F G g.toContinuousLinearMap
  continuous_toFun :=
    (compContinuousAlternatingMapCLM 𝕜 E F G g.toContinuousLinearMap).continuous
  continuous_invFun :=
    (compContinuousAlternatingMapCLM 𝕜 E G F g.symm.toContinuousLinearMap).continuous

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant2f7895800774c898bd00e4ce38be6a03387b3d91722f695b9633c10f71d23987.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant2f7895800774c898bd00e4ce38be6a03387b3d91722f695b9633c10f71d23987.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b21619ae8a5a046aa4cc639ee8f498b486e57114` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
