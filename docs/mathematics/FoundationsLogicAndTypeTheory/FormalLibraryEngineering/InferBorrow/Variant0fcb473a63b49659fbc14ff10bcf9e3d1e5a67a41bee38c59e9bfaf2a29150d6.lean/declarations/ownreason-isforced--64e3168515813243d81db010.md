# OwnReason.isForced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4da0bceb7536e7ffe80c85234a6475ff02e202d27279b2979c52745a26602220",
  "kind": "def",
  "lexical_name": "OwnReason.isForced",
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
  "slug": "ownreason-isforced--64e3168515813243d81db010",
  "source": {
    "blob": "dc2458c119a786ffaaf431b2b05474b66258ab27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 249,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant0fcb473a63b49659fbc14ff10bcf9e3d1e5a67a41bee38c59e9bfaf2a29150d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:64e3168515813243d81db0102c7d968033d28b51f9f5b4a37d7a034fb14f0967",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant0fcb473a63b49659fbc14ff10bcf9e3d1e5a67a41bee38c59e9bfaf2a29150d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4da0bceb7536e7ffe80c85234a6475ff02e202d27279b2979c52745a26602220`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def OwnReason.isForced (reason : OwnReason) : Bool :=
  match reason with
  -- All of these reasons propagate through ABI decisions and can thus safely be ignored as they
  -- will be accounted for by the reference counting pass.
  | .constructorArg .. | .functionCallArg .. | .fvarCall .. | .partialApplication ..
  | .jpArgPropagation ..
  -- forward propagation can never affect a user-annotated parameter
  | .forwardProjectionProp ..
  -- backward propagation on a user-annotated parameter is only necessary if the projected value
  -- directly flows into a reset-reuse. However, the borrow annotation propagator ensures this
  -- situation never arises
  | .backwardProjectionProp .. => false
  -- Results of functions and constructors are naturally owned.
  | .constructorResult .. | .functionCallResult ..
  -- We cannot pass borrowed values to reset or have borrow annotations destroy tail calls for
  -- correctness reasons.
  | .resetReuse .. | .tailCallPreservation .. | .jpTailCallPreservation ..
  | .ownedAnnotation => true

/--
Infer the borrowing annotations in a SCC through dataflow analysis.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant0fcb473a63b49659fbc14ff10bcf9e3d1e5a67a41bee38c59e9bfaf2a29150d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant0fcb473a63b49659fbc14ff10bcf9e3d1e5a67a41bee38c59e9bfaf2a29150d6.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc2458c119a786ffaaf431b2b05474b66258ab27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
