# unfoldPredRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f1e7fa466e720bccf47cd2084568aeaa43b64b3ac6c9db091c3c3fe5f0af426",
  "kind": "def",
  "lexical_name": "unfoldPredRel",
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
  "slug": "unfoldpredrel--e657d17149496c4ebc07dc26",
  "source": {
    "blob": "8b456021f7f29d5374f54d0cb3ed60dc853a0957",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e657d17149496c4ebc07dc2645b9276e671666beaa37760b502ed9a836084167",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f1e7fa466e720bccf47cd2084568aeaa43b64b3ac6c9db091c3c3fe5f0af426`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unfoldPredRel (predType : Expr) (lhs rhs : Expr) (fixpointType : PartialFixpointType) (reducePremise : Bool := false) : MetaM Expr := do
  guard <| isLatticeTheoretic fixpointType
  forallTelescopeReducing predType fun ts _ => do
    let mut lhs : Expr := mkAppN lhs ts
    let rhs : Expr := mkAppN rhs ts
    if reducePremise then
        lhs ← whnf lhs
    match fixpointType with
    | .inductiveFixpoint =>
      mkForallFVars ts (←mkArrow lhs rhs)
    | .coinductiveFixpoint =>
      mkForallFVars ts (←mkArrow rhs lhs)
    | .partialFixpoint => throwError "Cannot apply lattice induction to a non-lattice fixpoint"
/--
Unfolds a PartialOrder relation between tuples of predicates into an array of quantified implications.

This function handles mutual recursion cases where we have a tuple of predicates being compared. For each predicate in the tuple it projects out the corresponding components from both sides of the relation and unfolds the partial order relation into quantified implications using `unfoldPredRel`

Parameters:
- `eqnInfo`: Equation information containing declaration names and fixpoint types for each predicate in the mutual block
- `body`: The partial order relation expression to unfold
- `reduceConclusion`: Optional parameter (defaults to false) that determines whether to perform weak head normalization on the conclusion

Returns:
An array of expressions, where each element represents the unfolded implication for the corresponding predicate in the mutual block.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b456021f7f29d5374f54d0cb3ed60dc853a0957` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
