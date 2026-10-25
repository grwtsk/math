# expandNonAtomicExplicitSources

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73fc5b0f4a1eedb69d03f8dc950672a5465a560912755dc43ea9ba142f64136f",
  "kind": "def",
  "lexical_name": "expandNonAtomicExplicitSources",
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
  "slug": "expandnonatomicexplicitsources--da2868130dcd9da3ca363cd6",
  "source": {
    "blob": "5493e3d025e608ffc68d856f0b5b683431f64b09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1371,
    "line": 1306,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variantdd2f836a88d0ba35a06702af406d643d5ca55ca202c61411d0696e97dfd00d04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da2868130dcd9da3ca363cd6742e4c9ff44266153040bd1d8759861fe5b7a0b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variantdd2f836a88d0ba35a06702af406d643d5ca55ca202c61411d0696e97dfd00d04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73fc5b0f4a1eedb69d03f8dc950672a5465a560912755dc43ea9ba142f64136f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1306–1371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def expandNonAtomicExplicitSources (stx : Syntax) : TermElabM (Option Syntax) := do
  let sourcesOpt := stx[1]
  if sourcesOpt.isNone then
    return none
  else
    let sources := sourcesOpt[0]
    if sources.isMissing then
      throwAbortTerm
    let sources := sources.getSepArgs
    if (← sources.allM fun source => return (← isLocalIdent? source).isSome) then
      return none
    if sources.any (·.isMissing) then
      throwAbortTerm
    return some (← go sources.toList #[])
where
  /--
  If the source is a local, we can use it.
  *However*, we need to watch out that the local doesn't have implicit arguments,
  since that could cause multiple evaluation.
  For simplicity, we just check that the fvar isn't a forall.
  -/
  isSuitableLocalIdent (term : Syntax) : TermElabM Bool := do
    let some fvar ← isLocalIdent? term | return false
    let type ← whnf (← inferType fvar)
    return !type.isForall
  go (sources : List Syntax) (sourcesNew : Array Syntax) : TermElabM Syntax := do
    match sources with
    | [] =>
      let sources := Syntax.mkSep sourcesNew (mkAtomFrom stx ", ")
      return stx.setArg 1 (stx[1].setArg 0 sources)
    | source :: sources =>
      if (← isSuitableLocalIdent source) then
        go sources (sourcesNew.push source)
      else
        withFreshMacroScope do
          /-
          Recall that local variables starting with `__` are treated as impl detail.
          See `LocalContext.lean`.
          Moreover, implementation detail let-vars are unfolded by `simp`
          even when `zetaDelta := false`.
          Motivation: the following failure when `zetaDelta := true`
          ```
          structure A where
            a : Nat
          structure B extends A where
            b : Nat
            w : a = b
          def x : A where a := 37
          @[simp] theorem x_a : x.a = 37 := rfl

          def y : B := { x with b := 37, w := by simp }
          ```
          -/
          let sourceNew ← `(__src)
          let r ← go sources (sourcesNew.push sourceNew)
          `(let __src := $source; $r)

/--
Uses the expected type and sources to determine the structure type name to use for the structure instance.
This function tries to postpone execution if the expected type is not available.

If the expected type is available and it is a structure, then we use it.
Otherwise, we use the type of the first source.

Possibly returns the expected structure type as well.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variantdd2f836a88d0ba35a06702af406d643d5ca55ca202c61411d0696e97dfd00d04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variantdd2f836a88d0ba35a06702af406d643d5ca55ca202c61411d0696e97dfd00d04.lean#L1306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5493e3d025e608ffc68d856f0b5b683431f64b09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
