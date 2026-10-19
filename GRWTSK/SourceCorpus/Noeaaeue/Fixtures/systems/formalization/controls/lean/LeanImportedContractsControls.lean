import LeanImportedContracts

/- Synthetic contract comparisons are not inserted into the environment and
are never offered to the kernel as declarations or proof acceptance. -/
open Lean LeanImportedContracts

run_cmd do
  let env ← getEnv
  let some (.inductInfo iv) := env.find? `PProd | throwError "INDUCTIVE_FIXTURE_UNAVAILABLE"
  let some (.ctorInfo cv) := env.find? `PProd.mk | throwError "CONSTRUCTOR_FIXTURE_UNAVAILABLE"
  let some (.defnInfo dv) := env.find? `PProd.fst | throwError "DEFINITION_FIXTURE_UNAVAILABLE"
  let mut cases := 0
  let check (condition : Bool) (label : String) : IO Unit := do
    if !condition then throw <| IO.userError label
  for ci in #[.inductInfo iv, .ctorInfo cv, .defnInfo dv] do
    liftM <| check (sameConstantInfo ci ci) "POSITIVE_FULL_VARIANT_EQUALITY"
    cases := cases + 1
  let x := Expr.forallE `x (.sort .zero) (.bvar 0) .default
  let y := Expr.forallE `y (.sort .zero) (.bvar 0) .default
  let a := Expr.forallE `x (.sort .zero) (.bvar 0) .implicit
  let left := ConstantInfo.inductInfo { iv with type := x }
  let inductiveChanges : Array ConstantInfo := #[
    .inductInfo { iv with type := y }, .inductInfo { iv with type := a },
    .inductInfo { iv with type := x, name := `Different },
    .inductInfo { iv with type := x, levelParams := [] },
    .inductInfo { iv with type := x, numParams := iv.numParams + 1 },
    .inductInfo { iv with type := x, numIndices := iv.numIndices + 1 },
    .inductInfo { iv with type := x, all := [] }, .inductInfo { iv with type := x, ctors := [] },
    .inductInfo { iv with type := x, numNested := iv.numNested + 1 },
    .inductInfo { iv with type := x, isRec := !iv.isRec },
    .inductInfo { iv with type := x, isUnsafe := !iv.isUnsafe },
    .inductInfo { iv with type := x, isReflexive := !iv.isReflexive }]
  for changed in inductiveChanges do
    liftM <| check (!sameConstantInfo left changed) "INDUCTIVE_FIELD_MUTATION_ACCEPTED"
    cases := cases + 1
  let ctorLeft := ConstantInfo.ctorInfo { cv with type := x }
  let ctorChanges : Array ConstantInfo := #[
    .ctorInfo { cv with type := y }, .ctorInfo { cv with type := a },
    .ctorInfo { cv with type := x, name := `Different },
    .ctorInfo { cv with type := x, levelParams := [] },
    .ctorInfo { cv with type := x, induct := `Different },
    .ctorInfo { cv with type := x, cidx := cv.cidx + 1 },
    .ctorInfo { cv with type := x, numParams := cv.numParams + 1 },
    .ctorInfo { cv with type := x, numFields := cv.numFields + 1 },
    .ctorInfo { cv with type := x, isUnsafe := !cv.isUnsafe }]
  for changed in ctorChanges do
    liftM <| check (!sameConstantInfo ctorLeft changed) "CONSTRUCTOR_FIELD_MUTATION_ACCEPTED"
    cases := cases + 1
  let lx := Expr.lam `x (.sort .zero) (.bvar 0) .default
  let ly := Expr.lam `y (.sort .zero) (.bvar 0) .default
  let la := Expr.lam `x (.sort .zero) (.bvar 0) .implicit
  let defLeft := ConstantInfo.defnInfo { dv with type := x, value := lx }
  let defChanges : Array ConstantInfo := #[
    .defnInfo { dv with type := y, value := lx }, .defnInfo { dv with type := a, value := lx },
    .defnInfo { dv with type := x, value := ly }, .defnInfo { dv with type := x, value := la },
    .defnInfo { dv with type := x, value := lx, name := `Different },
    .defnInfo { dv with type := x, value := lx, levelParams := [] },
    .defnInfo { dv with type := x, value := lx, hints := .opaque },
    .defnInfo { dv with type := x, value := lx, safety := .partial },
    .defnInfo { dv with type := x, value := lx, all := [] }]
  for changed in defChanges do
    liftM <| check (!sameConstantInfo defLeft changed) "DEFINITION_FIELD_MUTATION_ACCEPTED"
    cases := cases + 1
  liftM <| check (!sameConstantInfo (.inductInfo iv) (.ctorInfo cv)) "CROSS_VARIANT_EQUALITY"
  cases := cases + 1
  liftM <| check (x == y && x == a && lx == ly && lx == la) "ALPHA_CONTROL_PREMISE"
  cases := cases + 1
  liftM <| check (!boundedName .anonymous && boundedName `PProd) "NAME_BOUNDARY"
  cases := cases + 1
  liftM <| IO.println s!"NATIVE_CONTRACT_COMPARISON_CONTROLS:{cases}"
