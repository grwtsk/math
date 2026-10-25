# introsExcessArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb715ca9ee6b9075e0cde407b5cc05af20f7484305393d5db35ed6742dfd31f8",
  "kind": "def",
  "lexical_name": "introsExcessArgs",
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
  "slug": "introsexcessargs--17aa443282a1476472b8b699",
  "source": {
    "blob": "c4d992dedf70719b4c5f6212d61db676aefb4c9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 146,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaec81086c800e16f7578fbc6eaac50e357df93e42f7924ca9b14cb274858fae9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17aa443282a1476472b8b6995fe10dd0d456c4de3dfea15d7b9367ad730440ed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaec81086c800e16f7578fbc6eaac50e357df93e42f7924ca9b14cb274858fae9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb715ca9ee6b9075e0cde407b5cc05af20f7484305393d5db35ed6742dfd31f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public partial def introsExcessArgs (goal : MVarId) :
    VCGenM (Option MVarId) := goal.withContext do
  let type ← goal.getType
  let_expr PartialOrder.rel α _inst _pre _rhs := type | return none
  unless α.isForall do return none
  let .goals [goal] ← (← read).backwardRules.stateArgIntro.applyChecked goal
    | throwError "failed to apply {.ofConstName ``Lean.Order.le_of_forall_le} to goal{indentExpr type}"
  let goal ← introsHygienic goal
  return (← introsExcessArgs goal) <|> some goal

/--
Solves conjunctions whose leaves are `True` or `e₁ = e₂`, and returns a residual goal containing
exactly the conjuncts that could not be solved.
This procedure may assign metavariables in `e₁`/`e₂`, for example for `e = ?m` it will assign
`?m := e`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaec81086c800e16f7578fbc6eaac50e357df93e42f7924ca9b14cb274858fae9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantaec81086c800e16f7578fbc6eaac50e357df93e42f7924ca9b14cb274858fae9.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4d992dedf70719b4c5f6212d61db676aefb4c9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
