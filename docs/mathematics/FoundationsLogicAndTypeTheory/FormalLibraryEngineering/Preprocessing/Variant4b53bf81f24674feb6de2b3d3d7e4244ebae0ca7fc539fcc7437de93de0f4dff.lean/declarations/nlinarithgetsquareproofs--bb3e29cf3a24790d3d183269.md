# nlinarithGetSquareProofs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:55d0271668b029f6c0e1fe35196764ee6114f2ef2e74e004905ad87057ac7ceb",
  "kind": "def",
  "lexical_name": "nlinarithGetSquareProofs",
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
  "slug": "nlinarithgetsquareproofs--bb3e29cf3a24790d3d183269",
  "source": {
    "blob": "6b40e715096eaebaaeb323e6d9f4619065d1cfe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 298,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb3e29cf3a24790d3d1832696c4a816ffcd17192fe9f889600e911aab9b1ebca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:55d0271668b029f6c0e1fe35196764ee6114f2ef2e74e004905ad87057ac7ceb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def nlinarithGetSquareProofs (ls : List Expr) : MetaM (List Expr) :=
  withTraceNode `linarith (return m!"{exceptEmoji ·} finding squares") do
  -- find the squares in `AtomM` to ensure deterministic behavior
  let s ← AtomM.run .reducible do
    let si ← ls.foldrM (fun h s' => do findSquares s' (← instantiateMVars (← inferType h))) ∅
    si.toList.mapM fun (i, is_sq) => return ((← get).atoms[i]!, is_sq)
  let new_es ← s.filterMapM fun (e, is_sq) =>
    observing? <| mkAppM (if is_sq then ``sq_nonneg else ``mul_self_nonneg) #[e]
  let new_es ← compWithZero.globalize.transform new_es
  trace[linarith] "found:{indentD <| toMessageData s}"
  linarithTraceProofs "so we added proofs" new_es
  return new_es

/--
Get proofs for products of inequalities from `ls`.

Note that the length of the resulting list is proportional to `ls.length^2`, which can make a large
amount of work for the linarith oracle.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant4b53bf81f24674feb6de2b3d3d7e4244ebae0ca7fc539fcc7437de93de0f4dff.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b40e715096eaebaaeb323e6d9f4619065d1cfe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
