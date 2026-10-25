# abstractProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:597971c5bda159837330dbc5692319af24374118efef7f75e15772db08367173",
  "kind": "def",
  "lexical_name": "abstractProof",
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
  "slug": "abstractproof--d187d23f5dc504e8ace59be8",
  "source": {
    "blob": "16cf57a7efe3e9ed45fe4659358e945a34227b24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d187d23f5dc504e8ace59be8f504fa8ed53673b7393b8c8230bbf82d4bf71ed1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:597971c5bda159837330dbc5692319af24374118efef7f75e15772db08367173`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def abstractProof [Monad m] [MonadLiftT MetaM m] [MonadEnv m] [MonadOptions m] [MonadFinally m]
    (proof : Expr) (cache := true) (postprocessType : Expr → m Expr := pure) : m Expr := do
  let type ← withoutExporting do inferType proof
  let type ← (Core.betaReduce type : MetaM _)
  let type ← zetaReduce type
  let type ← postprocessType type
  /- https://github.com/leanprover/lean4/issues/10196
     If we use the cache when the proof contains `sorry`,
     then we may fail to get a "declaration contains 'sorry'" warning for the current declaration. -/
  let cache := cache && !proof.hasSorry
  /- We turn on zetaDelta-expansion to make sure we don't need to perform an expensive `check` step to
    identify which let-decls can be abstracted. If we design a more efficient test, we can avoid the eager zetaDelta expansion step.
    In a benchmark created by @selsam, The extra `check` step was a bottleneck. -/
  mkAuxTheorem (cache := cache) type proof (zetaDelta := true)

namespace AbstractNestedProofs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16cf57a7efe3e9ed45fe4659358e945a34227b24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
