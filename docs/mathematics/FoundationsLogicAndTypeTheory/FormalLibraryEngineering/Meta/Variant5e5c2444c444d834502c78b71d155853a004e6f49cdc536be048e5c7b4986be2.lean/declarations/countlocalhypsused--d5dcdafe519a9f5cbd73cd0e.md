# countLocalHypsUsed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11f28f19c2acea3e0e182d79b4380177849989e13da265cb832817e15c4e3b01",
  "kind": "def",
  "lexical_name": "countLocalHypsUsed",
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
  "slug": "countlocalhypsused--d5dcdafe519a9f5cbd73cd0e",
  "source": {
    "blob": "687cba79459bbfb20828c6d9944e443eaf1b9859",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant5e5c2444c444d834502c78b71d155853a004e6f49cdc536be048e5c7b4986be2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5dcdafe519a9f5cbd73cd0eac0401c1960fba275879ebecc65c101b68fbd27e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant5e5c2444c444d834502c78b71d155853a004e6f49cdc536be048e5c7b4986be2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11f28f19c2acea3e0e182d79b4380177849989e13da265cb832817e15c4e3b01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def countLocalHypsUsed [Monad m] [MonadLCtx m] [MonadMCtx m] (e : Expr) : m Nat := do
  let e' ← instantiateMVars e
  return (← getLocalHyps).toList.countP fun h => h.occurs e'

/--
Given a monadic function `F` that takes a type and a term of that type and produces a new term,
lifts this to the monadic function that opens a `∀` telescope, applies `F` to the body,
and then builds the lambda telescope term for the new term.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant5e5c2444c444d834502c78b71d155853a004e6f49cdc536be048e5c7b4986be2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant5e5c2444c444d834502c78b71d155853a004e6f49cdc536be048e5c7b4986be2.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `687cba79459bbfb20828c6d9944e443eaf1b9859` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
