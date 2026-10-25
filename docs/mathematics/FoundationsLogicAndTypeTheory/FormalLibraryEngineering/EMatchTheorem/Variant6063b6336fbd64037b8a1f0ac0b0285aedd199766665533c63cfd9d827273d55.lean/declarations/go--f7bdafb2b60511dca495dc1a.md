# go

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab127e0a8ab9e98912461ab51e8df174c929f0062674b9c5cab71e9fb2b596d1",
  "kind": "def",
  "lexical_name": "go",
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
  "slug": "go--f7bdafb2b60511dca495dc1a",
  "source": {
    "blob": "654387b687c2b34418a7dd62aa266d893b498135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 737,
    "line": 680,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7bdafb2b60511dca495dc1ad32b1b97b73aad1e3845ca1b23e3f6445f56accc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab127e0a8ab9e98912461ab51e8df174c929f0062674b9c5cab71e9fb2b596d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 680–737.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private partial def go (pattern : Expr) (inSupport : Bool) (root : Bool) : M Expr := do
  if let some (e, k) := isOffsetPattern? pattern then
    let e ← goArg e inSupport .relevant .regular
    if isPatternDontCare e then
      return dontCare
    else
      return mkOffsetPattern e k
  let some f ← getPatternFn? pattern inSupport root .relevant
    | throwError "invalid pattern, (non-forbidden) application expected{indentD (ppPattern pattern)}"
  assert! f.isConst || f.isFVar
  let parentKind := toParentKind f
  if parentKind matches .regular then
    saveSymbol f.toHeadIndex
  let mut args := pattern.getAppArgs.toVector
  let patternArgKinds ← getPatternArgKinds f args.size
  for h : i in *...args.size do
    let arg := args[i]
    let argKind := patternArgKinds[i]?.getD .relevant
    args := args.set i (← goArg arg (inSupport || argKind.isSupport) argKind parentKind)
  return mkAppN f args.toArray
where
  goArg (arg : Expr) (inSupport : Bool) (argKind : PatternArgKind) (parentKind : ParentKind) : M Expr := do
    if !arg.hasLooseBVars then
      if arg.hasMVar then
        pure dontCare
      else if (← isProof arg) then
        pure dontCare
      else
        let arg ← expandOffsetPatterns arg
        if !inSupport && parentKind matches .regular then
          /-
          **Note**: We ignore symbols in ground patterns if the parent is the auxiliary ``Grind.eqBwdPattern
          We do that because we want to sign an error in examples such as:
          ```
          theorem dummy (x : Nat) : x = x :=
            rfl
          -- error: invalid pattern for `dummy`
          --  [@Lean.Grind.eqBwdPattern `[Nat] #0 #0]
          -- the pattern does not contain constant symbols for indexing
          attribute [grind ←=] dummy
          ```
          -/
          saveSymbolsAt arg
        return mkGroundPattern (← canonLit arg)
    else match arg with
      | .bvar idx =>
        -- **Note** See comment at `ParentKind.genPattern`.
        if inSupport && (← foundBVar idx) && !parentKind matches .genPattern then
          pure dontCare
        else
          saveBVar idx
          pure arg
      | _ =>
        if let some _ ← getPatternFn? arg inSupport (root := false) argKind then
          go arg inSupport (root := false)
        else
          pure dontCare

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean#L680).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `654387b687c2b34418a7dd62aa266d893b498135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
