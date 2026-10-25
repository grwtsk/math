# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3786f95ba788d58a2f83af936105038fdac0da6566ad89db61c6fef49cef3e29",
  "kind": "syntax",
  "lexical_name": null,
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
  "slug": "syntax--ed607be4dd0e9f332adbb4f8",
  "source": {
    "blob": "c4c140794381aa02542e905746b0954e42971c4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSL/Variantfe1dda07ace0ffd274be131076acf31f60a1c4015f2f267f20aced899870a1c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed607be4dd0e9f332adbb4f86eb61d5a322ad192ec555ba180c189bcb6639c53",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSL/Variantfe1dda07ace0ffd274be131076acf31f60a1c4015f2f267f20aced899870a1c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3786f95ba788d58a2f83af936105038fdac0da6566ad89db61c6fef49cef3e29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
syntax (name := dsimprocParen) "(" sym_dsimproc ")" : sym_dsimproc

end Lean.Parser.Sym.DSimp

/-!
## `register_sym_dsimp` command

Declares a named `Sym.dsimp` variant with `pre`/`post` simproc chains and optional config overrides.

```
register_sym_dsimp myVariant where
  pre  := match
  post := ground >> zeta_delta
```
-/

namespace Lean.Parser.Command

declare_syntax_cat sym_dsimp_field (behavior := both)

/-- Pre-processing simproc chain. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSL/Variantfe1dda07ace0ffd274be131076acf31f60a1c4015f2f267f20aced899870a1c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSL/Variantfe1dda07ace0ffd274be131076acf31f60a1c4015f2f267f20aced899870a1c0.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4c140794381aa02542e905746b0954e42971c4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
