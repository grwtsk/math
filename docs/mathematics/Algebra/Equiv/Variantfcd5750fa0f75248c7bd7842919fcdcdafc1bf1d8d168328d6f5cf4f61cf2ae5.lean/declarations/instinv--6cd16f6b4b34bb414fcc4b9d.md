# instInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d82bce3ff7fcc45b2bed3a39aef3feaaf4bcdf6e8d650485eef65f601f443916",
  "kind": "instance",
  "lexical_name": "instInv",
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
  "slug": "instinv--6cd16f6b4b34bb414fcc4b9d",
  "source": {
    "blob": "754428fdd0f20d2a8eef8bff84fde082d96b96e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 102,
    "path": "GRWTSK/Algebra/Equiv/Variantfcd5750fa0f75248c7bd7842919fcdcdafc1bf1d8d168328d6f5cf4f61cf2ae5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6cd16f6b4b34bb414fcc4b9d9de67fece348abaf17f41e1aa6b6f1dd77b084b3",
  "verification": {
    "reference": "docs/verification/Algebra/Equiv/Variantfcd5750fa0f75248c7bd7842919fcdcdafc1bf1d8d168328d6f5cf4f61cf2ae5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d82bce3ff7fcc45b2bed3a39aef3feaaf4bcdf6e8d650485eef65f601f443916`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instInv : Inv (G ≃+c[a, a] G) := ⟨.symm⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Equiv/Variantfcd5750fa0f75248c7bd7842919fcdcdafc1bf1d8d168328d6f5cf4f61cf2ae5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Equiv/Variantfcd5750fa0f75248c7bd7842919fcdcdafc1bf1d8d168328d6f5cf4f61cf2ae5.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `754428fdd0f20d2a8eef8bff84fde082d96b96e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
