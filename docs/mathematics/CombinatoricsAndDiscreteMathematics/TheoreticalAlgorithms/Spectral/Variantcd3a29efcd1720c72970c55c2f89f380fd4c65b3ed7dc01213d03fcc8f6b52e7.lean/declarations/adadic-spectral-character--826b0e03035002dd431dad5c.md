# Adadic.Spectral.character

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b810dbbfceb5986dc36b3db3f981cd50a257cee521b4901dcc81f11d042e4a0",
  "kind": "def",
  "lexical_name": "Adadic.Spectral.character",
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
  "slug": "adadic-spectral-character--826b0e03035002dd431dad5c",
  "source": {
    "blob": "e66bd98c034a1410e9d9ab8920a1fb3b07092d21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Spectral/Variantcd3a29efcd1720c72970c55c2f89f380fd4c65b3ed7dc01213d03fcc8f6b52e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:826b0e03035002dd431dad5c9adbab6d9a9dea9ba05738826ab6c6cd8c83b22f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Spectral/Variantcd3a29efcd1720c72970c55c2f89f380fd4c65b3ed7dc01213d03fcc8f6b52e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b810dbbfceb5986dc36b3db3f981cd50a257cee521b4901dcc81f11d042e4a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Adadic.Spectral.character
    (n : Nat)
    (frequency sample : Fin (2 ^ n)) :
    Int :=
  _root_.Boolean.Cube.ListTools.prodInt
    ((List.finRange n).map
      (fun i =>
        match
          (Cube.Hypercube.pointOfIndex n frequency.val i),
          (Cube.Hypercube.pointOfIndex n sample.val i) with
        | true, bit => Cube.Hypercube.spinOfBool bit
        | false, _ => 1))

/-- Character vector for a fixed frequency. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Spectral/Variantcd3a29efcd1720c72970c55c2f89f380fd4c65b3ed7dc01213d03fcc8f6b52e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Spectral/Variantcd3a29efcd1720c72970c55c2f89f380fd4c65b3ed7dc01213d03fcc8f6b52e7.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e66bd98c034a1410e9d9ab8920a1fb3b07092d21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
