# HammingIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d60de13803b39ecb6c15209d6dbb0b560b2ac3e610896625380524faca182a5",
  "kind": "structure",
  "lexical_name": "HammingIso",
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
  "slug": "hammingiso--2ffaa6bef4e1df58346443be",
  "source": {
    "blob": "d702403fc2412356e439ff5b52e3b6170455ced1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 265,
    "path": "GRWTSK/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ffaa6bef4e1df58346443be468f8fd2507e71008def896025a6ccc5dfaa9301",
  "verification": {
    "reference": "docs/verification/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d60de13803b39ecb6c15209d6dbb0b560b2ac3e610896625380524faca182a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HammingIso (n : Nat) where
  offset : Bits n
  coordinates : Equiv.Perm (Fin n)

/-- The state permutation represented by an explicit Hamming isometry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Symmetry/Variantb7a531fa44c6c81af374d4e1193a80bc91e3c1afabcc4a223dcac93a49cc15a7.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d702403fc2412356e439ff5b52e3b6170455ced1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
