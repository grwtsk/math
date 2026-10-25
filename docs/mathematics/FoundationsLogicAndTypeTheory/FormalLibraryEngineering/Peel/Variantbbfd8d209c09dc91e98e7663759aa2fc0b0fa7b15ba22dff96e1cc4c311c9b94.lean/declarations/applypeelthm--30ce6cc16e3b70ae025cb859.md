# applyPeelThm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52605c56d17a9d705c5f4379c0f3bfe7f4451fd33df7136aa32c668ed8510db9",
  "kind": "def",
  "lexical_name": "applyPeelThm",
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
  "slug": "applypeelthm--30ce6cc16e3b70ae025cb859",
  "source": {
    "blob": "a215d3bb401a05cd2fbfa8ce8e509525fef70783",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 145,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variantbbfd8d209c09dc91e98e7663759aa2fc0b0fa7b15ba22dff96e1cc4c311c9b94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30ce6cc16e3b70ae025cb859e90c815f8e82e93022b751761e9ce42641e683a4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variantbbfd8d209c09dc91e98e7663759aa2fc0b0fa7b15ba22dff96e1cc4c311c9b94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52605c56d17a9d705c5f4379c0f3bfe7f4451fd33df7136aa32c668ed8510db9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def applyPeelThm (thm : Name) (goal : MVarId)
    (e : Expr) (ty target : Expr) (n : Name) (n' : Name) :
    MetaM (FVarId × List MVarId) := do
  let new_goal :: ge :: _ ← goal.applyConst thm <|> throwPeelError ty target
    | throwError "peel: internal error"
  ge.assignIfDefEq e <|> throwPeelError ty target
  let (fvars, new_goal) ← new_goal.introN 2 [n, n']
  return (fvars[1]!, [new_goal])

/-- This is the core to the `peel` tactic.

It tries to match `e` and `goal` as quantified statements (using `∀` and the quantifiers in
the `quantifiers` list), then applies "peel theorems" using `applyPeelThm`.

We treat `∧` as a quantifier for sake of dealing with quantified statements
like `∃ δ > (0 : ℝ), q δ`, which is notation for `∃ δ, δ > (0 : ℝ) ∧ q δ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variantbbfd8d209c09dc91e98e7663759aa2fc0b0fa7b15ba22dff96e1cc4c311c9b94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Peel/Variantbbfd8d209c09dc91e98e7663759aa2fc0b0fa7b15ba22dff96e1cc4c311c9b94.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a215d3bb401a05cd2fbfa8ce8e509525fef70783` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
