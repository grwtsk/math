# VCGen.LatticeOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ceeabdcc62fd2613235cf3d9baa9b82eb10d8e425e6f1f8b5aadcad731e671d",
  "kind": "structure",
  "lexical_name": "VCGen.LatticeOp",
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
  "slug": "vcgen-latticeop--470fc1818ad4453a4a483a89",
  "source": {
    "blob": "1891bff71de4cfb6c9c0f0a18b91a82ff6f9c59a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameProc/Variant6c942ed00c9d13f4903243d4c2725b65c7933c32d602a8e9266528130295117c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:470fc1818ad4453a4a483a893293f5996c70d5fecb5ea5cc38cbe4fd2be16576",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameProc/Variant6c942ed00c9d13f4903243d4c2725b65c7933c32d602a8e9266528130295117c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ceeabdcc62fd2613235cf3d9baa9b82eb10d8e425e6f1f8b5aadcad731e671d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public structure VCGen.LatticeOp where
  /-- Head constant of the operator this split decomposes. Keys the `latticeOps` table. -/
  head : Name
  /-- The number of leading arguments held constant during rule construction: the operator's carrier
  type and its typeclass instances. The operands and excess state arguments after them become the
  rule's schematic parameters. `2` for a connective over a `CompleteLattice` carrier; `0` for a
  monomorphic operator. -/
  numConst : Nat := 2
  /-- Distribution and unfolding equalities that saturate the operator applied to state arguments. -/
  rewrites : Array Name := #[]
  /-- The operator's terminal `⊑`-introduction rule, or `none` when it saturates to another operator's
  terminal. -/
  terminal? : Option Name := none

/-- A frame inference procedure registered with `@[frameproc]`, together with its frame operator. The
`vcgen` frontend selects the one whose `prog` matches the goal program's monad. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameProc/Variant6c942ed00c9d13f4903243d4c2725b65c7933c32d602a8e9266528130295117c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameProc/Variant6c942ed00c9d13f4903243d4c2725b65c7933c32d602a8e9266528130295117c.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1891bff71de4cfb6c9c0f0a18b91a82ff6f9c59a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
