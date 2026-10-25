# evalBvCheck

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f42cef7f211edd44e79852ec50da0f27e5dd542e89f37f53f2665680e3ab57fe",
  "kind": "def",
  "lexical_name": "evalBvCheck",
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
  "slug": "evalbvcheck--1d252a93fc0c4fb000331c2e",
  "source": {
    "blob": "3265af7248e6c6435bb1efa48d0e8c9cfa799d2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variantfefed258420e429dcf2d9804fedcb025a93ad7f9f161e33bd180b068a78661c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d252a93fc0c4fb000331c2e4f16ee551e03ed24142437d1581db107a1942a57",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variantfefed258420e429dcf2d9804fedcb025a93ad7f9f161e33bd180b068a78661c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f42cef7f211edd44e79852ec50da0f27e5dd542e89f37f53f2665680e3ab57fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalBvCheck : Tactic := fun
  | `(tactic| bv_check%$tk $cfgStx:optConfig $path:str) => do
    let cfg ← elabBVDecideConfig cfgStx
    let ctx ← mkContext path.getString cfg
    liftMetaFinishingTactic fun g => do
      let g'? ← Normalize.bvNormalize g cfg
      match g'? with
      | some g' => bvCheck g' ctx
      | none =>
        let bvNormalizeStx ← `(tactic| bv_normalize $cfgStx)
        logWarning m!"This goal can be closed by only applying bv_normalize, no need to keep the LRAT proof around."
        TryThis.addSuggestion tk bvNormalizeStx (origSpan? := ← getRef)
  | _ => throwUnsupportedSyntax

end BVCheck
end Lean.Elab.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variantfefed258420e429dcf2d9804fedcb025a93ad7f9f161e33bd180b068a78661c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variantfefed258420e429dcf2d9804fedcb025a93ad7f9f161e33bd180b068a78661c7.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3265af7248e6c6435bb1efa48d0e8c9cfa799d2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
