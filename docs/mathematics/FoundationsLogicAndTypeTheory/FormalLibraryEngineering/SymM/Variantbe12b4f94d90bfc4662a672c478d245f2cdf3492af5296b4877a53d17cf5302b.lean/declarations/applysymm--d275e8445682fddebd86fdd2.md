# applySymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:185666a6eab23c61ca3a79451a2c9690e254d1c292c2706d3f2cf040117359c2",
  "kind": "def",
  "lexical_name": "applySymm",
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
  "slug": "applysymm--d275e8445682fddebd86fdd2",
  "source": {
    "blob": "490b981820d191a68836e2b200a7a0a3999f8147",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symm/Variantbe12b4f94d90bfc4662a672c478d245f2cdf3492af5296b4877a53d17cf5302b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d275e8445682fddebd86fdd27afa78a60b2148a3ec7bde89ff999e2d253bca42",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantbe12b4f94d90bfc4662a672c478d245f2cdf3492af5296b4877a53d17cf5302b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:185666a6eab23c61ca3a79451a2c9690e254d1c292c2706d3f2cf040117359c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def applySymm (e : Expr) : MetaM Expr := do
  go (← instantiateMVars (← inferType e)) fun lem args body => do
    let .true ← isDefEq args.back e | failure
    mkExpectedTypeHint (mkAppN lem args) (← instantiateMVars body)
where
  /--
  Internal implementation of `Lean.Expr.applySymm`, `Lean.MVarId.applySymm`,
  and the user-facing tactic.

  `tgt` should be of the form `a ~ b`, and is used to index the symm lemmas.

  `k lem args body` should calculate a result,
  given a candidate `symm` lemma `lem`, which will have type `∀ args, body`.

  In `Lean.Expr.applySymm` this result will be a new `Expr`,
  and in `Lean.MVarId.applySymm` and `Lean.MVarId.applySymmAt` this result will be a new goal.
  -/
  -- This function is rather opaque, but the design with a generic continuation `k`
  -- is necessary in order to factor out all the common requirements below.
  go (tgt : Expr) {α} (k : Expr → Array Expr → Expr → MetaM α) : MetaM α := do
    let .app (.app rel _) _ := tgt
      | throwError "symmetry lemmas only apply to binary relations, not{indentExpr tgt}"
    for lem in ← (symmExt.getState (← getEnv)).getMatch rel symmExt.config do
      try
        let lem ← mkConstWithFreshMVarLevels lem
        let (args, _, body) ← withReducible <| forallMetaTelescopeReducing (← inferType lem)
        return (← k lem args body)
      catch _ => pure ()
    throwError "no applicable symmetry lemma found for{indentExpr tgt}"

end Lean.Expr

namespace Lean.MVarId

/-- Apply a symmetry lemma (i.e. marked with `@[symm]`) to a metavariable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantbe12b4f94d90bfc4662a672c478d245f2cdf3492af5296b4877a53d17cf5302b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symm/Variantbe12b4f94d90bfc4662a672c478d245f2cdf3492af5296b4877a53d17cf5302b.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `490b981820d191a68836e2b200a7a0a3999f8147` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
