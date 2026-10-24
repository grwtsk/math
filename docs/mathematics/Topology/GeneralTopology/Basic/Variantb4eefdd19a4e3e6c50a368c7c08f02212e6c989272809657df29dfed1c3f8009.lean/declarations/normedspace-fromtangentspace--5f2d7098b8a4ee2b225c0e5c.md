# NormedSpace.fromTangentSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec0400aa80c8866c73a683b2566310e35aacf1e3ebe4409ac04da5281f4ab83f",
  "kind": "def",
  "lexical_name": "NormedSpace.fromTangentSpace",
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
  "slug": "normedspace-fromtangentspace--5f2d7098b8a4ee2b225c0e5c",
  "source": {
    "blob": "680c70c7452343c30c386f7b04c79ff48cd7f3ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1069,
    "line": 1065,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f2d7098b8a4ee2b225c0e5c7d6ae2b728c5c44f5e403414fd303aeee9d4305e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec0400aa80c8866c73a683b2566310e35aacf1e3ebe4409ac04da5281f4ab83f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1065–1069.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def NormedSpace.fromTangentSpace (v : E) : TangentSpace 𝓘(𝕜, E) v ≃L[𝕜] E :=
  tangentSpaceCastModel 𝓘(𝕜, E) v

/-- Definitional identification between the tangent space of a manifold at two points. This only
makes sense mathematically when `x = y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.lean#L1065).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `680c70c7452343c30c386f7b04c79ff48cd7f3ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
