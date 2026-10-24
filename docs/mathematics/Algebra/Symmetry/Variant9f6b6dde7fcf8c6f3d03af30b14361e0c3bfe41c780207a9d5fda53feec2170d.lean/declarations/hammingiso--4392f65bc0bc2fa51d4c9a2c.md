# HammingIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de4beb83da4c4b7940e64e0a8b392a5570dc92e77bdd89968c4dcaa4e84ae44e",
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
  "slug": "hammingiso--4392f65bc0bc2fa51d4c9a2c",
  "source": {
    "blob": "019fd503b86f32b87105f7a34ddb803ec66b9341",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 257,
    "path": "GRWTSK/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4392f65bc0bc2fa51d4c9a2c45a15c9eea77f32002674a48351f934bb5315fbe",
  "verification": {
    "reference": "docs/verification/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de4beb83da4c4b7940e64e0a8b392a5570dc92e77bdd89968c4dcaa4e84ae44e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HammingIso (n : Nat) where
  offset : Bits n
  coordinates : Equiv.Perm (Fin n)

/-- The state permutation represented by an explicit Hamming isometry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `019fd503b86f32b87105f7a34ddb803ec66b9341` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
