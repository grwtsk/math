# abstractProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c4c2b95e1653b613588babe242b0955d6b72c5886f95706d1d943351caba4bf",
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
  "slug": "abstractproof--253ddc72fb74df511ce63bb4",
  "source": {
    "blob": "b931c2cf0519ac38d0303e79d69e16f34e296c5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant0c15c160c399770e90c209bfd23944855dd888811ab7cf4aa0a3e81ec7bf92df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:253ddc72fb74df511ce63bb4abaea803a7b5e1511c4232ecde4cb5bc184864cf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant0c15c160c399770e90c209bfd23944855dd888811ab7cf4aa0a3e81ec7bf92df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c4c2b95e1653b613588babe242b0955d6b72c5886f95706d1d943351caba4bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–34.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant0c15c160c399770e90c209bfd23944855dd888811ab7cf4aa0a3e81ec7bf92df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant0c15c160c399770e90c209bfd23944855dd888811ab7cf4aa0a3e81ec7bf92df.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b931c2cf0519ac38d0303e79d69e16f34e296c5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
