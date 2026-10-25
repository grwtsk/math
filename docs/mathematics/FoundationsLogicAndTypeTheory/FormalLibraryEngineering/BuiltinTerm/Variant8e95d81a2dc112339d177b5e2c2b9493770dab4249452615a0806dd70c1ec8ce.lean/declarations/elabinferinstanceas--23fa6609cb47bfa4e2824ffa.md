# elabInferInstanceAs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:12f9b1f81837e868a78faace6fe53c4665957e25580d640ff9e21e550bd756cf",
  "kind": "def",
  "lexical_name": "elabInferInstanceAs",
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
  "slug": "elabinferinstanceas--23fa6609cb47bfa4e2824ffa",
  "source": {
    "blob": "97892747116bee67ed7f742a8664a6a43543e851",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 360,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTerm/Variant8e95d81a2dc112339d177b5e2c2b9493770dab4249452615a0806dd70c1ec8ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23fa6609cb47bfa4e2824ffa860e5ec3750ae0ef98d53a0574a20989310f4500",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTerm/Variant8e95d81a2dc112339d177b5e2c2b9493770dab4249452615a0806dd70c1ec8ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:12f9b1f81837e868a78faace6fe53c4665957e25580d640ff9e21e550bd756cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_term_elab Lean.Parser.Term.inferInstanceAs] def elabInferInstanceAs : TermElab := fun stx expectedType? => do
  -- The type argument is the last child (works for both `inferInstanceAs T` and `inferInstanceAs <| T`)
  let typeStx := stx[stx.getNumArgs - 1]!
  if !backward.inferInstanceAs.wrap.get (← getOptions) then
    return (← elabTerm (← `(_root_.inferInstanceAs $(⟨typeStx⟩))) expectedType?)

  let some expectedType ← tryPostponeIfHasMVars? expectedType? |
    throwError (m!"`inferInstanceAs` failed, expected type contains metavariables{indentD expectedType?}" ++
      .note "`inferInstanceAs` requires full knowledge of the expected (\"target\") type to do its \
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTerm/Variant8e95d81a2dc112339d177b5e2c2b9493770dab4249452615a0806dd70c1ec8ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTerm/Variant8e95d81a2dc112339d177b5e2c2b9493770dab4249452615a0806dd70c1ec8ce.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97892747116bee67ed7f742a8664a6a43543e851` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
