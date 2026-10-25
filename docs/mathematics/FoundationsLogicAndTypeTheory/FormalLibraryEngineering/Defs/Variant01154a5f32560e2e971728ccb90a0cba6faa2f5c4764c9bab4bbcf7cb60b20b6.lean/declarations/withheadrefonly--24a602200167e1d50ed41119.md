# withHeadRefOnly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b7c7a271e89da571bd6aefce56a6ede1a2da37b242049466a4fc368b93818110",
  "kind": "def",
  "lexical_name": "withHeadRefOnly",
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
  "slug": "withheadrefonly--24a602200167e1d50ed41119",
  "source": {
    "blob": "201680de486432949cac7a2da67f00faabd021da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 698,
    "line": 669,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant01154a5f32560e2e971728ccb90a0cba6faa2f5c4764c9bab4bbcf7cb60b20b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24a602200167e1d50ed41119a8d48974c195d8a15c0a7acccc077e3c8b2f4728",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant01154a5f32560e2e971728ccb90a0cba6faa2f5c4764c9bab4bbcf7cb60b20b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b7c7a271e89da571bd6aefce56a6ede1a2da37b242049466a4fc368b93818110`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 669–698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[inline] def withHeadRefOnly {m : Type → Type} [Monad m] [MonadRef m] {α} (x : m α) : m α := do
  match (← getRef).getHead? with
  | none => x
  | some ref => withRef ref x

/--
  Expand macros in the given syntax.
  A node with kind `k` is visited only if `p k` is true.

  Note that the default value for `p` returns false for `by ...` nodes.
  This is a "hack". The tactic framework abuses the macro system to implement extensible tactics.
  For example, one can define
  ```lean
  syntax "my_trivial" : tactic -- extensible tactic

  macro_rules | `(tactic| my_trivial) => `(tactic| decide)
  macro_rules | `(tactic| my_trivial) => `(tactic| assumption)
  ```
  When the tactic evaluator finds the tactic `my_trivial`, it tries to evaluate the `macro_rule` expansions
  until one "works", i.e., the macro expansion is evaluated without producing an exception.
  We say this solution is a bit hackish because the term elaborator may invoke `expandMacros` with `(p := fun _ => true)`,
  and expand the tactic macros as just macros. In the example above, `my_trivial` would be replaced with `assumption`,
  `decide` would not be tried if `assumption` fails at tactic evaluation time.

  We are considering two possible solutions for this issue:
  1- A proper extensible tactic feature that does not rely on the macro system.

  2- Typed macros that know the syntax categories they're working in. Then, we would be able to select which
     syntactic categories are expanded by `expandMacros`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant01154a5f32560e2e971728ccb90a0cba6faa2f5c4764c9bab4bbcf7cb60b20b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant01154a5f32560e2e971728ccb90a0cba6faa2f5c4764c9bab4bbcf7cb60b20b6.lean#L669).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `201680de486432949cac7a2da67f00faabd021da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
