# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9fc48b60deaaf5fd867a2ad56a198a4f5ebe6516f57e7885fd4e906a344b47a",
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
  "slug": "syntax--51d06bf7e16fc5d0ada6b2e5",
  "source": {
    "blob": "ad3a89d217c9a02d71a08f2139c3d72e10b57f6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant4de8bd498bd6655cbfaa1f75b640c4ee3d9db42d9cada4dcff9a05912bbced0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51d06bf7e16fc5d0ada6b2e536741828d012c66384b5cb9996e92b04c722cf36",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant4de8bd498bd6655cbfaa1f75b640c4ee3d9db42d9cada4dcff9a05912bbced0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9fc48b60deaaf5fd867a2ad56a198a4f5ebe6516f57e7885fd4e906a344b47a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
syntax " (" &"simp_config" " := " term ")" : Aesop.tactic_clause

/--
`aesop <clause>*` tries to solve the current goal by applying a set of rules
registered with the `@[aesop]` attribute. See [its
README](https://github.com/JLimperg/aesop#readme) for a tutorial and a
reference.

The variant `aesop?` prints the proof it found as a `Try this` suggestion.

Clauses can be used to customise the behaviour of an Aesop call. Available
clauses are:

- `(add <phase> <priority> <builder> <rule>)` adds a rule. `<phase>` is
  `unsafe`, `safe` or `norm`. `<priority>` is a percentage for unsafe rules and
  an integer for safe and norm rules. `<rule>` is the name of a declaration or
  local hypothesis. `<builder>` is the rule builder used to turn `<rule>` into
  an Aesop rule. Example: `(add unsafe 50% apply Or.inl)`.
- `(erase <rule>)` disables a globally registered Aesop rule. Example: `(erase
  Aesop.BuiltinRules.assumption)`.
- `(rule_sets := [<ruleset>,*])` enables or disables named sets of rules for
  this Aesop call. Example: `(rule_sets := [-builtin, MyRuleSet])`.
- `(config { <opt> := <value> })` adjusts Aesop's search options. See
  `Aesop.Options`.
- `(simp_config { <opt> := <value> })` adjusts options for Aesop's built-in
  `simp` rule. The given options are directly passed to `simp`. For example,
  `(simp_config := { zeta := false })` makes Aesop use
  `simp (config := { zeta := false })`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant4de8bd498bd6655cbfaa1f75b640c4ee3d9db42d9cada4dcff9a05912bbced0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant4de8bd498bd6655cbfaa1f75b640c4ee3d9db42d9cada4dcff9a05912bbced0f.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad3a89d217c9a02d71a08f2139c3d72e10b57f6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
