# BindCasesM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d6cb67ea1a0020b4ef7a0faf6fc09bc21e7f369e38ebb2a9cceec149b4cd18f",
  "kind": "abbrev",
  "lexical_name": "BindCasesM",
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
  "slug": "bindcasesm--d0e417e99c394dd6ede1c788",
  "source": {
    "blob": "a9900b6b8e441e5bb8f21a9b575b6eff78c654d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0e417e99c394dd6ede1c7888632c09b8dd3a4262575bb5b0c6458c621c62569",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d6cb67ea1a0020b4ef7a0faf6fc09bc21e7f369e38ebb2a9cceec149b4cd18f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev BindCasesM := StateRefT BindCasesM.State CompilerM

/--
This method returns code that at each exit point of `cases`, it jumps to `jpDecl`.
It is similar to `Code.bind`, but we add special support for `inlineMatcher`.
The `inlineMatcher` function inlines the auxiliary `_match_<idx>` declarations.
To make sure there is no code duplication, `inlineMatcher` creates auxiliary declarations `_alt.<idx>`.
We can say the `_alt.<idx>` declarations are pre join points. For each auxiliary declaration used at
an exit point of `cases`, this method creates an new auxiliary join point that invokes `_alt.<idx>`,
and then jumps to `jpDecl`. The goal is to make sure the auxiliary join point is the only occurrence
of `_alt.<idx>`, then `simp` will inline it.
That is, our goal is to try to promote the pre join points `_alt.<idx>` into a proper join point.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9900b6b8e441e5bb8f21a9b575b6eff78c654d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
