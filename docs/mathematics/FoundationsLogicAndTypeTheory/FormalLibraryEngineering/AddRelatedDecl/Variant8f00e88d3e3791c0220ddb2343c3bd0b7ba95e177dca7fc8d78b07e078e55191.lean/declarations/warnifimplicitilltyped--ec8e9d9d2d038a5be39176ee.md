# warnIfImplicitIllTyped

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d7efb3633397809233cfa3a2c1198450e369726d7941022954d6aec8e142ed7",
  "kind": "def",
  "lexical_name": "warnIfImplicitIllTyped",
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
  "slug": "warnifimplicitilltyped--ec8e9d9d2d038a5be39176ee",
  "source": {
    "blob": "16caa60dad16f6b8607199c320ef0839ed4a62c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRelatedDecl/Variant8f00e88d3e3791c0220ddb2343c3bd0b7ba95e177dca7fc8d78b07e078e55191.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec8e9d9d2d038a5be39176ee2d3ca0072a86f2cd2d01137cdd6fb891a2fd3f83",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRelatedDecl/Variant8f00e88d3e3791c0220ddb2343c3bd0b7ba95e177dca7fc8d78b07e078e55191.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d7efb3633397809233cfa3a2c1198450e369726d7941022954d6aec8e142ed7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def warnIfImplicitIllTyped (ref : Syntax) (declName : Name) (declType : Expr) : MetaM Unit := do
  let lintOpt : Lean.Option Bool :=
    { name := `linter.tacticCheckInstances, defValue := false }
  unless lintOpt.get (← getOptions) do return
  let some candidates ← checkImplicitTransparency declType | return
  if candidates.isEmpty then return
  let bullets := MessageData.joinSep (candidates.map (m!"{MessageData.ofConstName ·}")) Format.line
  Lean.Linter.logLint lintOpt ref
    m!"generated lemma {MessageData.ofConstName declName} is not type-correct at \
      `.implicit` transparency; consider marking some of the following as \
      `@[implicit_reducible]`:{indentD bullets}"

/-- A helper function for constructing a related declaration from an existing one.

This is currently used by the attributes `reassoc` and `elementwise`,
and has been factored out to avoid code duplication.
Feel free to add features as needed for other applications.

This helper:
* throws an error if a declaration named `tgt` already exists
  (in the current module or in an imported one),
* calls `addDeclarationRangesFromSyntax`, so jump-to-definition works,
* copies the `protected` status of the existing declaration, and
* supports copying attributes.

Arguments:
* `src : Name` is the existing declaration that we are modifying.
* `prefix_ : String` will be prepended and `suffix : String` will be appended to `src`
  to form the name of the new declaration.
* `ref : Syntax` is the syntax where the user requested the related declaration.
* `construct value levels : MetaM (Expr × List Name)`
  given an `Expr.const` referring to the original declaration, and its universe variables,
  should construct the value of the new declaration,
  along with the names of its universe variables.
* `attrs` is the attributes that should be applied to both the new and the original declaration,
  e.g. in the usage `@[reassoc (attr := simp)]`.
  We apply it to both declarations, to have the same behavior as `to_additive`, and to shorten some
  attribute commands. Note that `@[elementwise (attr := simp), reassoc (attr := simp)]` will try
  to apply `simp` twice to the current declaration, but that causes no issues.
* `docstringPrefix?` is prepended to the doc-string of `src` to form the doc-string of `tgt`.
  If it is `none`, only the doc-string of `src` is used.
* When `hoverInfo := true`, the generated constant will be shown as the hover information on `ref`.
  Warning: As a result, the original doc-string of `ref` will not be visible,
  and go-to-def on `ref` will not go to the definition of `ref`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRelatedDecl/Variant8f00e88d3e3791c0220ddb2343c3bd0b7ba95e177dca7fc8d78b07e078e55191.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRelatedDecl/Variant8f00e88d3e3791c0220ddb2343c3bd0b7ba95e177dca7fc8d78b07e078e55191.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16caa60dad16f6b8607199c320ef0839ed4a62c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
