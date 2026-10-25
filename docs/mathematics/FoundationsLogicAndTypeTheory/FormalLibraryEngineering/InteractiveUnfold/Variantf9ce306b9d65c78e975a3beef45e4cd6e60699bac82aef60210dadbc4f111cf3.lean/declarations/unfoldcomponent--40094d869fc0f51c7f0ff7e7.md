# UnfoldComponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08d5580a899b6fb29d9bd38187df7eb2ebe2952da37c3c2ac0a602de9d0474f4",
  "kind": "def",
  "lexical_name": "UnfoldComponent",
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
  "slug": "unfoldcomponent--40094d869fc0f51c7f0ff7e7",
  "source": {
    "blob": "c015061b395b1dd201677275c19d484e275c118e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 214,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40094d869fc0f51c7f0ff7e73c3366f0b4dc742ce67774fde61072056f65d97f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08d5580a899b6fb29d9bd38187df7eb2ebe2952da37c3c2ac0a602de9d0474f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def UnfoldComponent : Component SelectInsertParams :=
  mk_rpc_widget% InteractiveUnfold.rpc


/-- Replace the selected expression with a definitional unfolding.
- After each unfolding, we apply `whnfCore` to simplify the expression.
- Explicit natural number expressions are evaluated.
- Unfolds of class projections of instances marked with `@[default_instance]` are not shown.
  This is relevant for notational type classes like `+`: we don't want to suggest `Add.add a b`
  as an unfolding of `a + b`. Similarly for `OfNat n : Nat` which unfolds into `n : Nat`.

To use `unfold?`, shift-click an expression in the tactic state.
This gives a list of rewrite suggestions for the selected expression.
Click on a suggestion to replace `unfold?` by a tactic that performs this rewrite.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c015061b395b1dd201677275c19d484e275c118e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
