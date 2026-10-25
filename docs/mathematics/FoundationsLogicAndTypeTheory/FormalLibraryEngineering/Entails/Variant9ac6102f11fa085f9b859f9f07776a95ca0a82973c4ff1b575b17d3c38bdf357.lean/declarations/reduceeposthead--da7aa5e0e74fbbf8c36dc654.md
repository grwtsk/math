# reduceEPostHead?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a7f3d0e5985b6a6d478fa67e0c07c8840669acc9595ead9f6e4b17efb498dc0",
  "kind": "def",
  "lexical_name": "reduceEPostHead?",
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
  "slug": "reduceeposthead--da7aa5e0e74fbbf8c36dc654",
  "source": {
    "blob": "60e5a06bfd9979f27d4e518c4e222d201a4dd53d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant9ac6102f11fa085f9b859f9f07776a95ca0a82973c4ff1b575b17d3c38bdf357.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da7aa5e0e74fbbf8c36dc65407a3313f9a5006659218f266f51d19bfd3c655ea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant9ac6102f11fa085f9b859f9f07776a95ca0a82973c4ff1b575b17d3c38bdf357.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a7f3d0e5985b6a6d478fa67e0c07c8840669acc9595ead9f6e4b17efb498dc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def reduceEPostHead? (goal : MVarId) (target α inst pre rhs : Expr) :
    VCGenM (Option MVarId) :=
  rhs.withApp fun head args => do
    unless head.isConstOf ``EPost.Cons.head do return none
    let some epostArg := args[2]? | return none
    -- `⊥.head x₁ … xₙ` is propositionally `⊥`; reduce it to a clean `pre ⊑ ⊥` VC.
    if epostArg.isAppOf ``Lean.Order.bot then
      return (← replaceEPostHeadBot? goal target head args)
    let (epostTarget, index) := peelEPostTailChain epostArg
    let some epost ← mkEPostAtIndex epostTarget index | return none
    let excessArgs := args.drop 3
    let rhs ← betaS epost excessArgs
    let newTarget ← mkAppNS target.getAppFn #[α, inst, pre, rhs]
    return some (← goal.replaceTargetDefEqFast newTarget)

/-- Refold a meet upper adjoint `upperAdjoint (meet F) Q s⃗` on the RHS of `pre ⊑ rhs` to the Heyting
implication `(F ⇨ Q) s⃗`, rewriting `goal` and returning it with its new RHS, so it decomposes through
the clean pointwise `⇨` split instead of generic point-framing. Returns `none` if the RHS is not a
meet upper adjoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant9ac6102f11fa085f9b859f9f07776a95ca0a82973c4ff1b575b17d3c38bdf357.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant9ac6102f11fa085f9b859f9f07776a95ca0a82973c4ff1b575b17d3c38bdf357.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60e5a06bfd9979f27d4e518c4e222d201a4dd53d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
