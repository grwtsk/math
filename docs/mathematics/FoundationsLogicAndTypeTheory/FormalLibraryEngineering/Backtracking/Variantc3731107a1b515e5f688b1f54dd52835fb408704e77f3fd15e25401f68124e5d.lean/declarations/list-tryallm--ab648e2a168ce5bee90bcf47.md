# List.tryAllM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e79a1405d13f3c1f2ec91f1f705b7d2a5c40bc816e54d6b4786a7025a449809a",
  "kind": "def",
  "lexical_name": "List.tryAllM",
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
  "slug": "list-tryallm--ab648e2a168ce5bee90bcf47",
  "source": {
    "blob": "b49da43a198fcf7ab958d031d8eb0c4c8eaec420",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variantc3731107a1b515e5f688b1f54dd52835fb408704e77f3fd15e25401f68124e5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab648e2a168ce5bee90bcf472fa1f10fcff4d8c62b40fbe89491661307a6316a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variantc3731107a1b515e5f688b1f54dd52835fb408704e77f3fd15e25401f68124e5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e79a1405d13f3c1f2ec91f1f705b7d2a5c40bc816e54d6b4786a7025a449809a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def List.tryAllM [Monad m] [Alternative m] (L : List α) (f : α → m β) : m (List α × List β) := do
  let R ← L.mapM (fun a => (Sum.inr <$> f a) <|> (pure (Sum.inl a)))
  return (R.filterMap (fun s => match s with | .inl a => a | _ => none),
    R.filterMap (fun s => match s with | .inr b => b | _ => none))

namespace Lean.MVarId

/--
Given any tactic that takes a goal, and returns a sequence of alternative outcomes
(each outcome consisting of a list of new subgoals),
we can perform backtracking search by repeatedly applying the tactic.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variantc3731107a1b515e5f688b1f54dd52835fb408704e77f3fd15e25401f68124e5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variantc3731107a1b515e5f688b1f54dd52835fb408704e77f3fd15e25401f68124e5d.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b49da43a198fcf7ab958d031d8eb0c4c8eaec420` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
