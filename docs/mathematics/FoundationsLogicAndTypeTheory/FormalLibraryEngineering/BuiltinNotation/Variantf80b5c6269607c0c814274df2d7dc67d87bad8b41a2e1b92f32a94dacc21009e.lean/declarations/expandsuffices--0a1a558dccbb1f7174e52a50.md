# expandSuffices

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6727709b4da02caa6ee7ad04f2d747ffadb41bf1453ca168c16e2a5b7a1bf1fa",
  "kind": "def",
  "lexical_name": "expandSuffices",
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
  "slug": "expandsuffices--0a1a558dccbb1f7174e52a50",
  "source": {
    "blob": "3420ebb6df810a5218fbfe80f93c70893eada123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 157,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variantf80b5c6269607c0c814274df2d7dc67d87bad8b41a2e1b92f32a94dacc21009e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a1a558dccbb1f7174e52a50fff3188aa8a1cc8e53c1f9614682f3e215a4c5ae",
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

Occurrence: `declaration:6727709b4da02caa6ee7ad04f2d747ffadb41bf1453ca168c16e2a5b7a1bf1fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_macro Lean.Parser.Term.suffices] def expandSuffices : Macro
  | `(suffices%$tk $x:ident      : $type from $val; $body)   => `(have%$tk $x:ident : $type := $body; $val)
  | `(suffices%$tk _%$x          : $type from $val; $body)   => `(have%$tk _%$x : $type := $body; $val)
  | `(suffices%$tk $hy:hygieneInfo $type from $val; $body)   => `(have%$tk $hy:hygieneInfo : $type := $body; $val)
  | `(suffices%$tk $x:ident      : $type $b:byTactic'; $body) =>
    -- Pass on `SourceInfo` of `b` to `have`. This is necessary to display the goal state in the
    -- trailing whitespace of `by` and sound since `byTactic` and `byTactic'` are identical.
    let b := ⟨b.raw.setKind `Lean.Parser.Term.byTactic⟩
    `(have%$tk $x:ident : $type := $body; $b:byTactic)
  | `(suffices%$tk _%$x          : $type $b:byTactic'; $body) =>
    let b := ⟨b.raw.setKind `Lean.Parser.Term.byTactic⟩
    `(have%$tk _%$x : $type := $body; $b:byTactic)
  | `(suffices%$tk $hy:hygieneInfo $type $b:byTactic'; $body) =>
    let b := ⟨b.raw.setKind `Lean.Parser.Term.byTactic⟩
    `(have%$tk $hy:hygieneInfo : $type := $body; $b:byTactic)
  | _ => Macro.throwUnsupported

open Lean.Parser in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variantf80b5c6269607c0c814274df2d7dc67d87bad8b41a2e1b92f32a94dacc21009e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variantf80b5c6269607c0c814274df2d7dc67d87bad8b41a2e1b92f32a94dacc21009e.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3420ebb6df810a5218fbfe80f93c70893eada123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
