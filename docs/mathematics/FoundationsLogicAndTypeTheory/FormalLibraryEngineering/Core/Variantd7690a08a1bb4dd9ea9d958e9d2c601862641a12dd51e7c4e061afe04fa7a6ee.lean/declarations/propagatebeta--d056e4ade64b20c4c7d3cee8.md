# propagateBeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:244b8cb8c8c31c9c32b406a1a4dde7b24be0b105234e392b4797683528fc8424",
  "kind": "def",
  "lexical_name": "propagateBeta",
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
  "slug": "propagatebeta--d056e4ade64b20c4c7d3cee8",
  "source": {
    "blob": "af42767f692c69e2158ac7e9531b5cacc5371092",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 104,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd7690a08a1bb4dd9ea9d958e9d2c601862641a12dd51e7c4e061afe04fa7a6ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d056e4ade64b20c4c7d3cee8c9ec712576bf15e7b6277f521136fc54558ba29e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd7690a08a1bb4dd9ea9d958e9d2c601862641a12dd51e7c4e061afe04fa7a6ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:244b8cb8c8c31c9c32b406a1a4dde7b24be0b105234e392b4797683528fc8424`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def propagateBeta (lams : Array Expr) (fns : Array Expr) : GoalM Unit := do
  if lams.isEmpty then return ()
  let lamRoot ← getRoot lams.back!
  trace_goal[grind.debug.beta] "fns: {fns}, lams: {lams}"
  for fn in fns do
    trace_goal[grind.debug.beta] "fn: {fn}, parents: {(← getParents fn).elems}"
    for parent in (← getParents fn).elems do
      let mut args := #[]
      let mut curr := parent
      trace_goal[grind.debug.beta] "parent: {parent}"
      repeat
        trace_goal[grind.debug.beta] "curr: {curr}"
        if (← isEqv curr lamRoot) then
          propagateBetaEqs lams curr args.reverse
        let .app f arg := curr
          | break
        /-
        **Note**: Recall that we do not eagerly internalize all partial applications.
        We can add a small optimization here. If `useFO parent` is `false`, then
        we know `curr` has been internalized
        -/
        internalize curr (← getGeneration parent)
        args := args.push arg
        curr := f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd7690a08a1bb4dd9ea9d958e9d2c601862641a12dd51e7c4e061afe04fa7a6ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd7690a08a1bb4dd9ea9d958e9d2c601862641a12dd51e7c4e061afe04fa7a6ee.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af42767f692c69e2158ac7e9531b5cacc5371092` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
