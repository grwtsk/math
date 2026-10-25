# defeqOrError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:091cf3925afef1e79954598a69bd7a7525c687d163eeb785a209011d17e66999",
  "kind": "def",
  "lexical_name": "defeqOrError",
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
  "slug": "defeqorerror--a52eab38646afb5d14a170db",
  "source": {
    "blob": "29b2d4d6fe50f8df398c8c1dc56232eba762f18d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Setm/Variantb399047025601a372fa305e346675d5e8ee99ba4cd6030d4a81618334cd18c5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a52eab38646afb5d14a170db7563a2220277d6f09b62cda2f6acd362af7d131b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Setm/Variantb399047025601a372fa305e346675d5e8ee99ba4cd6030d4a81618334cd18c5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:091cf3925afef1e79954598a69bd7a7525c687d163eeb785a209011d17e66999`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def defeqOrError (goal : MVarId) (p e : Expr) : MetaM Unit :=
  -- We use `withAssinableSyntheticOpaque` here as elaboration of the pattern can create
  -- metavariables of `.syntheticOpaque` kind that could be assigned by the `isDefEq`. See the
  -- test file for a concrete example.
  --
  -- TODO: `withoutProofIrrelevance` is not doing what we would expect it to do because of what
  -- seems like a bug in Lean, see the withoutProofIrrelevance section in the test file and
  -- the issue mentioned there.
  unless ← withReducible <| withoutProofIrrelevance <| withAssignableSyntheticOpaque
      <| isDefEq p e do
    throwTacticEx `setm goal <| MessageData.ofLazyM (es := #[p, e]) do
      let (p, tgt) ← addPPExplicitToExposeDiff p e
      return m!"Pattern{indentExpr p}\nis not definitionally equal \
        to the target{indentExpr tgt}"

/-- `setm patt` matches `patt`, a term containing named holes (like `?a`) to the goal, and creates
named local declarations for the matched holes with their assigned expressions as values. Moreover,
it will replace the matches with their new names. This tactic can be used to give a name to a
complicated subexpression appearing in the goal or a hypothesis.

* `setm patt using h` matches `patt` with the local hypothesis named `h` instead of the main goal.
* `setm patt at loc` also rewrites by the newly-introduced local declarations at the location(s)
  `loc`.

Examples:
```lean
example : ∃ n, n = 2 ^ 10 - 1 := by
  setm ∃ _, _ = ?a
  /-
  a := 2 ^ 10 - 1
  ⊢ ∃ n, n = a
  -/
  exact .intro a rfl
```

`using h` matches against `h` instead of the goal:
```lean
example (h : 1 + 2 = 3) : ∃ n, n = 2 := by
  setm _ + ?a = _ using h
  /-
  a := 2
  h : 1 + a = 3
  ⊢ ∃ n, n = 2
  -/
  exact .intro a rfl
```

`at h₂` rewrites `h₂` so that it uses `a`:
```lean
example (h₁ : 1 + 2 = 3) (h₂ : 2 + 2 = 4) : ∃ n, n = 2 := by
  setm _ + ?a = _ using h₁ at h₂
  /-
  a : Nat := 2
  h₁ : 1 + a = 3
  h₂ : a + a = 4
  ⊢ ∃ n, n = 2
  -/
  exact .intro a rfl
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Setm/Variantb399047025601a372fa305e346675d5e8ee99ba4cd6030d4a81618334cd18c5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Setm/Variantb399047025601a372fa305e346675d5e8ee99ba4cd6030d4a81618334cd18c5b.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29b2d4d6fe50f8df398c8c1dc56232eba762f18d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
