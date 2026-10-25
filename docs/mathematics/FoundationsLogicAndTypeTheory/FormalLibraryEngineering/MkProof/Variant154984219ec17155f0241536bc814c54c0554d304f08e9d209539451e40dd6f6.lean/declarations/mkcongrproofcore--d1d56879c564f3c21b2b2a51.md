# mkCongrProofCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d028b55a29794abebd778a0dccc9f02e0d95d60e8b660534a7a90e1dc62da3fc",
  "kind": "def",
  "lexical_name": "mkCongrProofCore",
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
  "slug": "mkcongrproofcore--d1d56879c564f3c21b2b2a51",
  "source": {
    "blob": "dfc379783c76d7ad01c62f53e4cc6306991feafd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 245,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1d56879c564f3c21b2b2a51a4cff054c30adce35caa93c26b975c14ee9b0f9d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d028b55a29794abebd778a0dccc9f02e0d95d60e8b660534a7a90e1dc62da3fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkCongrProofCore (lhs rhs : Expr) (heqProofs : Bool) : CCM Expr := do
  let mut lhsArgsRev : Array Expr := #[]
  let mut rhsArgsRev : Array Expr := #[]
  let mut lhsIt := lhs
  let mut rhsIt := rhs
  -- Collect the arguments to `lhs` and `rhs`.
  -- As an optimization, we stop collecting arguments as soon as the functions are defeq,
  -- so `lhsFn` and `rhsFn` might end up still of the form `(f x y z)` and `(f x' y' z')`.
  if lhs != rhs then
    repeat
      let .app lhsItFn lhsItArg := lhsIt | failure
      let .app rhsItFn rhsItArg := rhsIt | failure
      lhsArgsRev := lhsArgsRev.push lhsItArg
      rhsArgsRev := rhsArgsRev.push rhsItArg
      lhsIt := lhsItFn
      rhsIt := rhsItFn
      if lhsIt == rhsIt then
        break
      if ← pureIsDefEq lhsIt rhsIt then
        break
      if ← isEqv lhsIt rhsIt <&&>
          inferType lhsIt >>= fun i₁ => inferType rhsIt >>= fun i₂ => pureIsDefEq i₁ i₂ then
        break
  -- If we collect no arguments, the expressions themselves are defeq; return `rfl`.
  if lhsArgsRev.isEmpty then
    if heqProofs then
      return (← mkHEqRefl lhs)
    else
      return (← mkEqRefl lhs)
  let lhsArgs := lhsArgsRev.reverse
  let rhsArgs := rhsArgsRev.reverse
  -- Ensure that `lhsFn = rhsFn`, they have the same type and the same list of arguments.
  let PLift.up ha ← if ha : lhsArgs.size = rhsArgs.size then pure (PLift.up ha) else failure
  let lhsFn := lhsIt
  let rhsFn := rhsIt
  guard (← isEqv lhsFn rhsFn <||> pureIsDefEq lhsFn rhsFn)
  guard (← pureIsDefEq (← inferType lhsFn) (← inferType rhsFn))
  /- Create `r`, a proof for
  `lhsFn lhsArgs[0] ... lhsArgs[n-1] = lhsFn rhsArgs[0] ... rhsArgs[n-1]`
     where `n := lhsArgs.size` -/
  let some specLemma ← mkCCHCongrTheorem lhsFn lhsArgs.size | failure
  let mut kindsIt := specLemma.argKinds
  let mut lemmaArgs : Array Expr := #[]
  for hi : i in [:lhsArgs.size] do
    guard !kindsIt.isEmpty
    lemmaArgs := lemmaArgs.push lhsArgs[i] |>.push (rhsArgs[i]'(ha.symm ▸ hi.2.1))
    if kindsIt[0]! matches CongrArgKind.heq then
      let some p ← getHEqProof lhsArgs[i] (rhsArgs[i]'(ha.symm ▸ hi.2.1)) | failure
      lemmaArgs := lemmaArgs.push p
    else
      guard (kindsIt[0]! matches .eq)
      let some p ← getEqProof lhsArgs[i] (rhsArgs[i]'(ha.symm ▸ hi.2.1)) | failure
      lemmaArgs := lemmaArgs.push p
    kindsIt := kindsIt.eraseIdx! 0
  let mut r := mkAppN specLemma.proof lemmaArgs
  if specLemma.heqResult && !heqProofs then
    r ← mkAppM ``eq_of_heq #[r]
  else if !specLemma.heqResult && heqProofs then
    r ← mkAppM ``heq_of_eq #[r]
  if ← pureIsDefEq lhsFn rhsFn then
    return r
  /- Convert `r` into a proof of `lhs = rhs` using `Eq.rec` and
     the proof that `lhsFn = rhsFn` -/
  let some lhsFnEqRhsFn ← getEqProof lhsFn rhsFn | failure
  let motive ←
    withLocalDeclD `x (← inferType lhsFn) fun x => do
      let motiveRhs := mkAppN x rhsArgs
      let motive ← if heqProofs then mkHEq lhs motiveRhs else mkEq lhs motiveRhs
      let hType ← mkEq lhsFn x
      withLocalDeclD `h hType fun h =>
        mkLambdaFVars #[x, h] motive
  mkEqRec motive r lhsFnEqRhsFn

/-- If `e₁ : R lhs₁ rhs₁`, `e₂ : R lhs₂ rhs₂` and `lhs₁ = rhs₂`, where `R` is a symmetric relation,
prove `R lhs₁ rhs₁` is equivalent to `R lhs₂ rhs₂`.

* if `lhs₁` is known to equal `lhs₂`, return `none`
* if `lhs₁` is not known to equal `rhs₂`, fail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variant154984219ec17155f0241536bc814c54c0554d304f08e9d209539451e40dd6f6.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfc379783c76d7ad01c62f53e4cc6306991feafd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
