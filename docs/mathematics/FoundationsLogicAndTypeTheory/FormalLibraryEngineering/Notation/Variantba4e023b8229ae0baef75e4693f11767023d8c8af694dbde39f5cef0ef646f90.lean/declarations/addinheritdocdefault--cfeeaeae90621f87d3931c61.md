# addInheritDocDefault

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6a9db6f3f688675d09a8a6e1414653cde6f57326c1eee6f3d0f77a7f369a902",
  "kind": "def",
  "lexical_name": "addInheritDocDefault",
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
  "slug": "addinheritdocdefault--cfeeaeae90621f87d3931c61",
  "source": {
    "blob": "7c6caadea5d915b7f63fc3b6ca66bbdd75d3f6ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variantba4e023b8229ae0baef75e4693f11767023d8c8af694dbde39f5cef0ef646f90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cfeeaeae90621f87d3931c61220747a0aeee2d912469d56dabde1b8abf269c89",
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

Occurrence: `declaration:a6a9db6f3f688675d09a8a6e1414653cde6f57326c1eee6f3d0f77a7f369a902`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 def addInheritDocDefault (rhs : Term) (attrs? : Option (TSepArray ``attrInstance ",")) :
    Option (TSepArray ``attrInstance ",") :=
  attrs?.map fun attrs =>
    match rhs with
    | `($f:ident $_args*) | `($f:ident) =>
      attrs.getElems.map fun stx => Unhygienic.run do
        if let `(attrInstance| $attr:ident) := stx then
          if attr.getId.eraseMacroScopes == `inherit_doc then
            return ← `(attrInstance| $attr:ident $f:ident)
        pure ⟨stx⟩
    | _ => attrs

/-- Convert `notation` command lhs item into a `syntax` command item -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variantba4e023b8229ae0baef75e4693f11767023d8c8af694dbde39f5cef0ef646f90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variantba4e023b8229ae0baef75e4693f11767023d8c8af694dbde39f5cef0ef646f90.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c6caadea5d915b7f63fc3b6ca66bbdd75d3f6ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
