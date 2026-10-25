# addToAdditiveAttr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c5f423aa6e69572e9b4829edb2c0e17cd3a77f48b9c80aa86c4e48c4f9ad20b",
  "kind": "def",
  "lexical_name": "addToAdditiveAttr",
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
  "slug": "addtoadditiveattr--418cd080419b33baf5fbe457",
  "source": {
    "blob": "7854d85a34a624442418891036ea1a7749a86071",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1248,
    "line": 1000,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToAdditive/Variantc459c1cdc9c361729a2c636ac9bc723b0c92c9b4c2290591f9eba916ab19e301.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:418cd080419b33baf5fbe45715e51c3948690671766318633fa68aa1593fb9b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToAdditive/Variantc459c1cdc9c361729a2c636ac9bc723b0c92c9b4c2290591f9eba916ab19e301.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c5f423aa6e69572e9b4829edb2c0e17cd3a77f48b9c80aa86c4e48c4f9ad20b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1000–1248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def addToAdditiveAttr (src : Name) (cfg : Config) (kind := AttributeKind.global) :
  AttrM (Array Name) := do
  if (kind != AttributeKind.global) then
    throwError "`to_additive` can only be used as a global attribute"
  withOptions (· |>.updateBool `trace.to_additive (cfg.trace || ·)) <| do
  let tgt ← targetName cfg src
  let alreadyExists := (← getEnv).contains tgt
  if cfg.existing == some !alreadyExists && !(← isInductive src) then
    Linter.logLintIf linter.toAdditiveExisting cfg.ref <|
      if alreadyExists then
        m!"The additive declaration already exists. Please specify this explicitly using {
          ""}`@[to_additive existing]`."
      else
        "The additive declaration doesn't exist. Please remove the option `existing`."
  if cfg.reorder != [] then
    trace[to_additive] "@[to_additive] will reorder the arguments of {tgt}."
    reorderAttr.add src cfg.reorder
    -- we allow using this attribute if it's only to add the reorder configuration
    if findTranslation? (← getEnv) src |>.isSome then
      return #[tgt]
  let firstMultArg ← MetaM.run' <| firstMultiplicativeArg src
  if firstMultArg != 0 then
    trace[to_additive_detail] "Setting relevant_arg for {src} to be {firstMultArg}."
    relevantArgAttr.add src firstMultArg
  insertTranslation src tgt alreadyExists
  let nestedNames ←
    if alreadyExists then
      -- since `tgt` already exists, we just need to copy metadata and
      -- add translations `src.x ↦ tgt.x'` for any subfields.
      trace[to_additive_detail] "declaration {tgt} already exists."
      proceedFields src tgt
      copyMetaData cfg src tgt
    else
      -- tgt doesn't exist, so let's make it
      transformDecl cfg src tgt
  -- add pop-up information when mousing over `additive_name` of `@[to_additive additive_name]`
  -- (the information will be over the attribute of no additive name is given)
  pushInfoLeaf <| .ofTermInfo {
    elaborator := .anonymous, lctx := {}, expectedType? := none, isBinder := !alreadyExists,
    stx := cfg.ref, expr := ← mkConstWithLevelParams tgt }
  if let some doc := cfg.doc then
    addDocString tgt doc
  return nestedNames.push tgt

end

/--
The attribute `to_additive` can be used to automatically transport theorems
and definitions (but not inductive types and structures) from a multiplicative
theory to an additive theory.

To use this attribute, just write:

```
@[to_additive]
theorem mul_comm' {α} [CommSemigroup α] (x y : α) : x * y = y * x := mul_comm x y
```

This code will generate a theorem named `add_comm'`. It is also
possible to manually specify the name of the new declaration:

```
@[to_additive add_foo]
theorem foo := sorry
```

An existing documentation string will _not_ be automatically used, so if the theorem or definition
has a doc string, a doc string for the additive version should be passed explicitly to
`to_additive`.

```
/-- Multiplication is commutative -/
@[to_additive "Addition is commutative"]
theorem mul_comm' {α} [comm_semigroup α] (x y : α) : x * y = y * x := comm_semigroup.mul_comm
```

The transport tries to do the right thing in most cases using several
heuristics described below.  However, in some cases it fails, and
requires manual intervention.

Use the `(reorder := ...)` syntax to reorder the arguments in the generated additive declaration.
This is specified using cycle notation. For example `(reorder := 1 2, 5 6)` swaps the first two
arguments with each other and the fifth and the sixth argument and `(reorder := 3 4 5)` will move
the fifth argument before the third argument. This is mostly useful to translate declarations using
`Pow` to those using `SMul`.

Use the `(attr := ...)` syntax to apply attributes to both the multiplicative and the additive
version:

```
@[to_additive (attr := simp)] lemma mul_one' {G : Type*} [group G] (x : G) : x * 1 = x := mul_one x
```

For `simp` and `simps` this also ensures that some generated lemmas are added to the additive
dictionary.
`@[to_additive (attr := to_additive)]` is a special case, where the `to_additive`
attribute is added to the generated lemma only, to additivize it again.
This is useful for lemmas about `Pow` to generate both lemmas about `SMul` and `VAdd`. Example:
```
@[to_additive (attr := to_additive VAdd_lemma, simp) SMul_lemma]
lemma Pow_lemma ...
```
In the above example, the `simp` is added to all 3 lemmas. All other options to `to_additive`
(like the generated name or `(reorder := ...)`) are not passed down,
and can be given manually to each individual `to_additive` call.

## Implementation notes

The transport process generally works by taking all the names of
identifiers appearing in the name, type, and body of a declaration and
creating a new declaration by mapping those names to additive versions
using a simple string-based dictionary and also using all declarations
that have previously been labeled with `to_additive`.

In the `mul_comm'` example above, `to_additive` maps:
* `mul_comm'` to `add_comm'`,
* `comm_semigroup` to `add_comm_semigroup`,
* `x * y` to `x + y` and `y * x` to `y + x`, and
* `comm_semigroup.mul_comm'` to `add_comm_semigroup.add_comm'`.

### Heuristics

`to_additive` uses heuristics to determine whether a particular identifier has to be
mapped to its additive version. The basic heuristic is

* Only map an identifier to its additive version if its first argument doesn't
  contain any unapplied identifiers.

Examples:
* `@Mul.mul Nat n m` (i.e. `(n * m : Nat)`) will not change to `+`, since its
  first argument is `ℕ`, an identifier not applied to any arguments.
* `@Mul.mul (α × β) x y` will change to `+`. It's first argument contains only the identifier
  `prod`, but this is applied to arguments, `α` and `β`.
* `@Mul.mul (α × Int) x y` will not change to `+`, since its first argument contains `Int`.

The reasoning behind the heuristic is that the first argument is the type which is "additivized",
and this usually doesn't make sense if this is on a fixed type.

There are some exceptions to this heuristic:

* Identifiers that have the `@[to_additive]` attribute are ignored.
  For example, multiplication in `↥Semigroup` is replaced by addition in `↥AddSemigroup`.
* If an identifier `d` has attribute `@[to_additive_relevant_arg n]` then the argument
  in position `n` is checked for a fixed type, instead of checking the first argument.
  `@[to_additive]` will automatically add the attribute `@[to_additive_relevant_arg n]` to a
  declaration when the first argument has no multiplicative type-class, but argument `n` does.
* If an identifier has attribute `@[to_additive_ignore_args n1 n2 ...]` then all the arguments in
  positions `n1`, `n2`, ... will not be checked for unapplied identifiers (start counting from 1).
  For example, `cont_mdiff_map` has attribute `@[to_additive_ignore_args 21]`, which means
  that its 21st argument `(n : WithTop Nat)` can contain `ℕ`
  (usually in the form `Top.top Nat ...`) and still be additivized.
  So `@Mul.mul (C^∞⟮I, N; I', G⟯) _ f g` will be additivized.

### Troubleshooting

If `@[to_additive]` fails because the additive declaration raises a type mismatch, there are
various things you can try.
The first thing to do is to figure out what `@[to_additive]` did wrong by looking at the type
mismatch error.

* Option 1: It additivized a declaration `d` that should remain multiplicative. Solution:
  * Make sure the first argument of `d` is a type with a multiplicative structure. If not, can you
    reorder the (implicit) arguments of `d` so that the first argument becomes a type with a
    multiplicative structure (and not some indexing type)?
    The reason is that `@[to_additive]` doesn't additivize declarations if their first argument
    contains fixed types like `ℕ` or `ℝ`. See section Heuristics.
    If the first argument is not the argument with a multiplicative type-class, `@[to_additive]`
    should have automatically added the attribute `@[to_additive_relevant_arg]` to the declaration.
    You can test this by running the following (where `d` is the full name of the declaration):
    ```
      #eval (do isRelevant `d >>= trace)
    ```
    The expected output is `n` where the `n`-th argument of `d` is a type (family) with a
    multiplicative structure on it. If you get a different output (or a failure), you could add
    the attribute `@[to_additive_relevant_arg n]` manually, where `n` is an argument with a
    multiplicative structure.
* Option 2: It didn't additivize a declaration that should be additivized.
  This happened because the heuristic applied, and the first argument contains a fixed type,
  like `ℕ` or `ℝ`. Solutions:
  * If the fixed type has an additive counterpart (like `↥Semigroup`), give it the `@[to_additive]`
    attribute.
  * If the fixed type occurs inside the `k`-th argument of a declaration `d`, and the
    `k`-th argument is not connected to the multiplicative structure on `d`, consider adding
    attribute `[to_additive_ignore_args k]` to `d`.
* Option 3: Arguments / universe levels are incorrectly ordered in the additive version.
  This likely only happens when the multiplicative declaration involves `pow`/`^`. Solutions:
  * Ensure that the order of arguments of all relevant declarations are the same for the
    multiplicative and additive version. This might mean that arguments have an "unnatural" order
    (e.g. `Monoid.npow n x` corresponds to `x ^ n`, but it is convenient that `Monoid.npow` has this
    argument order, since it matches `AddMonoid.nsmul n x`.
  * If this is not possible, add `(reorder := ...)` argument to `to_additive`.

If neither of these solutions work, and `to_additive` is unable to automatically generate the
additive version of a declaration, manually write and prove the additive version.
Often the proof of a lemma/theorem can just be the multiplicative version of the lemma applied to
`multiplicative G`.
Afterwards, apply the attribute manually:

```
attribute [to_additive foo_add_bar] foo_bar
```

This will allow future uses of `to_additive` to recognize that
`foo_bar` should be replaced with `foo_add_bar`.

### Handling of hidden definitions

Before transporting the “main” declaration `src`, `to_additive` first
scans its type and value for names starting with `src`, and transports
them. This includes auxiliary definitions like `src._match_1`,
`src._proof_1`.

In addition to transporting the “main” declaration, `to_additive` transports
its equational lemmas and tags them as equational lemmas for the new declaration.

### Structure fields and constructors

If `src` is a structure, then the additive version has to be already written manually.
In this case `to_additive` adds all structure fields to its mapping.

### Name generation

* If `@[to_additive]` is called without a `name` argument, then the
  new name is autogenerated.  First, it takes the longest prefix of
  the source name that is already known to `to_additive`, and replaces
  this prefix with its additive counterpart. Second, it takes the last
  part of the name (i.e., after the last dot), and replaces common
  name parts (“mul”, “one”, “inv”, “prod”) with their additive versions.

* [todo] Namespaces can be transformed using `map_namespace`. For example:
  ```
  run_cmd to_additive.map_namespace `quotient_group `quotient_add_group
  ```

  Later uses of `to_additive` on declarations in the `quotient_group`
  namespace will be created in the `quotient_add_group` namespaces.

* If `@[to_additive]` is called with a `name` argument `new_name`
  /without a dot/, then `to_additive` updates the prefix as described
  above, then replaces the last part of the name with `new_name`.

* If `@[to_additive]` is called with a `name` argument
  `new_namespace.new_name` /with a dot/, then `to_additive` uses this
  new name as is.

As a safety check, in the first case `to_additive` double checks
that the new name differs from the original one.

-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToAdditive/Variantc459c1cdc9c361729a2c636ac9bc723b0c92c9b4c2290591f9eba916ab19e301.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToAdditive/Variantc459c1cdc9c361729a2c636ac9bc723b0c92c9b4c2290591f9eba916ab19e301.lean#L1000).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7854d85a34a624442418891036ea1a7749a86071` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
