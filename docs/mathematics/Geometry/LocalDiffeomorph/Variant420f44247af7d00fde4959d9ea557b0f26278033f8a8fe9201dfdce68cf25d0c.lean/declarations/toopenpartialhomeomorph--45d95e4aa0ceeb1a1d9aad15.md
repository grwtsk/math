# toOpenPartialHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67d1a464a2fb4775cbaca5f1adec3c4b4b4176319382a76c67eb36c9fad43b2e",
  "kind": "def",
  "lexical_name": "toOpenPartialHomeomorph",
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
  "slug": "toopenpartialhomeomorph--45d95e4aa0ceeb1a1d9aad15",
  "source": {
    "blob": "da2f771d21560dafda5cfd832d4ce0655565f558",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 119,
    "path": "GRWTSK/Geometry/LocalDiffeomorph/Variant420f44247af7d00fde4959d9ea557b0f26278033f8a8fe9201dfdce68cf25d0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45d95e4aa0ceeb1a1d9aad15d6f51e8afa1e68d64084058e74cfbeafb524e748",
  "verification": {
    "reference": "docs/verification/Geometry/LocalDiffeomorph/Variant420f44247af7d00fde4959d9ea557b0f26278033f8a8fe9201dfdce68cf25d0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67d1a464a2fb4775cbaca5f1adec3c4b4b4176319382a76c67eb36c9fad43b2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toOpenPartialHomeomorph : OpenPartialHomeomorph M N where
  toPartialEquiv := Φ.toPartialEquiv
  open_source := Φ.open_source
  open_target := Φ.open_target
  continuousOn_toFun := Φ.contMDiffOn_toFun.continuousOn
  continuousOn_invFun := Φ.contMDiffOn_invFun.continuousOn

/-- The inverse of a local diffeomorphism. -/
@[expose, simps toPartialEquiv]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/LocalDiffeomorph/Variant420f44247af7d00fde4959d9ea557b0f26278033f8a8fe9201dfdce68cf25d0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/LocalDiffeomorph/Variant420f44247af7d00fde4959d9ea557b0f26278033f8a8fe9201dfdce68cf25d0c.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da2f771d21560dafda5cfd832d4ce0655565f558` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
