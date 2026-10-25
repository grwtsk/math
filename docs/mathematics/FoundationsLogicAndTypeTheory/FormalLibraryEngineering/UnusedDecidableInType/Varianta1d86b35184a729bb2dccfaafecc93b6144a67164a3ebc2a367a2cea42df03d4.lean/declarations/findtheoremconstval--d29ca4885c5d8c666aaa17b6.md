# findTheoremConstVal?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca053774a238278ed056a2f50e405682dab1ceeaa5038a9d9896dc95ae18ac7d",
  "kind": "def",
  "lexical_name": "findTheoremConstVal?",
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
  "slug": "findtheoremconstval--d29ca4885c5d8c666aaa17b6",
  "source": {
    "blob": "15a6dc79c284eadd5a2ed79029698f146adfffc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedDecidableInType/Varianta1d86b35184a729bb2dccfaafecc93b6144a67164a3ebc2a367a2cea42df03d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d29ca4885c5d8c666aaa17b697294caf34739110fd55adc489eca6998db34091",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedDecidableInType/Varianta1d86b35184a729bb2dccfaafecc93b6144a67164a3ebc2a367a2cea42df03d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca053774a238278ed056a2f50e405682dab1ceeaa5038a9d9896dc95ae18ac7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def findTheoremConstVal? (env : Environment) (decl : Name) (skipRealize := false) :
    Option ConstantVal :=
  env.findConstValOfKind? (· matches .thm) decl skipRealize

end Environment

namespace Linter.Extra
open Elab Command Meta Term

/--
Enables the 'unused `Decidable*` in type' linter, which lints against `Decidable*` instance
hypotheses in the types of theorems which are not used in the remainder of the type, and could
therefore be replaced with `classical` in the proof.

This linter fires only on theorems. (This includes `lemma`s and `instance`s of `Prop` classes.)
The constants recognised as `Decidable*` are `Decidable`, `DecidablePred`, `DecidableRel`,
`DecidableEq`, `DecidableLE`, and `DecidableLT`.
-/
register_builtin_option linter.extra.unusedDecidableInType : Bool := {
  defValue := false
  descr := "enable the unused `Decidable*` instance linter, which lints against `Decidable*` \
    instances in the hypotheses of theorems which are not used in the type, and can therefore be \
    replaced by a use of `classical` in the proof."
}

namespace UnusedDecidableInType

/--
Information about an unused parameter of some declaration.

`m!"{param}"` displays as `[{param.type?.get}] (#{param.idx + 1})` if `type?` is `some _`, and as
`parameter #{param.idx + 1}` as a failsafe if `type?` is `none`. (We always expect `type?` to be
`some _`, but allow `none` as a failsafe.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedDecidableInType/Varianta1d86b35184a729bb2dccfaafecc93b6144a67164a3ebc2a367a2cea42df03d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedDecidableInType/Varianta1d86b35184a729bb2dccfaafecc93b6144a67164a3ebc2a367a2cea42df03d4.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15a6dc79c284eadd5a2ed79029698f146adfffc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
