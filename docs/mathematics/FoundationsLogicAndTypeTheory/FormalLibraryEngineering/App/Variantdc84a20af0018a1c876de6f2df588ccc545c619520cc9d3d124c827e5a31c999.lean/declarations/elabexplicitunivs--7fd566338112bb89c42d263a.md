# elabExplicitUnivs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea3a5224960a0cb1ff5713bbdd30d430d847f9f9ef39e4747265eff718780405",
  "kind": "def",
  "lexical_name": "elabExplicitUnivs",
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
  "slug": "elabexplicitunivs--7fd566338112bb89c42d263a",
  "source": {
    "blob": "e4839efc829596a2e83bcbf82e29d63c4502e727",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1933,
    "line": 1907,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fd566338112bb89c42d263afb41f9a2f77ffc53b73aa543604bd5b6af49ef7e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea3a5224960a0cb1ff5713bbdd30d430d847f9f9ef39e4747265eff718780405`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1907–1933.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabExplicitUnivs (lvls : Array Syntax) : TermElabM (List Level) := do
  lvls.foldrM (init := []) fun stx lvls => return (← elabLevel stx)::lvls

/-!
# Interaction between `errToSorry` and `observing`.

- The method `elabTerm` catches exceptions, logs them, and returns a synthetic sorry (IF `ctx.errToSorry` == true).

- When we elaborate choice nodes (and overloaded identifiers), we track multiple results using the `observing x` combinator.
  The `observing x` executes `x` and returns a `TermElabResult`.

`observing x` does not check for synthetic sorry's, just an exception. Thus, it may think `x` worked when it didn't
if a synthetic sorry was introduced. We decided that checking for synthetic sorrys at `observing` is not a good solution
because it would not be clear to decide what the "main" error message for the alternative is. When the result contains
a synthetic `sorry`, it is not clear which error message corresponds to the `sorry`. Moreover, while executing `x`, many
error messages may have been logged. Recall that we need an error per alternative at `mergeFailures`.

Thus, we decided to set `errToSorry` to `false` whenever processing choice nodes and overloaded symbols.

Important: we rely on the property that after `errToSorry` is set to
false, no elaboration function executed by `x` will reset it to
`true`.
-/

/--
Elaborates the resolutions of a function. The `fns` array is the output of `resolveName'`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean#L1907).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4839efc829596a2e83bcbf82e29d63c4502e727` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
