# introPre

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43cc9d3d9590402301ffd3b5a3b4fcf1b484452d86f36aac4af76b45a6cab556",
  "kind": "def",
  "lexical_name": "introPre",
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
  "slug": "intropre--2db72e0b3cb62f39372246dd",
  "source": {
    "blob": "d4ac6a88051cf9f652105bdf42d84c8319d5c110",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant0989dc6a6171e984f2d0f2d96f44fd3bdf5eb806aae7dfb7c812c7c8611a4933.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2db72e0b3cb62f39372246dd8c075cf538c4c7e7e24b7475bd62ab865c7fca1a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant0989dc6a6171e984f2d0f2d96f44fd3bdf5eb806aae7dfb7c812c7c8611a4933.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43cc9d3d9590402301ffd3b5a3b4fcf1b484452d86f36aac4af76b45a6cab556`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def introPre (rule : BackwardRule) (goal : MVarId) : VCGenM (MVarId × FVarId) := do
  let .goals [goal] ← rule.applyChecked goal
    | throwError "Failed to apply precondition intro rule to {goal}"
  let goal ← introsHygienic goal
  let some decl := (← goal.withContext getLCtx).lastDecl
    | throwError "Failed to intro the lifted precondition of {goal}"
  return (goal, decl.fvarId)

/--
Reduce an `EPost.Cons.head` projection on the RHS of `pre ⊑ rhs` to the underlying component:
concrete `epost⟨…⟩` values project to the selected component, and `⊥.head x₁ … xₙ` rewrites to
`⊥` via `replaceEPostHeadBot?`. Returns `none` if the RHS is not such a projection.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant0989dc6a6171e984f2d0f2d96f44fd3bdf5eb806aae7dfb7c812c7c8611a4933.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant0989dc6a6171e984f2d0f2d96f44fd3bdf5eb806aae7dfb7c812c7c8611a4933.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4ac6a88051cf9f652105bdf42d84c8319d5c110` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
