# formatErrorMessage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e97cd6f79a8fe09938133aae7e393e2451b5cec7d4c41a30332b4da22ae8980",
  "kind": "def",
  "lexical_name": "formatErrorMessage",
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
  "slug": "formaterrormessage--27284e6e1dfcd327a020d020",
  "source": {
    "blob": "0697a012031c4b77134cc42bd821710396ed7cfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 541,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27284e6e1dfcd327a020d02086d3442387d7f70c735f6d2a1f3987ce827a9738",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e97cd6f79a8fe09938133aae7e393e2451b5cec7d4c41a30332b4da22ae8980`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 541–627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def formatErrorMessage (p : Problem) : OmegaM MessageData := do
  if p.possible then
    if p.isEmpty then
      return m!"No usable constraints found. You may need to unfold definitions so `omega` can see \
      linear arithmetic facts about `Nat` and `Int`, which may also involve multiplication, \
      division, and modular remainder by constants."
    else
      let as ← atoms
      return .ofLazyM (es := as) do
        let mask ← mentioned as p.constraints
        let names ← varNames mask
        return m!"a possible counterexample may satisfy the constraints\n" ++
          m!"{prettyConstraints names p.constraints}\nwhere\n{prettyAtoms names as mask}"
  else
    -- formatErrorMessage should not be used in this case
    return "it is trivially solvable"
where
  varNameOf (i : Nat) : String :=
    let c : Char := .ofNat ('a'.toNat + (i % 26))
    let suffix := if i < 26 then "" else s!"_{i / 26}"
    s!"{c}{suffix}"

  inScope (s : String) : MetaM Bool := do
    let n := .mkSimple s
    if (← resolveGlobalName n).isEmpty then
      if ((← getLCtx).findFromUserName? n).isNone then
        return false
    return true

  -- Assign ascending names a, b, c, …, z, a1 … to all atoms mentioned according to the mask
  -- but avoid names in the local or global scope
  varNames (mask : Array Bool) : MetaM (Array String) := do
    let mut names := #[]
    let mut next := 0
    for h : i in *...mask.size do
      if mask[i] then
        while ← inScope (varNameOf next) do next := next + 1
        names := names.push (varNameOf next)
        next := next + 1
      else
        names := names.push "(masked)"
    return names

  -- We sort the constraints; otherwise the order is dependent on details of the hashing
  -- and this can cause test suite output churn
  prettyConstraints (names : Array String) (constraints : Std.HashMap Coeffs Fact) : String :=
    constraints.toList
      |>.toArray
      |>.qsort (·.1 < ·.1)
      |>.map (fun ⟨coeffs, ⟨_, cst, _⟩⟩ => "  " ++ prettyConstraint (prettyCoeffs names coeffs) cst)
      |>.toList
      |> "\n".intercalate

  prettyConstraint (e : String) : Constraint → String
    | ⟨none, none⟩ => s!"{e} is unconstrained" -- should not happen in error messages
    | ⟨none, some y⟩ => s!"{e} ≤ {y}"
    | ⟨some x, none⟩ => s!"{e} ≥ {x}"
    | ⟨some x, some y⟩ =>
      if y < x then "∅" else -- should not happen in error messages
      s!"{x} ≤ {e} ≤ {y}"

  prettyCoeffs (names : Array String) (coeffs : Coeffs) : String :=
    coeffs.toList.zipIdx
      |>.filter (fun (c,_) => c ≠ 0)
      |>.mapIdx (fun j (c,i) =>
        (if j > 0 then if c > 0 then " + " else " - " else if c > 0 then "" else "- ") ++
        (if Int.natAbs c = 1 then names[i]! else s!"{c.natAbs}*{names[i]!}"))
      |> String.join

  mentioned (atoms : Array Expr) (constraints : Std.HashMap Coeffs Fact) : MetaM (Array Bool) := do
    let initMask := .replicate atoms.size false
    return constraints.fold (init := initMask) fun mask coeffs _ =>
      coeffs.zipIdx.foldl (init := mask) fun mask (c, i) =>
        if c = 0 then mask else mask.set! i true

  prettyAtoms (names : Array String) (atoms : Array Expr) (mask : Array Bool) : MessageData :=
    (Array.zip names atoms).toList.zipIdx
      |>.filter (fun (_, i) => mask.getD i false)
      |>.map (fun ((n, a),_) => m!" {n} := {a}")
      |> m!"\n".joinSep

mutual

/--
Split a disjunction in a `MetaProblem`, and if we find a new usable fact
call `omegaImpl` in both branches.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean#L541).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0697a012031c4b77134cc42bd821710396ed7cfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
