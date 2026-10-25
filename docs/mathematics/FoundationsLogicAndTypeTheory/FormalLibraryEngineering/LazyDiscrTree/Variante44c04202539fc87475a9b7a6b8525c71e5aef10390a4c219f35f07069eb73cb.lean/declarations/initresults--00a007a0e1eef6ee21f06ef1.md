# InitResults

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52e5e16e14785c480fb8315b8e252e5ed01a3000a8431d548f6993f2705c3e92",
  "kind": "structure",
  "lexical_name": "InitResults",
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
  "slug": "initresults--00a007a0e1eef6ee21f06ef1",
  "source": {
    "blob": "c26b2f62a5e0c9a3df2b82e57609fa8c991a160f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 875,
    "line": 872,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyDiscrTree/Variante44c04202539fc87475a9b7a6b8525c71e5aef10390a4c219f35f07069eb73cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:00a007a0e1eef6ee21f06ef1d6c3def306b5bc1cdfbb8b86db02a91b66ccee1c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyDiscrTree/Variante44c04202539fc87475a9b7a6b8525c71e5aef10390a4c219f35f07069eb73cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52e5e16e14785c480fb8315b8e252e5ed01a3000a8431d548f6993f2705c3e92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 872–875.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure InitResults (α : Type) where
  tree  : PreDiscrTree α := {}
  errors : Array ImportFailure := #[]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyDiscrTree/Variante44c04202539fc87475a9b7a6b8525c71e5aef10390a4c219f35f07069eb73cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyDiscrTree/Variante44c04202539fc87475a9b7a6b8525c71e5aef10390a4c219f35f07069eb73cb.lean#L872).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c26b2f62a5e0c9a3df2b82e57609fa8c991a160f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
