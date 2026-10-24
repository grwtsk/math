# deriveLawfulFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2fbfa4df35710a866753119b4736a946a238e7f1cdfacdc9718d1620cc58f58",
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
  "slug": "derivelawfulfunctor--7c6b7bfb933680076bcaea36",
  "source": {
    "blob": "2590560cc65d18f50e9ee47dd1f177b7f4c62318",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 275,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c6b7bfb933680076bcaea36c7e36b6d5c8f1696a96081c67368bd9fed2df753",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2fbfa4df35710a866753119b4736a946a238e7f1cdfacdc9718d1620cc58f58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–306.

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
    return { simpTheorems := #[s] }
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
          simpGoal mim (← rules [(``Functor.map_id, false)] [n ++ "map"] true) then
        mim.refl
  let (#[_, _, _, _, _, x], mcm) ← mcm.introN 6 | failure
  let (some mcm, _) ← dsimpGoal mcm (← rules [] [``Functor.map] false) | failure
  let xs ← mcm.induction x (mkRecName n)
  xs.forM fun ⟨mcm, _, _⟩ =>
    mcm.withContext do
      if let (some (_, mcm), _) ←
          simpGoal mcm (← rules [(``Functor.map_comp_map, true)] [n ++ "map"] true) then
        mcm.refl

/-- The deriving handler for `LawfulFunctor`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2590560cc65d18f50e9ee47dd1f177b7f4c62318` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
