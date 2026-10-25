# mkUnexpander

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd991bfe0076125192af78b9666d0f2d01e2de4cd18e6b6f0dceaf8848cb4808",
  "kind": "def",
  "lexical_name": "mkUnexpander",
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
  "slug": "mkunexpander--f8347f2104ecf6578c2314e8",
  "source": {
    "blob": "7c6caadea5d915b7f63fc3b6ca66bbdd75d3f6ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 114,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variantba4e023b8229ae0baef75e4693f11767023d8c8af694dbde39f5cef0ef646f90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8347f2104ecf6578c2314e8134fb2e27d87bda4d11315895594b9e178ec6e43",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variantba4e023b8229ae0baef75e4693f11767023d8c8af694dbde39f5cef0ef646f90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd991bfe0076125192af78b9666d0f2d01e2de4cd18e6b6f0dceaf8848cb4808`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkUnexpander (attrKind : TSyntax ``attrKind) (pat qrhs : Term) : OptionT MacroM Syntax := do
  let (c, args) ← match qrhs with
    | `($c:ident $args*) => pure (c, args)
    | `($c:ident)        => pure (c, #[])
    | _                  => failure
  let [(c, [])] ← Macro.resolveGlobalName c.getId | failure
  /-
  Try to remove all non semantic parenthesis. Since the parenthesizer
  runs after appUnexpanders we should not match on parenthesis that the user
  syntax inserted here for example the right hand side of:
  notation "{" x "|" p "}" => setOf (fun x => p)
  Should be matched as: setOf fun x => p
  -/
  let args ← liftM <| args.mapM removeParentheses
  /-
  The user could mention the same antiquotation from the lhs multiple
  times on the rhs, this heuristic does not support this.
  -/
  guard !hasDuplicateAntiquot args
  -- replace head constant with antiquotation so we're not dependent on the exact pretty printing of the head
  -- The reference is attached to the syntactic representation of the called function itself, not the entire function application
  let lhs ← `($$f:ident)
  let lhs := Syntax.mkApp lhs (.mk args)
  let vis := Parser.Command.visibility.ofAttrKind attrKind
  `(@[$attrKind app_unexpander $(mkIdent c)] $vis:visibility
    aux_def unexpand $(mkIdent c) : Lean.PrettyPrinter.Unexpander := fun
      | `($lhs)             => withRef f `($pat)
      | _                   => throw ())

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variantba4e023b8229ae0baef75e4693f11767023d8c8af694dbde39f5cef0ef646f90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variantba4e023b8229ae0baef75e4693f11767023d8c8af694dbde39f5cef0ef646f90.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c6caadea5d915b7f63fc3b6ca66bbdd75d3f6ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
