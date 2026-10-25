# mkSizeOfAuxLemmaProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a75cc42f3c1ece63fd501490f6e2759d3945d743dc46fabe87b290a1ab76a81",
  "kind": "def",
  "lexical_name": "mkSizeOfAuxLemmaProof",
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
  "slug": "mksizeofauxlemmaproof--f5d9020036af7432388b9936",
  "source": {
    "blob": "983fb719306e794879b87770a5ea6ec52b5a212d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 277,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant04197a145f3d11a1c8443ea0ba8c33601b48d06c991c5d5389f74ede470e9c06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5d9020036af7432388b9936da61b106b090fa6b12b8a35cbbb0a751e92b36ab",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant04197a145f3d11a1c8443ea0ba8c33601b48d06c991c5d5389f74ede470e9c06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a75cc42f3c1ece63fd501490f6e2759d3945d743dc46fabe87b290a1ab76a81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
  private partial def mkSizeOfAuxLemmaProof (info : InductiveVal) (lhs : Expr) : M Expr := do
    let lhsArgs := lhs.getAppArgs
    let sizeOfBaseArgs := lhsArgs[*...(lhsArgs.size - info.numIndices - 1)]
    let indicesMajor := lhsArgs[(lhsArgs.size - info.numIndices - 1)...*]
    let sizeOfLevels := lhs.getAppFn.constLevels!
    let rec
      /-- Auxiliary function for constructing an `_sizeOf_<idx>` for `ys`,
        where `ys` are the indices + major.
        Recall that if `info.name` is part of a mutually inductive declaration, then the resulting application
        is not necessarily a `lhs.getAppFn` application.
        The result is an application of one of the `(← read),sizeOfFns` functions.
        We use this auxiliary function to builtin the motive of the recursor. -/
      mkSizeOf (ys : Array Expr) : M Expr := do
      for sizeOfFn in (← read).sizeOfFns do
        let candidate := mkAppN (mkAppN (mkConst sizeOfFn sizeOfLevels) sizeOfBaseArgs) ys
        if (← isTypeCorrect candidate) then
          return candidate
      throwFailed
    let major := lhs.appArg!
    let majorType ← whnf (← inferType major)
    let majorTypeArgs := majorType.getAppArgs
    match majorType.getAppFn.const? with
    | none => throwFailed
    | some (_, us) =>
      let recName := mkRecName info.name
      let recInfo ← getConstInfoRec recName
      let r := mkConst recName (Level.zero :: us)
      let r := mkAppN r majorTypeArgs[*...info.numParams]
      forallBoundedTelescope (← inferType r) recInfo.numMotives fun motiveFVars _ => do
        let mut r := r
        -- Add motives
        for motiveFVar in motiveFVars do
          let motive ← forallTelescopeReducing (← inferType motiveFVar) fun ys _ => do
            let lhs ← mkSizeOf ys
            let rhs ← mkAppM ``SizeOf.sizeOf #[ys.back!]
            mkLambdaFVars ys (← mkEq lhs rhs)
          r := mkApp r motive
        forallBoundedTelescope (← inferType r) recInfo.numMinors fun minorFVars _ => do
          let mut r := r
          -- Add minors
          for minorFVar in minorFVars do
            let minor ← forallTelescopeReducing (← inferType minorFVar) fun ys target => do
              let target ← whnf target
              match target.eq? with
              | none => throwFailed
              | some (_, lhs, rhs) =>
                if (← isDefEq lhs rhs) then
                  mkLambdaFVars ys (← mkEqRefl rhs)
                else
                  let lhs ← unfoldDefinition lhs -- Unfold `_sizeOf_<idx>`
                  -- rhs is of the form `sizeOf (ctor ...)`
                  let ctorApp := rhs.appArg!
                  let specLemma ← mkSizeOfSpecLemmaInstance ctorApp
                  let specEq ← whnf (← inferType specLemma)
                  match specEq.eq? with
                  | none => throwFailed
                  | some (_, _, rhsExpanded) =>
                    let lhs_eq_rhsExpanded ← mkMinorProof ys lhs rhsExpanded
                    let rhsExpanded_eq_rhs ← mkEqSymm specLemma
                    mkLambdaFVars ys (← mkEqTrans lhs_eq_rhsExpanded rhsExpanded_eq_rhs)
            r := mkApp r minor
          -- Add indices and major
          return mkAppN r indicesMajor

  /--
    Generate proof for `C._sizeOf_<idx> t = sizeOf t` where `C._sizeOf_<idx>` is a auxiliary function
    generated for a nested inductive type in `C`.
    For example, given
    ```lean
    inductive Expr where
      | app (f : String) (args : List Expr)
    ```
    We generate the auxiliary function `Expr._sizeOf_1 : List Expr → Nat`.
    To generate the `sizeOf` spec lemma
    ```
    sizeOf (Expr.app f args) = 1 + sizeOf f + sizeOf args
    ```
    we need an auxiliary lemma for showing `Expr._sizeOf_1 args = sizeOf args`.
    Recall that `sizeOf (Expr.app f args)` is definitionally equal to `1 + sizeOf f + Expr._sizeOf_1 args`, but
    `Expr._sizeOf_1 args` is **not** definitionally equal to `sizeOf args`. We need a proof by induction.
  -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant04197a145f3d11a1c8443ea0ba8c33601b48d06c991c5d5389f74ede470e9c06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant04197a145f3d11a1c8443ea0ba8c33601b48d06c991c5d5389f74ede470e9c06.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `983fb719306e794879b87770a5ea6ec52b5a212d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
