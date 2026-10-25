# resolveLocalName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05fb0c1b1c8b333b7b456ac1ed1a4a41d7aa44b898ca51730350f025f2fcbbdf",
  "kind": "def",
  "lexical_name": "resolveLocalName",
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
  "slug": "resolvelocalname--92cb34f7fce24e0451a9c26e",
  "source": {
    "blob": "2319fa27798d8ccf8726fbe4ba7ff44c319b1269",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 649,
    "line": 468,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant8902ed459df9c2db106f9f3288c1cf81ee0b6b8cdc39a4addc6076af8254855c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92cb34f7fce24e0451a9c26e35f0478c04988896adfe3d47a1b72e2a732bf831",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant8902ed459df9c2db106f9f3288c1cf81ee0b6b8cdc39a4addc6076af8254855c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05fb0c1b1c8b333b7b456ac1ed1a4a41d7aa44b898ca51730350f025f2fcbbdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–649.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def resolveLocalName [MonadLCtx m] (n : Name) : m (Option (Expr × List String)) := do
  let lctx ← getLCtx
  let auxDeclToFullName := (← getLCtx).auxDeclToFullName
  let currNamespace ← getCurrNamespace
  let view := extractMacroScopes n
  /- Simple case. "Match" function for regular local declarations. -/
  let matchLocalDecl? (localDecl : LocalDecl) (givenName : Name) : Option LocalDecl := do
    guard (localDecl.userName == givenName)
    return localDecl
  /-
  "Match" function for auxiliary declarations that correspond to recursive definitions being defined.
  This function is used in the first-pass.
  Note that we do not check for `localDecl.userName == givenName` in this pass as we do for regular local declarations.
  Reason: consider the following example
  ```
    mutual
      inductive Foo
      | somefoo : Foo | bar : Bar → Foo → Foo
      inductive Bar
      | somebar : Bar| foobar : Foo → Bar → Bar
    end

    mutual
      private def Foo.toString : Foo → String
        | Foo.somefoo => go 2 ++ toString.go 2 ++ Foo.toString.go 2
        | Foo.bar b f => toString f ++ Bar.toString b
      where
        go (x : Nat) := s!"foo {x}"

      private def _root_.Ex2.Bar.toString : Bar → String
        | Bar.somebar => "bar"
        | Bar.foobar f b => Foo.toString f ++ Bar.toString b
    end
  ```
  In the example above, we have two local declarations named `toString` in the local context, and
  we want the `toString f` to be resolved to `Foo.toString f`.
  -/
  let matchAuxRecDecl? (localDecl : LocalDecl) (fullDeclName : Name) (givenNameView : MacroScopesView) : Option LocalDecl := do
    let fullDeclView := extractMacroScopes fullDeclName
    /- First cleanup private name annotations -/
    let fullDeclView := { fullDeclView with name := (privateToUserName? fullDeclView.name).getD fullDeclView.name }
    let fullDeclName := fullDeclView.review
    let localDeclNameView := extractMacroScopes localDecl.userName
    /- If the current namespace is a prefix of the full declaration name,
       we use a relaxed matching test where we must satisfy the following conditions
       - The local declaration is a suffix of the given name.
       - The given name is a suffix of the full declaration.

       Recall the `let rec`/`where` declaration naming convention. For example, suppose we have
       ```
       def Foo.Bla.f ... :=
         ... go ...
       where
          go ... := ...
       ```
       The current namespace is `Foo.Bla`, and the full name for `go` is `Foo.Bla.f.g`, but we want to
       refer to it using just `go`. It is also accepted to refer to it using `f.go`, `Bla.f.go`, etc.

    -/
    if currNamespace.isPrefixOf fullDeclName then
      /- Relaxed mode that allows us to access `let rec` declarations using shorter names -/
      guard (localDeclNameView.isSuffixOf givenNameView)
      guard (givenNameView.isSuffixOf fullDeclView)
      return localDecl
    else
      /-
         It is the standard algorithm we are using at `resolveGlobalName` for processing namespaces.

         The current solution also has a limitation when using `def _root_` in a mutual block.
         The non `def _root_` declarations may update the namespace. See the following example:
         ```
         mutual
           def Foo.f ... := ...
           def _root_.g ... := ...
             let rec h := ...
             ...
         end
         ```
         `def Foo.f` updates the namespace. Then, even when processing `def _root_.g ...`
         the condition `currNamespace.isPrefixOf fullDeclName` does not hold.
         This is not a big problem because we are planning to modify how we handle the mutual block in the future.

         Note that we don't check for `localDecl.userName == givenName` here.
      -/
      let rec go (ns : Name) : Option LocalDecl := do
        if { givenNameView with name := ns ++ givenNameView.name }.review == fullDeclName then
          return localDecl
        match ns with
        | .str pre .. => go pre
        | _ => failure
      return (← go currNamespace)
  /- Traverse the local context backwards looking for match `givenNameView`.
     If `skipAuxDecl` we ignore `auxDecl` local declarations. -/
  let findLocalDecl? (givenNameView : MacroScopesView) (skipAuxDecl : Bool) : Option LocalDecl :=
    let givenName := givenNameView.review
    let localDecl? := lctx.decls.findSomeRev? fun localDecl? => do
      let localDecl ← localDecl?
      if localDecl.isAuxDecl then
        guard (!skipAuxDecl)
        if let some fullDeclName := auxDeclToFullName.get? localDecl.fvarId then
          matchAuxRecDecl? localDecl fullDeclName givenNameView
        else
          matchLocalDecl? localDecl givenName
      else
        matchLocalDecl? localDecl givenName
    if localDecl?.isSome || skipAuxDecl then
      localDecl?
    else
      -- Search auxDecls again trying an exact match of the given name
      lctx.decls.findSomeRev? fun localDecl? => do
        let localDecl ← localDecl?
        guard localDecl.isAuxDecl
        matchLocalDecl? localDecl givenName
  /-
  We use the parameter `globalDeclFound` to decide whether we should skip auxiliary declarations or not.
  We set it to true if we found a global declaration `n` as we iterate over the `loop`.
  Without this workaround, we would not be able to elaborate an example such as
  ```
  def foo.aux := 1
  def foo : Nat → Nat
    | n => foo.aux -- should not be interpreted as `(foo).aux`
  ```
  See test `aStructPerfIssue.lean` for another example.
  We skip auxiliary declarations when `projs` is not empty and `globalDeclFound` is true.
  Remark: we did not use to have the `globalDeclFound` parameter. Without this extra check we failed
  to elaborate
  ```
  example : Nat :=
    let n := 0
    n.succ + (m |>.succ) + m.succ
  where
    m := 1
  ```
  See issue #1850.
  -/
  let rec loop (n : Name) (projs : List String) (globalDeclFound : Bool) := do
    let givenNameView := { view with name := n }
    /-
    Note that we use `globalDeclFound` instead of `globalDeclFoundNext` in the following test.
    Reason: a local should shadow a global with the same name.
    Consider the following example. See issue #3079
    ```
    def foo : Nat := 1

    def bar : Nat :=
      foo.add 1 -- should be 11
    where
      foo := 10
    ```
    -/
    match findLocalDecl? givenNameView (skipAuxDecl := globalDeclFound && !projs.isEmpty) with
    | some decl => return some (decl.toExpr, projs)
    | none => match n with
      | .str pre s =>
        let mut globalDeclFoundNext := globalDeclFound
        unless globalDeclFound do
          let r ← resolveGlobalName (enableLog := false) givenNameView.review
          let r := r.filter fun (_, fieldList) => fieldList.isEmpty
          unless r.isEmpty do
            globalDeclFoundNext := true
        loop pre (s::projs) globalDeclFoundNext
      | _ => return none
  loop view.name [] (globalDeclFound := false)

/--
Finds an efficient name that unambiguously resolves to the given name `n₀`, if possible.
Considers suffixes of `n₀` and suffixes of aliases of `n₀` when "unresolving".
Aliases are considered first.

When `fullNames` is true, returns either `n₀` or `_root_.n₀`.

When `allowHorizAliases` is false, then "horizontal aliases" (ones that are not put into a parent namespace) are filtered out.
The assumption is that non-horizontal aliases are "API exports" (i.e., intentional exports that should be considered to be the new canonical name).
"Non-API exports" arise from (1) using `export` to add names to a namespace for dot notation or (2) projects that want names to be conveniently and permanently accessible in their own namespaces.

`filter` specifies a predicate that the unresolved name must additionally satisfy.

This function is meant to be used for pretty printing.
If `n₀` is an accessible name, then the result will be an accessible name.

The name `n₀` may be private.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant8902ed459df9c2db106f9f3288c1cf81ee0b6b8cdc39a4addc6076af8254855c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant8902ed459df9c2db106f9f3288c1cf81ee0b6b8cdc39a4addc6076af8254855c.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2319fa27798d8ccf8726fbe4ba7ff44c319b1269` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
