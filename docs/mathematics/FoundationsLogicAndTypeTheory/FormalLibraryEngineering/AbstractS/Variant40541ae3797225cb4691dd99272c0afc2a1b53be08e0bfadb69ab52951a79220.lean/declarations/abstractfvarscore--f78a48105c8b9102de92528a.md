# abstractFVarsCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:293bbfd72dfa832fa91b5a1143ade177cf4ff1c9ffd0f86982d600f557149c31",
  "kind": "def",
  "lexical_name": "abstractFVarsCore",
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
  "slug": "abstractfvarscore--f78a48105c8b9102de92528a",
  "source": {
    "blob": "3f8f33bd00a0f8a442b33eca5b229fcd423a2530",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variant40541ae3797225cb4691dd99272c0afc2a1b53be08e0bfadb69ab52951a79220.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f78a48105c8b9102de92528ab0011aa1946c51e48369f29437fd5bb30c9f7f85",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variant40541ae3797225cb4691dd99272c0afc2a1b53be08e0bfadb69ab52951a79220.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:293bbfd72dfa832fa91b5a1143ade177cf4ff1c9ffd0f86982d600f557149c31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def abstractFVarsCore (e : Expr) (lctx : LocalContext)
    (maxFVar : PHashMap ExprPtr (Option FVarId))
    (minFVarId : FVarId) (toDeBruijn? : FVarId → Option Nat) : AlphaShareBuilderM Expr := do
  let minIndex := (lctx.find? minFVarId).get!.index
  replaceS' e fun e offset => do
    match e with
    | .fvar fvarId =>
      if let some bidx := toDeBruijn? fvarId then
        mkBVarS (offset + bidx)
      else
        return some e
    | .lit _ | .mvar _ | .bvar _ | .const _ _ | .sort _ =>
      /-
      Avoid `e.hasFVar` check.
      **Note**: metavariables are safe to skip because we assume their local contexts never include
      the free variables being abstracted (they were created before entering binders).
      -/
      return some e
    | _ =>
      -- Non-atomic expressions.
      if !e.hasFVar then
        -- Stop visiting: `e` does not contain free variables.
        return some e
      let some maxFVarId? := maxFVar.find? ⟨e⟩
        | return none -- maxFVar information is not available, keep visiting
      let maxIndex := (lctx.find? maxFVarId?.get!).get!.index
      if maxIndex < minIndex then
        -- Stop visiting: maximal free variable in `e` is smaller than minimal free variable being abstracted.
        return some e
      else
        -- Keep visiting
        return none

/--
Abstracts free variables `xs[start...*]` in expression `e`, converting them to de Bruijn indices.

Assumptions:
- The local context of the metavariables occurring in `e` do not include the free variables being
  abstracted. This invariant holds when abstracting over binders during pattern matching/unification:
  metavariables in the pattern were created before entering the binder, so their contexts exclude
  the bound variable's corresponding fvar.

- If `xs[start...*]` is not empty, then the minimal variable is `xs[start]`.

- Subterms whose `maxFVar` is below `minFVarId` are skipped entirely. This function does not assume
the `maxFVar` cache contains information for every subterm in `e`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variant40541ae3797225cb4691dd99272c0afc2a1b53be08e0bfadb69ab52951a79220.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variant40541ae3797225cb4691dd99272c0afc2a1b53be08e0bfadb69ab52951a79220.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f8f33bd00a0f8a442b33eca5b229fcd423a2530` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
