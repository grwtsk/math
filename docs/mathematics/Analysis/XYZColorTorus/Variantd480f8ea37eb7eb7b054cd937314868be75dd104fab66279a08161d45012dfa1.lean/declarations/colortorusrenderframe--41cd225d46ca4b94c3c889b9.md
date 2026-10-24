# colorTorusRenderFrame

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16bbc202ca019dcd3e5d42a1079933583923b28f95de4395e985d8ffb868c57f",
  "kind": "def",
  "lexical_name": "colorTorusRenderFrame",
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
  "slug": "colortorusrenderframe--41cd225d46ca4b94c3c889b9",
  "source": {
    "blob": "02febb46fbcd7b133ac9f1fd6bbf26d897f398e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 184,
    "path": "GRWTSK/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41cd225d46ca4b94c3c889b91dac8bd56aaa13e0f61174fe3e64bc0f3b3be56e",
  "verification": {
    "reference": "docs/verification/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16bbc202ca019dcd3e5d42a1079933583923b28f95de4395e985d8ffb868c57f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def colorTorusRenderFrame
    (radii : FlatColorTorusRadii)
    (view : ColorTorusView) : ColorTorusRenderFrame where
  sourceRevision := view.xyz.revision
  sourceValue := view.xyz.value
  u := view.u
  v := view.v
  position := flatColorTorusEmbedding radii view.u view.v

@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/XYZColorTorus/Variantd480f8ea37eb7eb7b054cd937314868be75dd104fab66279a08161d45012dfa1.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02febb46fbcd7b133ac9f1fd6bbf26d897f398e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
