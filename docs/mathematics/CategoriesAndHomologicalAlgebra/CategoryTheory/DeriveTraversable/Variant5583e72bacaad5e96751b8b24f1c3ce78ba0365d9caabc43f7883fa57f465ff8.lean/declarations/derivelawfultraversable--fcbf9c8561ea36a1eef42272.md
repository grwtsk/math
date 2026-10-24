# deriveLawfulTraversable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:def8f24dca0b6002aa273789fe84e04c550a48592b593ccca5715f6a7561a02b",
  "kind": "def",
  "lexical_name": "deriveLawfulTraversable",
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
  "slug": "derivelawfultraversable--fcbf9c8561ea36a1eef42272",
  "source": {
    "blob": "95bc102a890ea8258bcc0702b2e62cd947938793",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 497,
    "line": 470,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcbf9c8561ea36a1eef42272bbf4d429e33bc41e8e0714b7c2d3948275aae14e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:def8f24dca0b6002aa273789fe84e04c550a48592b593ccca5715f6a7561a02b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–497.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def deriveLawfulTraversable (m : MVarId) : TermElabM Unit := do
  let rules (l₁ : List (Name × Bool)) (l₂ : List (Name)) (b : Bool) : MetaM Simp.Context := do
    let mut s : SimpTheorems := {}
    s ← l₁.foldlM (fun s (n, b) => s.addConst n (inv := b)) s
    s ← l₂.foldlM (fun s n => s.addDeclToUnfold n) s
    if b then
      let hs ← getPropHyps
      s ← hs.foldlM (fun s f => f.getDecl >>= fun d => s.add (.fvar f) #[] d.toExpr) s
    Simp.mkContext { failIfUnchanged := false, unfoldPartialApp := true } (simpTheorems := #[s])
  let .app (.app (.const ``LawfulTraversable _) F) _ ← m.getType >>= instantiateMVars | failure
  let some n := F.getAppFn.constName? | failure
  let [mit, mct, mtmi, mn] ← m.applyConst ``LawfulTraversable.mk | failure
  let defEqns : MetaM Simp.Context := rules [] [.mkStr n "map", .mkStr n "traverse"] true
  traversableLawStarter mit n defEqns fun _ _ m => m.refl
  traversableLawStarter mct n defEqns fun _ _ m => do
    if let (some (_, m), _) ← simpFunctorGoal m
        (← rules [] [.mkStr n "map", .mkStr n "traverse", ``Function.comp] true) then
      m.refl
  traversableLawStarter mtmi n defEqns fun _ _ m => do
    if let (some (_, m), _) ←
        simpGoal m (← rules [(``Traversable.traverse_eq_map_id', false)] [] false) then
    m.refl
  traversableLawStarter mn n defEqns fun _ _ m => do
    if let (some (_, m), _) ←
        simpGoal m (← rules [(``Traversable.naturality_pf, false)] [] false) then
    m.refl

/-- The deriving handler for `LawfulTraversable`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95bc102a890ea8258bcc0702b2e62cd947938793` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
