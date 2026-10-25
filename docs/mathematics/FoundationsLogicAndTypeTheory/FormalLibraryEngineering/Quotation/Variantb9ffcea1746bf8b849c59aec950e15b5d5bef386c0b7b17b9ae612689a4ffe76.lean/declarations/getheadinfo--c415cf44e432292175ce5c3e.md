# getHeadInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0a516e9c51217a0928c460c678ff910052e13ed9d5dc5e0b934961f7905c1a0",
  "kind": "def",
  "lexical_name": "getHeadInfo",
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
  "slug": "getheadinfo--c415cf44e432292175ce5c3e",
  "source": {
    "blob": "8213946421eefb8d9285f496a3c5b4e57958e223",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 340,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variantb9ffcea1746bf8b849c59aec950e15b5d5bef386c0b7b17b9ae612689a4ffe76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c415cf44e432292175ce5c3e11dc25992e9574b716afdbdb7e662cd1e2355dd4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variantb9ffcea1746bf8b849c59aec950e15b5d5bef386c0b7b17b9ae612689a4ffe76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0a516e9c51217a0928c460c678ff910052e13ed9d5dc5e0b934961f7905c1a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private partial def getHeadInfo (alt : Alt) : TermElabM HeadInfo :=
  let pat := alt.fst.head!
  let unconditionally rhsFn := pure {
    check := unconditional,
    doMatch := fun yes _ => yes [],
    onMatch := fun taken => covered (adaptRhs rhsFn ∘ noOpMatchAdaptPats taken) (taken matches unconditional)
  }
  -- quotation pattern
  if isQuot pat then do
    let quoted := getQuotContent pat
    if let some (k, _) := quoted.antiquotKind? then
      if let some name := getAntiquotKindSpec? quoted then
        tryAddSyntaxNodeKindInfo name k
    if quoted.isAtom || quoted.isOfKind `patternIgnore then
      -- We assume that atoms are uniquely determined by the node kind and never have to be checked
      unconditionally pure
    else if quoted.isTokenAntiquot then
      unconditionally (`(have $(quoted.getAntiquotTerm) := __discr; $(·)))
    else if isAntiquots quoted && !isEscapedAntiquot (getCanonicalAntiquot quoted) then
      -- quotation contains a single antiquotation
      let (ks, pseudoKinds) := antiquotKinds quoted |>.unzip
      let rhsFn := match getAntiquotTerm (getCanonicalAntiquot quoted) with
        | `(_)         => pure
        | `($id:ident) => fun stx => `(have $id := @TSyntax.mk $(quote ks) __discr; $(stx))
        | anti =>         fun _   => throwErrorAt anti "unsupported antiquotation kind in pattern"
      -- Antiquotation kinds like `$id:ident` influence the parser, but also need to be considered by
      -- `match` (but not by quotation terms). For example, `($id:ident) and `($e) are not
      -- distinguishable without checking the kind of the node to be captured. Note that some
      -- antiquotations like the latter one for terms do not correspond to any actual node kind,
      -- so we would only check for `ident` here.
      --
      -- if stx.isOfKind `ident then
      --   let id := stx; let e := stx; ...
      -- else
      --   let e := stx; ...
      if (getCanonicalAntiquot quoted)[3].isNone || pseudoKinds.all id then unconditionally rhsFn else pure {
        check   := shape ks none,
        onMatch := fun
          | taken@(shape ks' sz) =>
            if ks' == ks then
              covered (adaptRhs rhsFn ∘ noOpMatchAdaptPats taken) (exhaustive := sz.isNone)
            else uncovered
          | _ => undecided,
        doMatch := fun yes no => do
          let cond ← ks.foldlM (fun cond k => `(or $cond (Syntax.isOfKind __discr $(quote k)))) (← `(false))
          `(cond $cond $(← yes []) $(← no)),
      }
    else if isAntiquotSuffixSplice quoted then throwErrorAt quoted "unexpected antiquotation splice"
    else if isAntiquotSplice quoted then throwErrorAt quoted "unexpected antiquotation splice"
    else if quoted.getArgs.size == 1 && isAntiquotSuffixSplice quoted[0] then
      let inner := getAntiquotSuffixSpliceInner quoted[0]
      let ks := antiquotKinds inner |>.map (·.1)
      unconditionally <| match getAntiquotTerm (getCanonicalAntiquot inner) with
        | `(_)         => pure
        | `($id:ident) => fun rhs => match antiquotSuffixSplice? quoted[0] with
          | `optional => `(have $id := Option.map (@TSyntax.mk $(quote ks)) (Syntax.getOptional? __discr); $rhs)
          | `many     => `(have $id := @TSyntaxArray.mk $(quote ks) (Syntax.getArgs __discr); $rhs)
          | `sepBy    => `(have $id := @TSepArray.mk $(quote ks) $(quote <| getSepFromSplice quoted[0]) (Syntax.getArgs __discr); $rhs)
          | k         => throwErrorAt quoted "invalid antiquotation suffix splice kind `{k}`"
        | anti         => fun _   => throwErrorAt anti "unsupported antiquotation kind in pattern"
    else if quoted.getArgs.size == 1 && isAntiquotSplice quoted[0] then pure {
      check   := other pat,
      onMatch := fun
        | other pat' => if pat' == pat then covered pure (exhaustive := true) else undecided
        | _          => undecided,
      doMatch := fun yes no => do
        let splice := quoted[0]
        let k := antiquotSpliceKind? splice
        let contents := getAntiquotSpliceContents splice
        let ids ← getAntiquotationIds splice
        let yes ← yes []
        let no ← no
        match k with
        | `optional =>
          let nones := .replicate ids.size (← `(none))
          `(let_delayed yes _ $ids* := $yes;
            if __discr.isNone then yes () $[ $nones]*
            else match __discr with
              | `($(mkNullNode contents)) => yes () $[ (some $ids)]*
              | _                         => $no)
        | _ =>
          let mut discrs ← `(Syntax.getArgs __discr)
          if k == `sepBy then
            discrs ← `(Array.getSepElems $discrs)
          let tuple ← mkTuple ids
          let mut yes := yes
          let resId ← match ids with
            | #[id] => pure id
            | _     =>
              for id in ids do
                yes ← `(have $id := tuples.map (fun $tuple => $id); $yes)
              `(tuples)
          let contents := if contents.size == 1
            then contents[0]!
            else mkNullNode contents
          -- We use `no_error_if_unused%` in auxiliary `match`-syntax to avoid spurious error messages,
          -- the outer `match` is checking for unused alternatives
          `(match ($(discrs).mapM fun
                | `($contents) => no_error_if_unused% some $tuple
                | _            => no_error_if_unused% none) with
              | some $resId => $yes
              | none => $no)
    }
    else if let some idx := quoted.getArgs.findIdx? (fun arg => isAntiquotSuffixSplice arg || isAntiquotSplice arg) then do
      /-
        patterns of the form `match __discr, ... with | `(pat_0 ... pat_(idx-1) $[...]* pat_(idx+1) ...), ...`
        transform to
        ```
        if __discr.getNumArgs >= $quoted.getNumArgs - 1 then
          match __discr[0], ..., __discr[idx-1], mkNullNode (__discr.getArgs.extract idx (__discr.getNumArgs - $numSuffix))), ..., __discr[quoted.getNumArgs - 1] with
            | `(pat_0), ... `(pat_(idx-1)), `($[...])*, `(pat_(idx+1)), ...
        ```
      -/
      let numSuffix := quoted.getNumArgs - 1 - idx
      pure {
        check    := slice idx numSuffix
        onMatch  := fun
          | slice p s =>
            if p == idx && s == numSuffix then
              let argPats := quoted.getArgs.mapIdx fun i arg =>
                let arg := if (i : Nat) == idx then mkNullNode #[arg] else arg
                Unhygienic.run `(`($(arg)))
              covered (fun (pats, rhs) => pure (argPats.toList ++ pats, rhs)) (exhaustive := true)
            else uncovered
          | _ => undecided
        doMatch := fun yes no => do
          let prefixDiscrs ← (List.range idx).mapM (`(Syntax.getArg __discr $(quote ·)))
          let sliceDiscr ← `(mkNullNode (__discr.getArgs.extract $(quote idx) (Nat.sub __discr.getNumArgs $(quote numSuffix))))
          let suffixDiscrs ← (List.range numSuffix).mapM fun i =>
            `(Syntax.getArg __discr (Nat.sub __discr.getNumArgs $(quote (numSuffix - i))))
          `(ite (GE.ge __discr.getNumArgs $(quote (quoted.getNumArgs - 1)))
              $(← yes (prefixDiscrs ++ sliceDiscr :: suffixDiscrs))
              $(← no))
      }
    else
      -- not an antiquotation, or an escaped antiquotation: match head shape
      let quoted  := unescapeAntiquot quoted
      let kind := quoted.getKind
      let lit := isLitKind kind
      let argPats := quoted.getArgs.map fun arg => Unhygienic.run `(`($(arg)))
      pure {
        check :=
          -- Atoms are matched only within literals because it would be a waste of time for keywords
          -- such as `if` and `then` and would blow up the generated code.
          -- See also `elabMatchSyntax` docstring below.
          if quoted.isIdent || lit then
            -- NOTE: We could make this case split more precise by refining `HeadCheck`,
            -- but matching on literals is quite rare.
            other quoted
          else
            shape [kind] argPats.size,
        onMatch := fun
          | other stx' =>
            if quoted.isIdent || lit then
              if quoted == stx' then
                covered pure (exhaustive := true)
              else
                uncovered
            else
              undecided
          | shape ks sz =>
            if ks == [kind] && sz == argPats.size then
              covered (fun (pats, rhs) => pure (argPats.toList ++ pats, rhs)) (exhaustive := true)
            else
              uncovered
          | _ => undecided,
        doMatch := fun yes no => do
          let (cond, newDiscrs) ← if lit then
            let cond ← `(Syntax.matchesLit __discr $(quote kind) $(quote (isLit? kind quoted).get!))
            pure (cond, [])
          else
            let cond ← match kind with
            | `null => `(Syntax.matchesNull __discr $(quote argPats.size))
            | `ident => `(Syntax.matchesIdent __discr $(quote quoted.getId))
            | _     => `(Syntax.isOfKind __discr $(quote kind))
            let newDiscrs ← (List.range argPats.size).mapM fun i => `(Syntax.getArg __discr $(quote i))
            pure (cond, newDiscrs)
          `(ite (Eq $cond true) $(← yes newDiscrs) $(← no))
      }
  else match pat with
    | `(_)              => unconditionally pure
    | `($id:ident)      => unconditionally (`(have $id := __discr; $(·)))
    | `($id:ident@$pat) => do
      let info ← getHeadInfo (pat::alt.1.tail!, alt.2)
      return { info with onMatch := fun taken => match info.onMatch taken with
          | covered f exh => covered (fun alt => f alt >>= adaptRhs (`(have $id := __discr; $(·)))) exh
          | r             => r }
    | _               => throwErrorAt pat "match (syntax) : unexpected pattern kind {pat}"

/-- Bind right-hand side to new `let_delayed` decl in order to prevent code duplication -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variantb9ffcea1746bf8b849c59aec950e15b5d5bef386c0b7b17b9ae612689a4ffe76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variantb9ffcea1746bf8b849c59aec950e15b5d5bef386c0b7b17b9ae612689a4ffe76.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8213946421eefb8d9285f496a3c5b4e57958e223` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
