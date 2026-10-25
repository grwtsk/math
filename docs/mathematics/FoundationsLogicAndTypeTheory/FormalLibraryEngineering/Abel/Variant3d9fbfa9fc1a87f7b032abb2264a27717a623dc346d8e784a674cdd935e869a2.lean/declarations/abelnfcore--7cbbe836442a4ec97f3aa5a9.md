# abelNFCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6244b4b295b47ba4b442f8c2301b16c0fb36ce507628d1f85869eb882a78592c",
  "kind": "def",
  "lexical_name": "abelNFCore",
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
  "slug": "abelnfcore--7cbbe836442a4ec97f3aa5a9",
  "source": {
    "blob": "937cb3bbb356759b749c89ee242f247057484444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 434,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abel/Variant3d9fbfa9fc1a87f7b032abb2264a27717a623dc346d8e784a674cdd935e869a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7cbbe836442a4ec97f3aa5a98e4640f6d0d153115a5de3eb66d5e4aace0f8abc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abel/Variant3d9fbfa9fc1a87f7b032abb2264a27717a623dc346d8e784a674cdd935e869a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6244b4b295b47ba4b442f8c2301b16c0fb36ce507628d1f85869eb882a78592c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def abelNFCore
    (s : IO.Ref AtomM.State) (cfg : AbelNF.Config) (e : Expr) : MetaM Simp.Result := do
  let ctx := {
    simpTheorems := #[← Elab.Tactic.simpOnlyBuiltins.foldlM (·.addConst ·) {}]
    congrTheorems := ← getSimpCongrTheorems }
  let simp ← match cfg.mode with
  | .raw => pure pure
  | .term =>
    let thms := [``term_eq, ``termg_eq, ``add_zero, ``one_nsmul, ``one_zsmul, ``zsmul_zero]
    let ctx' := { ctx with simpTheorems := #[← thms.foldlM (·.addConst ·) {:_}] }
    pure fun r' : Simp.Result ↦ do
      Simp.mkEqTrans r' (← Simp.main r'.expr ctx' (methods := Simp.DefaultMethods.methods)).1
  let rec
    /-- The recursive case of `abelNF`.
    * `root`: true when the function is called directly from `abelNFCore`
      and false when called by `evalAtom` in recursive mode.
    * `parent`: The input expression to simplify. In `pre` we make use of both `parent` and `e`
      to determine if we are at the top level in order to prevent a loop
      `go -> eval -> evalAtom -> go` which makes no progress.
    -/
    go root parent :=
      let pre e :=
        try
          guard <| root || parent != e -- recursion guard
          let e ← withReducible <| whnf e
          guard e.isApp -- all interesting group expressions are applications
          let (a, pa) ← eval e (← mkContext e) { red := cfg.red, evalAtom } s
          guard !a.isAtom
          let r ← simp { expr := a, proof? := pa }
          if ← withReducible <| isDefEq r.expr e then return .done { expr := r.expr }
          pure (.done r)
        catch _ => pure <| .visit { expr := e }
      let post := (Simp.postDefault · fun _ ↦ none)
      (·.1) <$> Simp.main parent ctx (methods := { pre, post }),
    /-- The `evalAtom` implementation passed to `eval` calls `go` if `cfg.recursive` is true,
    and does nothing otherwise. -/
    evalAtom := if cfg.recursive then go false else fun e ↦ pure { expr := e }
  go true e

open Elab.Tactic Parser.Tactic
/-- Use `abel_nf` to rewrite the main goal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abel/Variant3d9fbfa9fc1a87f7b032abb2264a27717a623dc346d8e784a674cdd935e869a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abel/Variant3d9fbfa9fc1a87f7b032abb2264a27717a623dc346d8e784a674cdd935e869a2.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `937cb3bbb356759b749c89ee242f247057484444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
