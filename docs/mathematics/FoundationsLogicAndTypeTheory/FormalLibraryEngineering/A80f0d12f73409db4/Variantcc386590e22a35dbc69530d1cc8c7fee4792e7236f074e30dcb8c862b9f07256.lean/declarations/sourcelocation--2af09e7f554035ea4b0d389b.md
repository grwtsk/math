# SourceLocation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7bcd8a63a1030f5ca93c1fbc95dada99cacd6d40eb0cd7d766ebfcecd2ce446d",
  "kind": "structure",
  "lexical_name": "SourceLocation",
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
  "slug": "sourcelocation--2af09e7f554035ea4b0d389b",
  "source": {
    "blob": "5edef2de3e00f54ce7c1bffacc93a1085c54c37f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 14,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A80f0d12f73409db4/Variantcc386590e22a35dbc69530d1cc8c7fee4792e7236f074e30dcb8c862b9f07256.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2af09e7f554035ea4b0d389bf484b2fa442c99ceef5780b140f5ba61256a7008",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A80f0d12f73409db4/Variantcc386590e22a35dbc69530d1cc8c7fee4792e7236f074e30dcb8c862b9f07256.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7bcd8a63a1030f5ca93c1fbc95dada99cacd6d40eb0cd7d766ebfcecd2ce446d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SourceLocation where
  path : String
  line : Nat
  column : Nat
  deriving DecidableEq, Repr, Inhabited

end MathDiscovery
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A80f0d12f73409db4/Variantcc386590e22a35dbc69530d1cc8c7fee4792e7236f074e30dcb8c862b9f07256.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A80f0d12f73409db4/Variantcc386590e22a35dbc69530d1cc8c7fee4792e7236f074e30dcb8c862b9f07256.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5edef2de3e00f54ce7c1bffacc93a1085c54c37f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
