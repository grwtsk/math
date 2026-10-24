# deriveLawfulFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee4022a023b267dbbe53eea50f040c9f0aa89c8047020192d1cf65358b9ddc50",
  "kind": "def",
  "lexical_name": "deriveLawfulFunctor",
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
  "slug": "derivelawfulfunctor--afc1895af093f75bc05cb82e",
  "source": {
    "blob": "95bc102a890ea8258bcc0702b2e62cd947938793",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 277,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afc1895af093f75bc05cb82e21b18a7aef6b7610a095bdecdbe908d6ef84f523",
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

Occurrence: `declaration:ee4022a023b267dbbe53eea50f040c9f0aa89c8047020192d1cf65358b9ddc50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def deriveLawfulFunctor (m : MVarId) : TermElabM Unit := do
  let rules (l₁ : List (Name × Bool)) (l₂ : List (Name)) (b : Bool) : MetaM Simp.Context := do
    let mut s : SimpTheorems := {}
    s ← l₁.foldlM (fun s (n, b) => s.addConst n (inv := b)) s
    s ← l₂.foldlM (fun s n => s.addDeclToUnfold n) s
    if b then
      let hs ← getPropHyps
      s ← hs.foldlM (fun s f => f.getDecl >>= fun d => s.add (.fvar f) #[] d.toExpr) s
    Simp.mkContext (simpTheorems := #[s])
  let .app (.app (.const ``LawfulFunctor _) F) _ ← m.getType >>= instantiateMVars | failure
  let some n := F.getAppFn.constName? | failure
  let [mcn, mim, mcm] ← m.applyConst ``LawfulFunctor.mk | failure
  let (_, mcn) ← mcn.introN 2
  mcn.refl
  let (#[_, x], mim) ← mim.introN 2 | failure
  let (some mim, _) ← dsimpGoal mim (← rules [] [``Functor.map] false) | failure
  let xs ← mim.induction x (mkRecName n)
  xs.forM fun ⟨mim, _, _⟩ =>
    mim.withContext do
      if let (some (_, mim), _) ←
          simpGoal mim (← rules [(``Functor.map_id, false)] [.mkStr n "map"] true) then
        mim.refl
  let (#[_, _, _, _, _, x], mcm) ← mcm.introN 6 | failure
  let (some mcm, _) ← dsimpGoal mcm (← rules [] [``Functor.map] false) | failure
  let xs ← mcm.induction x (mkRecName n)
  xs.forM fun ⟨mcm, _, _⟩ =>
    mcm.withContext do
      if let (some (_, mcm), _) ←
          simpGoal mcm (← rules [(``Functor.map_comp_map, true)] [.mkStr n "map"] true) then
        mcm.refl

/-- The deriving handler for `LawfulFunctor`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95bc102a890ea8258bcc0702b2e62cd947938793` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
