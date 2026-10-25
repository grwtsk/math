# Lean.MVarId.subsingletonHelim?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b49f0a5d35a12020c73a337d0c6130077124e8bd0d09c59c8b6a499ebea019db",
  "kind": "def",
  "lexical_name": "Lean.MVarId.subsingletonHelim?",
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
  "slug": "lean-mvarid-subsingletonhelim--ea8aaaaad9796b0f8f359e02",
  "source": {
    "blob": "5dab970ac46b8d79d823379ea7951e93247fbb02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 709,
    "line": 691,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variantc590e4ac269203922fe409beb2a778ba5996043c49a93a3db5e32d3bc639da35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea8aaaaad9796b0f8f359e0233f6f60e697790a58290d169f20298c6a67275b9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variantc590e4ac269203922fe409beb2a778ba5996043c49a93a3db5e32d3bc639da35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b49f0a5d35a12020c73a337d0c6130077124e8bd0d09c59c8b6a499ebea019db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 691–709.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.MVarId.subsingletonHelim? (mvarId : MVarId) : MetaM (Option (List MVarId)) :=
  mvarId.withContext <| observing? do
    mvarId.checkNotAssigned `subsingletonHelim
    let some (α, lhs, β, rhs) := (← withReducible mvarId.getType').heq? | failure
    let eqmvar ← mkFreshExprSyntheticOpaqueMVar (← mkEq α β) (← mvarId.getTag)
    -- First try synthesizing using the left-hand side for the Subsingleton instance
    if let some pf ← observing? (mkAppM ``Subsingleton.helim #[eqmvar, lhs, rhs]) then
      mvarId.assign pf
      return [eqmvar.mvarId!]
    let eqsymm ← mkAppM ``Eq.symm #[eqmvar]
    -- Second try synthesizing using the right-hand side for the Subsingleton instance
    if let some pf ← observing? (mkAppM ``Subsingleton.helim #[eqsymm, rhs, lhs]) then
      mvarId.assign (← mkAppM ``HEq.symm #[pf])
      return [eqmvar.mvarId!]
    failure

/--
A list of all the congruence strategies used by `Lean.MVarId.congrCore!`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variantc590e4ac269203922fe409beb2a778ba5996043c49a93a3db5e32d3bc639da35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variantc590e4ac269203922fe409beb2a778ba5996043c49a93a3db5e32d3bc639da35.lean#L691).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dab970ac46b8d79d823379ea7951e93247fbb02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
