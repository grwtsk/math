# mkRefreshComponentM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c8a6b4d8acdc1e27d8ba0a00d9a1ee8a134f01b220ed465f40ad35b26f96218",
  "kind": "def",
  "lexical_name": "mkRefreshComponentM",
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
  "slug": "mkrefreshcomponentm--476e900c3e6d72ab66536cd7",
  "source": {
    "blob": "6634285cd81a1761c5ffef883b5f3e534b1d4750",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 228,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefreshComponent/Variantb08f74d1c5183d343d04d75859f19e9d7664e2540b0792f2602218861ffcf6a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:476e900c3e6d72ab66536cd7000da0d0b0a789e47c92e4ddac89a4642542e723",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefreshComponent/Variantb08f74d1c5183d343d04d75859f19e9d7664e2540b0792f2602218861ffcf6a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c8a6b4d8acdc1e27d8ba0a00d9a1ee8a134f01b220ed465f40ad35b26f96218`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkRefreshComponentM (initial : Html) (k : RefreshToken → m Unit) : m Html := do
  let (html, token) ← mkRefreshComponent initial
  let mkAct : m (EIO Exception Unit) := saveCtxM do
    withTheReader Core.Context ({· with cancelTk? := token.cancelTk}) <|
      k token
  discard <| BaseIO.asTask (prio := .dedicated) <|
    (← mkAct).catchExceptions fun ex => do
      if let .internal id _ := ex then
        -- TODO: This should never be shown once we fix cancellation in all situations.
        if id == interruptExceptionId then
          token.update <| .text "This component was cancelled"
      else
        token.update <span>
            An error occurred in the mkRefreshComponentM thread:
            <InteractiveMessage msg={← WithRpcRef.mk ex.toMessageData}/>
          </span>
  return html

end ProofWidgets
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefreshComponent/Variantb08f74d1c5183d343d04d75859f19e9d7664e2540b0792f2602218861ffcf6a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefreshComponent/Variantb08f74d1c5183d343d04d75859f19e9d7664e2540b0792f2602218861ffcf6a5.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6634285cd81a1761c5ffef883b5f3e534b1d4750` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
