# negOverflow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95d8b2fa7e19eaddb3f7d9cad4081ae47f4d59af1ef8c4a8444053b676db9590",
  "kind": "def",
  "lexical_name": "negOverflow",
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
  "slug": "negoverflow--c1f1ae5003ef3a94efea8dd0",
  "source": {
    "blob": "1122508b14f82b41217c28ca050d418a8f223c86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 850,
    "line": 842,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf1d2a57b7a2c2e3de9fbd74c6f23354d14d2c9e4c185c461c775c038ee2d6c35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1f1ae5003ef3a94efea8dd05f86ab0e8c5aa5b3382b3b499b7cf447ecb02d9a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf1d2a57b7a2c2e3de9fbd74c6f23354d14d2c9e4c185c461c775c038ee2d6c35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95d8b2fa7e19eaddb3f7d9cad4081ae47f4d59af1ef8c4a8444053b676db9590`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 842–850.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def negOverflow {w : Nat} (x : BitVec w) : Bool :=
  x.toInt == - 2 ^ (w - 1)

/--
Checks whether the signed division of `x` by `y` results in overflow.
For BitVecs `x` and `y` with nonzero width, this only happens if `x = intMin` and `y = allOnes w`.

SMT-LIB name: `bvsdivo`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf1d2a57b7a2c2e3de9fbd74c6f23354d14d2c9e4c185c461c775c038ee2d6c35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf1d2a57b7a2c2e3de9fbd74c6f23354d14d2c9e4c185c461c775c038ee2d6c35.lean#L842).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1122508b14f82b41217c28ca050d418a8f223c86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
