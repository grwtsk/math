# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:201237ab2e847d5378dbeb9b428caef42f9e14d0d0d43ee02fabfb297e53fe4f",
  "kind": "elab_rules",
  "lexical_name": null,
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
  "slug": "elab-rules--be1b40f25ad089af82159506",
  "source": {
    "blob": "b2d2a7f1db647333d05383001e4098168365eba4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assume/Variantc8b476e1720884432376a43ddd1359706f7dc4bd110bb0b4e81c26f5a39e4165.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be1b40f25ad089af821595068db0cfca3a915baf0c09ea8ca34941d0fa2709a0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assume/Variantc8b476e1720884432376a43ddd1359706f7dc4bd110bb0b4e81c26f5a39e4165.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:201237ab2e847d5378dbeb9b428caef42f9e14d0d0d43ee02fabfb297e53fe4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
  | `(tactic| assume $[$t?:term]?) => do
    let some t := t?
      | throwError "Tactic 'assume' failed: No hypotheses given."
    withMainContext do
      let e ← elabTerm t (some (.sort .zero))
      let eType ← inferType e
      let .true ← isDefEq eType (.sort .zero) |
        throwErrorAt t "Tactic 'assume' failed: Given type{indentExpr e}\nis not a proposition."
      let tgt ← getMainTarget
      let .forallE _ b _ _ ← whnf tgt |
        throwErrorAt t "Tactic 'assume' failed: Goal{indentExpr tgt}\nis not an implication."
      let .true ← isDefEq b e |
        throwErrorAt t "Tactic 'assume' failed: Given type{indentExpr e}\ndoes not match the \
        type{indentExpr b}\nof the hypothesis in the goal."
      evalTactic (← `(tactic | intro (_ : $t)))
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assume/Variantc8b476e1720884432376a43ddd1359706f7dc4bd110bb0b4e81c26f5a39e4165.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assume/Variantc8b476e1720884432376a43ddd1359706f7dc4bd110bb0b4e81c26f5a39e4165.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2d2a7f1db647333d05383001e4098168365eba4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
