# Homeomorph.unitBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9db7c30a59f6a86515d1e24fdb522a3f1becc352e526c5256efade49f4fb9260",
  "kind": "def",
  "lexical_name": "Homeomorph.unitBall",
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
  "slug": "homeomorph-unitball--4bf92b96dc1415c8520be3fb",
  "source": {
    "blob": "9a4272033b17ee49be323cf428398394841c55fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4bf92b96dc1415c8520be3fb2cc0bc985f97ee8ce5aaacaab7976ad2c75539c9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9db7c30a59f6a86515d1e24fdb522a3f1becc352e526c5256efade49f4fb9260`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Homeomorph.unitBall : E ≃ₜ ball (0 : E) 1 :=
  (Homeomorph.Set.univ _).symm.trans PartialHomeomorph.univUnitBall.toHomeomorphSourceTarget

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a4272033b17ee49be323cf428398394841c55fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
