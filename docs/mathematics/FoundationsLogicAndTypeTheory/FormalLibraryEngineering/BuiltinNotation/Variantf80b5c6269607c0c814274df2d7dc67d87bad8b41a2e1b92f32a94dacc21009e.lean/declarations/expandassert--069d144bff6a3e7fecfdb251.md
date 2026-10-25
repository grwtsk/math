# expandAssert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa3042c9cff064324b4eff578136f33a139885bed054ca5e77e1b054a7370d55",
  "kind": "def",
  "lexical_name": "expandAssert",
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
  "slug": "expandassert--069d144bff6a3e7fecfdb251",
  "source": {
    "blob": "3420ebb6df810a5218fbfe80f93c70893eada123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 222,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variantf80b5c6269607c0c814274df2d7dc67d87bad8b41a2e1b92f32a94dacc21009e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:069d144bff6a3e7fecfdb251b1f79ebc7ea9f768176a6bd36db57ade53db6e71",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variantf80b5c6269607c0c814274df2d7dc67d87bad8b41a2e1b92f32a94dacc21009e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa3042c9cff064324b4eff578136f33a139885bed054ca5e77e1b054a7370d55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_macro Lean.Parser.Term.assert]  def expandAssert : Macro
  | `(assert! $cond; $body) =>
    match cond.raw.reprint with
    | some code => `(if $cond then $body else panic! ("assertion violation: " ++ $(quote code)))
    | none => `(if $cond then $body else panic! ("assertion violation"))
  | _ => Macro.throwUnsupported

register_builtin_option debugAssertions : Bool := {
  defValue := false
  descr := "enable `debug_assert!` statements\
    \n\
    \nDefaults to `false` unless the Lake `buildType` is `debug`."
}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variantf80b5c6269607c0c814274df2d7dc67d87bad8b41a2e1b92f32a94dacc21009e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variantf80b5c6269607c0c814274df2d7dc67d87bad8b41a2e1b92f32a94dacc21009e.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3420ebb6df810a5218fbfe80f93c70893eada123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
