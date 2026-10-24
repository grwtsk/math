# ParserDescr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0927d9ee61b4658e9bc0a816edb5d2a3b0284cbc10776e0a70a847484ea963ce",
  "kind": "inductive",
  "lexical_name": "ParserDescr",
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
  "slug": "parserdescr--1c56f0770b0dac3de1a6c96d",
  "source": {
    "blob": "a48bfcd7f182375f04a8fe3f19bf3e8424b106cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5479,
    "line": 5403,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c56f0770b0dac3de1a6c96ddd47265ccf795d92a7c176e8b8f46e5b8ab882f2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0927d9ee61b4658e9bc0a816edb5d2a3b0284cbc10776e0a70a847484ea963ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5403–5479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ParserDescr where
  /-- A (named) nullary parser, like `ppSpace` -/
  | const  (name : Name)
  /-- A (named) unary parser, like `group(p)` -/
  | unary  (name : Name) (p : ParserDescr)
  /-- A (named) binary parser, like `orelse` or `andthen`
  (written as `p1 <|> p2` and `p1 p2` respectively in `syntax`) -/
  | binary (name : Name) (p₁ p₂ : ParserDescr)
  /-- Parses using `p`, then pops the stack to create a new node with kind `kind`.
  The precedence `prec` is used to determine whether the parser should apply given
  the current precedence level. -/
  | node (kind : SyntaxNodeKind) (prec : Nat) (p : ParserDescr)
  /-- Like `node` but for trailing parsers (which start with a nonterminal).
  Assumes the lhs is already on the stack, and parses using `p`, then pops the
  stack including the lhs to create a new node with kind `kind`.
  The precedence `prec` and `lhsPrec` are used to determine whether the parser
  should apply. -/
  | trailingNode (kind : SyntaxNodeKind) (prec lhsPrec : Nat) (p : ParserDescr)
  /--
  Parses the literal symbol.

  The symbol is automatically included in the set of reserved tokens ("keywords").
  Keywords cannot be used as identifiers, unless the identifier is otherwise escaped.
  For example, `"fun"` reserves `fun` as a keyword; to refer an identifier named `fun` one can write `«fun»`.
  Adding a `&` prefix prevents it from being reserved, for example `&"true"`.

  Whitespace before or after the atom is used as a pretty printing hint.
  For example, `" + "` parses `+` and pretty prints it with whitespace on both sides.
  The whitespace has no effect on parsing behavior.
  -/
  | symbol (val : String)
  /--
  Parses a literal symbol. The `&` prefix prevents it from being included in the set of reserved tokens ("keywords").
  This means that the symbol can still be recognized as an identifier by other parsers.

  Some syntax categories, such as `tactic`, automatically apply `&` to the first symbol.

  Whitespace before or after the atom is used as a pretty printing hint.
  For example, `" + "` parses `+` and pretty prints it with whitespace on both sides.
  The whitespace has no effect on parsing behavior.

  (Not exposed by parser description syntax:
  If the `includeIdent` argument is true, lets `ident` be reinterpreted as `atom` if it matches.)
  -/
  | nonReservedSymbol (val : String) (includeIdent : Bool)
  /-- Parses using the category parser `catName` with right binding power
  (i.e. precedence) `rbp`. -/
  | cat (catName : Name) (rbp : Nat)
  /-- Parses using another parser `declName`, which can be either
  a `Parser` or `ParserDescr`. -/
  | parser (declName : Name)
  /-- Like `node`, but also declares that the body can be matched using an antiquotation
  with name `name`. For example, `def $id:declId := 1` uses an antiquotation with
  name `declId` in the place where a `declId` is expected. -/
  | nodeWithAntiquot (name : String) (kind : SyntaxNodeKind) (p : ParserDescr)
  /-- A `sepBy(p, sep)` parses 0 or more occurrences of `p` separated by `sep`.
  `psep` is usually the same as `symbol sep`, but it can be overridden.
  `sep` is only used in the antiquot syntax: `$x;*` would match if `sep` is `";"`.
  `allowTrailingSep` is true if e.g. `a, b,` is also allowed to match. -/
  | sepBy  (p : ParserDescr) (sep : String) (psep : ParserDescr) (allowTrailingSep : Bool := false)
  /-- `sepBy1` is just like `sepBy`, except it takes 1 or more instead of
  0 or more occurrences of `p`. -/
  | sepBy1 (p : ParserDescr) (sep : String) (psep : ParserDescr) (allowTrailingSep : Bool := false)
  /--
  - `unicode("→", "->")` parses a symbol matching either `→` or `->`. Each symbol is reserved.
    The second symbol is an ASCII version of the first.
    The  `pp.unicode` option controls which is used when pretty printing.
  - `unicode("→", "->", preserveForPP)` is the same except for pretty printing behavior.
    When the `pp.unicode` option is enabled, then the pretty printer uses whichever symbol
    matches the underlying atom in the syntax.
    The intent is that `preserveForPP` means that the ASCII variant is preferred.
    For example, `fun` notation uses `preserveForPP` for its arrow; the delaborator chooses
    `↦` or `=>` depending on the value of `pp.unicode.fun`, letting users opt-in to formatting with `↦`.
    Note that `notation` creates a pretty printer preferring the ASCII version.
  -/
  | unicodeSymbol (val asciiVal : String) (preserveForPP : Bool)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean#L5403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a48bfcd7f182375f04a8fe3f19bf3e8424b106cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
