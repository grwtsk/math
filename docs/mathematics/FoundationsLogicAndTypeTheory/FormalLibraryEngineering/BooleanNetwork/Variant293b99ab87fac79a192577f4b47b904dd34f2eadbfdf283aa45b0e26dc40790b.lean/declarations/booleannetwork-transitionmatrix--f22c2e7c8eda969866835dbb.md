# BooleanNetwork.transitionMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2bfd15b9e12a33ba94bf6ca1b6cad6622d56287178e680cc60ac356a21a39bf4",
  "kind": "def",
  "lexical_name": "BooleanNetwork.transitionMatrix",
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
  "slug": "booleannetwork-transitionmatrix--f22c2e7c8eda969866835dbb",
  "source": {
    "blob": "9d43c8f41aa291d160f974ffb57873c93056c245",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BooleanNetwork/Variant293b99ab87fac79a192577f4b47b904dd34f2eadbfdf283aa45b0e26dc40790b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f22c2e7c8eda969866835dbb3a4a7ad7562026c5ce7c568f3aafeeb2c6febc59",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BooleanNetwork/Variant293b99ab87fac79a192577f4b47b904dd34f2eadbfdf283aa45b0e26dc40790b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2bfd15b9e12a33ba94bf6ca1b6cad6622d56287178e680cc60ac356a21a39bf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BooleanNetwork.transitionMatrix {n : Nat} (N : BooleanNetwork.Network n) :
    BoolMatrix (2 ^ n) (2 ^ n) :=
  fun i j =>
    Hypercube.pointEq
      (Hypercube.pointOfIndex n j.val)
      (N.step (Hypercube.pointOfIndex n i.val))

/--
A coordinate-level dependency test.

The output coordinate `target` depends on input coordinate `source` when flipping
`source` changes that target output for at least one state.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BooleanNetwork/Variant293b99ab87fac79a192577f4b47b904dd34f2eadbfdf283aa45b0e26dc40790b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BooleanNetwork/Variant293b99ab87fac79a192577f4b47b904dd34f2eadbfdf283aa45b0e26dc40790b.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d43c8f41aa291d160f974ffb57873c93056c245` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
