# BareissData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b114041630d1de24cab1b4a3708730b151fe3acb79a2fa3f8b926373d629cced",
  "kind": "structure",
  "lexical_name": "BareissData",
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
  "slug": "bareissdata--831a7d9086abe21285c104ea",
  "source": {
    "blob": "33bbb2323bf86b43df2c8ab519d0e5b66257725b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant432e8805533eeda43ceedc26ceb18b76c2234ecdfd0e308cd5a63d8a66761c77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:831a7d9086abe21285c104eade1ccef5f35a507a485d94de55d4c65335db2d49",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant432e8805533eeda43ceedc26ceb18b76c2234ecdfd0e308cd5a63d8a66761c77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b114041630d1de24cab1b4a3708730b151fe3acb79a2fa3f8b926373d629cced`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BareissData (V : Type) where
  /-- The lower-triangular transform. -/
  L : Array (Array V)
  /-- The echelon form, the final working matrix `L * A_σ` of the elimination. -/
  U : Array (Array V)
  /-- The row swaps, in order. Stores the swaps instead of row re-indexing, since in
  common cases swaps are infrequent and therefore produce a smaller term to be checked
  by the kernel. The row permutation `σ` is later constructed by their product. -/
  swaps : Array (Nat × Nat)
  /-- The pivot columns. The `k`-th entry is the column of the pivot in row `k` of the
  final echelon form. -/
  pivot : Array Nat

/-- Map over the entries of the transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant432e8805533eeda43ceedc26ceb18b76c2234ecdfd0e308cd5a63d8a66761c77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant432e8805533eeda43ceedc26ceb18b76c2234ecdfd0e308cd5a63d8a66761c77.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33bbb2323bf86b43df2c8ab519d0e5b66257725b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
