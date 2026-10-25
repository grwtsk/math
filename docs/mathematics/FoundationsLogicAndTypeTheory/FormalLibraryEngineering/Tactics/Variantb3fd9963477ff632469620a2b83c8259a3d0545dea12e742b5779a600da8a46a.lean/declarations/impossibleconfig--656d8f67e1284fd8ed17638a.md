# ImpossibleConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e70f87c39eeb77d515c882f09b15d9ad98fed6c081c820fcfb46cd94fa3ae88a",
  "kind": "structure",
  "lexical_name": "ImpossibleConfig",
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
  "slug": "impossibleconfig--656d8f67e1284fd8ed17638a",
  "source": {
    "blob": "1bafb4df56922fab687e1bea8e5a6c4d8fc5083d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1190,
    "line": 1171,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantb3fd9963477ff632469620a2b83c8259a3d0545dea12e742b5779a600da8a46a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:656d8f67e1284fd8ed17638aa66303bfc4b8f27b4799c33a01d3bde8e1aaa86b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantb3fd9963477ff632469620a2b83c8259a3d0545dea12e742b5779a600da8a46a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e70f87c39eeb77d515c882f09b15d9ad98fed6c081c820fcfb46cd94fa3ae88a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1171–1190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ImpossibleConfig where
  /-- If true (default: false), abstract the universe parameters of the surrounding
  declaration as level metavariables in the goal handed to the inner tactic, so it
  can specialize them by exhibiting witnesses at specific universes. By default
  these parameters are kept fixed. -/
  levels : Bool := false

/--
`impossible by t` uses the tactic `t` to prove that the current goal is impossible
to prove.

If the goal is `xs ⊢ P`, the tactic `t` sees the goal `¬(∀ xs, P)`. Any expression metavariables in
the original goal turn into variables in the context.

Universe parameters of the surrounding declaration are kept fixed (not abstracted); the `+levels`
option turns them into fresh level metavariables instead. Universe metavariables in the goal are
rejected.

The original goal is closed as if `sorry` was used.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantb3fd9963477ff632469620a2b83c8259a3d0545dea12e742b5779a600da8a46a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantb3fd9963477ff632469620a2b83c8259a3d0545dea12e742b5779a600da8a46a.lean#L1171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bafb4df56922fab687e1bea8e5a6c4d8fc5083d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
