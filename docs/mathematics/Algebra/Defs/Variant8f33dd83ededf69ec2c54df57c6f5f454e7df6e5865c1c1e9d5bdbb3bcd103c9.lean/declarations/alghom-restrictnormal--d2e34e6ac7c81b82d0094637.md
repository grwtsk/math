# AlgHom.restrictNormal'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee23fc7540a49f23ed59117fce3dc1d4457dfa3087ee2bf38ef7b6bea2e943eb",
  "kind": "def",
  "lexical_name": "AlgHom.restrictNormal'",
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
  "slug": "alghom-restrictnormal--d2e34e6ac7c81b82d0094637",
  "source": {
    "blob": "3d0ce1a7c1c2d7452f117ca5e8906ae148d6f802",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 140,
    "path": "GRWTSK/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2e34e6ac7c81b82d0094637ad841265326e52ec5be3345c70f917d8d761674c",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee23fc7540a49f23ed59117fce3dc1d4457dfa3087ee2bf38ef7b6bea2e943eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AlgHom.restrictNormal' [Normal F E] : E ≃ₐ[F] E :=
  AlgEquiv.ofBijective (AlgHom.restrictNormal ϕ E) (AlgHom.normal_bijective F E E _)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant8f33dd83ededf69ec2c54df57c6f5f454e7df6e5865c1c1e9d5bdbb3bcd103c9.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d0ce1a7c1c2d7452f117ca5e8906ae148d6f802` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
