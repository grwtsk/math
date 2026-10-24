# BitfieldAutomorphismAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:273bd5870c6fcbc8b5fd8d2ed1411f886ec37632170d0bacaf6152549358d388",
  "kind": "structure",
  "lexical_name": "BitfieldAutomorphismAction",
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
  "slug": "bitfieldautomorphismaction--084913483b1d3a39e837d851",
  "source": {
    "blob": "2c7b5c5b2f60a71c2245016d08048d38d2ef1182",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 17,
    "path": "GRWTSK/Algebra/GroupTheory/CrossedProduct/Variantc4a004155ceed7cca38d10f3d1aa4f129ab93e4dcdcbc74da22e35df175da8c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:084913483b1d3a39e837d85116a2b2d8695c8170ffd93c3bb226f19121623232",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CrossedProduct/Variantc4a004155ceed7cca38d10f3d1aa4f129ab93e4dcdcbc74da22e35df175da8c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:273bd5870c6fcbc8b5fd8d2ed1411f886ec37632170d0bacaf6152549358d388`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BitfieldAutomorphismAction
    (system : RandomBitfieldSystem)
    (Automorphism : Type*)
    [Fintype Automorphism]
    [Group Automorphism] where
  act :
    Automorphism →
      Bitfield system.bits →
      Bitfield system.bits
  identity :
    ∀ state,
      act 1 state = state
  compatible :
    ∀ left right state,
      act (left * right) state =
        act left (act right state)
  metricInvariant :
    ∀ automorphism left right,
      system.metric.distance
          (act automorphism left)
          (act automorphism right) =
        system.metric.distance left right
  lawInvariant :
    ∀ automorphism state,
      system.law.weight (act automorphism state) =
        system.law.weight state
  admissibilityInvariant :
    ∀ automorphism {state},
      system.admissible state →
      system.admissible
        (act automorphism state)
  phaseCompatible :
    ∀ automorphism state,
      act automorphism (system.phase state) =
        system.phase (act automorphism state)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CrossedProduct/Variantc4a004155ceed7cca38d10f3d1aa4f129ab93e4dcdcbc74da22e35df175da8c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CrossedProduct/Variantc4a004155ceed7cca38d10f3d1aa4f129ab93e4dcdcbc74da22e35df175da8c5.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c7b5c5b2f60a71c2245016d08048d38d2ef1182` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
