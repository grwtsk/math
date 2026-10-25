# simpIntroCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe31e30faf1ac6209351cc357b4992676efc9e45b42a08e7ec12dfa5e24ecf3c",
  "kind": "def",
  "lexical_name": "simpIntroCore",
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
  "slug": "simpintrocore--4f4b52094c1b5ececdffdc54",
  "source": {
    "blob": "94042231d725b1d5982bf04dfb7e168512ca62a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpIntro/Variant22818ba067e8db8a1ef89a5d266bc0e8ed61906eb6a685ace74c6da848b27e43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f4b52094c1b5ececdffdc548141b9010450344a2c694b53a4a79ef44e7f93da",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpIntro/Variant22818ba067e8db8a1ef89a5d266bc0e8ed61906eb6a685ace74c6da848b27e43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe31e30faf1ac6209351cc357b4992676efc9e45b42a08e7ec12dfa5e24ecf3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def simpIntroCore (g : MVarId) (ctx : Simp.Context) (simprocs : Simp.SimprocsArray := #[])
    (discharge? : Option Simp.Discharge) (more : Bool) (ids : List (TSyntax ``binderIdent)) :
    TermElabM (Option MVarId) := do
  let done := return (← simpTargetCore g ctx simprocs discharge?).1
  let (transp, var, ids') ← match ids with
    | [] => if more then pure (.reducible, mkHole (← getRef), []) else return ← done
    | v::ids => pure (.default, v.raw[0], ids)
  let t ← withTransparency transp g.getType'
  let n := if var.isIdent then var.getId else `_
  let withFVar := fun (fvar, g) ↦ g.withContext do
    Term.addLocalVarInfo var (mkFVar fvar)
    let simpTheorems ← ctx.simpTheorems.addTheorem (.fvar fvar) (.fvar fvar)
    simpIntroCore g (ctx.setSimpTheorems simpTheorems) simprocs discharge? more ids'
  match t with
  | .letE .. => withFVar (← g.intro n)
  | .forallE (body := body) .. =>
    let (fvar, g) ← g.intro n
    if body.hasLooseBVars then withFVar (fvar, g) else
    match (← simpLocalDecl g fvar ctx simprocs discharge?).1 with
    | none =>
      g.withContext <| Term.addLocalVarInfo var (mkFVar fvar)
      return none
    | some g' => withFVar g'
  | _ =>
    if more && ids.isEmpty then done else
    throwErrorAt var "simp_intro failed to introduce {var}\n{g}"

open Parser.Tactic
/--
The `simp_intro` tactic is a combination of `simp` and `intro`: it will simplify the types of
variables as it introduces them and uses the new variables to simplify later arguments
and the goal.
* `simp_intro x y z` introduces variables named `x y z`
* `simp_intro x y z ..` introduces variables named `x y z` and then keeps introducing `_` binders
* `simp_intro (config := cfg) (discharger := tac) x y .. only [h₁, h₂]`:
  `simp_intro` takes the same options as `simp` (see `simp`)
```
example : x + 0 = y → x = z := by
  simp_intro h
  -- h: x = y ⊢ y = z
  sorry
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpIntro/Variant22818ba067e8db8a1ef89a5d266bc0e8ed61906eb6a685ace74c6da848b27e43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpIntro/Variant22818ba067e8db8a1ef89a5d266bc0e8ed61906eb6a685ace74c6da848b27e43.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94042231d725b1d5982bf04dfb7e168512ca62a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
