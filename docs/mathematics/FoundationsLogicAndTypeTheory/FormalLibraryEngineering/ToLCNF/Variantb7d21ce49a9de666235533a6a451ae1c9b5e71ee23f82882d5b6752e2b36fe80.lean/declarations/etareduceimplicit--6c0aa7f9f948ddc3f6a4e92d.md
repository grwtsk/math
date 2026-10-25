# etaReduceImplicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59ec98ee3dca93f7544539c7754b34798ab8eb13c0bb492b8aef89bf62d323c6",
  "kind": "def",
  "lexical_name": "etaReduceImplicit",
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
  "slug": "etareduceimplicit--6c0aa7f9f948ddc3f6a4e92d",
  "source": {
    "blob": "a9900b6b8e441e5bb8f21a9b575b6eff78c654d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 481,
    "line": 466,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c0aa7f9f948ddc3f6a4e92daf2ffb2cbe37d40e2804d2e7c2730ee9ac92de8a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59ec98ee3dca93f7544539c7754b34798ab8eb13c0bb492b8aef89bf62d323c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–481.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def etaReduceImplicit (e : Expr) : Expr :=
  match e with
  | .lam _ d b bi =>
    if bi.isImplicit then
      let b' := etaReduceImplicit b
      match b' with
      | .app f (.bvar 0) =>
        if !f.hasLooseBVar 0 then
          f.lowerLooseBVars 1 1
        else
          e.updateLambdaE! d b'
      | _ => e.updateLambdaE! d b'
    else
      e
  | _ => e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9900b6b8e441e5bb8f21a9b575b6eff78c654d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
