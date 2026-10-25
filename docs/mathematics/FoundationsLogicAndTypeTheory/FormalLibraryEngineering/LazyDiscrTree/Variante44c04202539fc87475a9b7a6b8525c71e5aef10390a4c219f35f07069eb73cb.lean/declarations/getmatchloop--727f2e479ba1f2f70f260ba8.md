# getMatchLoop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4110a65582fce1e475d9c70460c1cab3aab81106a584a468990c2595502d9c7c",
  "kind": "def",
  "lexical_name": "getMatchLoop",
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
  "slug": "getmatchloop--727f2e479ba1f2f70f260ba8",
  "source": {
    "blob": "c26b2f62a5e0c9a3df2b82e57609fa8c991a160f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 662,
    "line": 617,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyDiscrTree/Variante44c04202539fc87475a9b7a6b8525c71e5aef10390a4c219f35f07069eb73cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:727f2e479ba1f2f70f260ba80d119d230ad792e1b4e0bc6312a97fbae2fe3f8f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyDiscrTree/Variante44c04202539fc87475a9b7a6b8525c71e5aef10390a4c219f35f07069eb73cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4110a65582fce1e475d9c70460c1cab3aab81106a584a468990c2595502d9c7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 617–662.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def getMatchLoop (cases : Array PartialMatch) (result : MatchResult α) : MatchM α (MatchResult α) := do
  if cases.isEmpty then
    pure result
  else do
    let ca := cases.back!
    let cases := cases.pop
    let (vs, star, cs) ← evalNode ca.c
    if ca.todo.isEmpty then
      let result := result.push ca.score vs
      getMatchLoop cases result
    else if star == 0 && cs.isEmpty then
      getMatchLoop cases result
    else
      let e     := ca.todo.back!
      let todo  := ca.todo.pop
      /- We must always visit `Key.star` edges since they are wildcards.
          Thus, `todo` is not used linearly when there is `Key.star` edge
          and there is an edge for `k` and `k != Key.star`. -/
      let pushStar (cases : Array PartialMatch) :=
        if star = 0 then
          cases
        else
          cases.push { todo, score := ca.score, c := star }
      let pushNonStar (k : Key) (args : Array Expr) (cases : Array PartialMatch) :=
        match cs[k]? with
        | none   => cases
        | some c => cases.push { todo := todo ++ args, score := ca.score + 1, c }
      let cases := pushStar cases
      let (k, args) ← MatchClone.getMatchKeyArgs e (root := false) (← read)
      let cases :=
        match k with
        | .star  => cases
        /-
          Note: dep-arrow vs arrow
          Recall that dependent arrows are `(Key.other, #[])`, and non-dependent arrows are
          `(Key.arrow, #[a, b])`.
          A non-dependent arrow may be an instance of a dependent arrow (stored at `DiscrTree`).
          Thus, we also visit the `Key.other` child.
        -/
        | .arrow =>
          cases |> pushNonStar .other #[]
                |> pushNonStar k args
        | _      =>
          cases |> pushNonStar k args
      getMatchLoop cases result

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyDiscrTree/Variante44c04202539fc87475a9b7a6b8525c71e5aef10390a4c219f35f07069eb73cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyDiscrTree/Variante44c04202539fc87475a9b7a6b8525c71e5aef10390a4c219f35f07069eb73cb.lean#L617).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c26b2f62a5e0c9a3df2b82e57609fa8c991a160f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
