# FiberCoordinate.mixedRadix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d6d64b1288e30e8a1094acc0ac6e5845acb0b9340ea21ffc7d6a2bd0ed00b47",
  "kind": "def",
  "lexical_name": "FiberCoordinate.mixedRadix",
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
  "slug": "fibercoordinate-mixedradix--d13bb0f23cd9807966a5c6f6",
  "source": {
    "blob": "ea85ca6a8c3487631fbe447299a94b9fb13f0e8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 102,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d13bb0f23cd9807966a5c6f6c5e03f9dfdf0f3c5bcf5bf1f9685b4d44668d27d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d6d64b1288e30e8a1094acc0ac6e5845acb0b9340ea21ffc7d6a2bd0ed00b47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FiberCoordinate.mixedRadix (coordinate : FiberCoordinate) : Nat :=
  mixedRadixValues coordinate.values coordinate.axisCardinalities

/--
A certificate that a selected coordinate representation is exactly the
documented mixed-radix finite equivalence.  No certificate is synthesized from
cardinality alone.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Address/Variant4212b2a612f160e9cc31a65c84dd115e0e2233914a29ce1eec87e6b14b8e5cc3.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea85ca6a8c3487631fbe447299a94b9fb13f0e8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
