# proveLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:753f448ed60fe25e8462b5efed22e0d75788b032816cd2a9da44b510c8f43f0d",
  "kind": "def",
  "lexical_name": "proveLE",
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
  "slug": "provele--abe20e9abfab622846b6fff2",
  "source": {
    "blob": "6dc2fcf9b14a8af086c30d06a8033eff9528ccec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 209,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compare/Variant100d9f7f9059943dc2663b5ff0509dae921e6c3e6be1bd26a71bbfe9e94a5c47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abe20e9abfab622846b6fff207ce3a608e10d847743ae9811602a6e01201a29e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compare/Variant100d9f7f9059943dc2663b5ff0509dae921e6c3e6be1bd26a71bbfe9e94a5c47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:753f448ed60fe25e8462b5efed22e0d75788b032816cd2a9da44b510c8f43f0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def proveLE (g : MVarId) : MetaM Unit := do
  let some (α, e₁, e₂) := (← whnfR <|← instantiateMVars <|← g.getType).le?
    | throwError "ring failed: not of the form `A ≤ B`"
  let .sort u ← whnf (← inferType α) | unreachable!
  let v ← try u.dec catch _ => throwError "not a type{indentExpr α}"
  have α : Q(Type v) := α
  let ics ← synthInstanceQ q(CommSemiring $α)
  let ipo ← synthInstanceQ q(PartialOrder $α)
  let sα ← synthInstanceQ q(IsOrderedRing $α)
  assumeInstancesCommute
  have e₁ : Q($α) := e₁; have e₂ : Q($α) := e₂
  let c ← mkCache q($ics)
  let (⟨a, va, pa⟩, ⟨b, vb, pb⟩)
    ← AtomM.run .instances do pure (← eval q($ics) c e₁, ← eval q($ics) c e₂)
  match ← evalLE ics ipo sα va vb with
  | .ok p => g.assign q(le_congr $pa $p $pb)
  | .error e =>
    let g' ← mkFreshExprMVar (← (← ringCleanupRef.get) q($a ≤ $b))
    match e with
    | notComparable =>
      throwError "ring failed, ring expressions not equal up to an additive constant\n{g'.mvarId!}"
    | tooSmall => throwError "comparison failed, LHS is larger\n{g'.mvarId!}"

attribute [local instance] monadLiftOptionMetaM in
/-- Prove goals of the form `A < B` in an ordered commutative semiring, if the ring-normal forms of
`A` and `B` differ by a positive (additive) constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compare/Variant100d9f7f9059943dc2663b5ff0509dae921e6c3e6be1bd26a71bbfe9e94a5c47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compare/Variant100d9f7f9059943dc2663b5ff0509dae921e6c3e6be1bd26a71bbfe9e94a5c47.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dc2fcf9b14a8af086c30d06a8033eff9528ccec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
