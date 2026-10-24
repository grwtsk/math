# modulesNotUpperCamelCase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34d7caeeefd80c7f604475a7727848323e7e66ef5da1f5174718e3a35a3e4aa7",
  "kind": "def",
  "lexical_name": "modulesNotUpperCamelCase",
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
  "slug": "modulesnotuppercamelcase--87ad5978df7540d7a6cf4f33",
  "source": {
    "blob": "75dc9ed61b984e5bf8f676826f52a00131c2b42f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 372,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87ad5978df7540d7a6cf4f33e6f339dfcbad4f2caf032635784a146591455901",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34d7caeeefd80c7f604475a7727848323e7e66ef5da1f5174718e3a35a3e4aa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def modulesNotUpperCamelCase (opts : Lean.Options) (modules : Array Lean.Name) : IO Nat := do
  unless getLinterValue linter.modulesUpperCamelCase opts do return 0

  -- Exceptions to this list should be discussed on zulip!
  let exceptions := [
    `Mathlib.Analysis.CStarAlgebra.lpSpace,
    `Mathlib.Analysis.InnerProductSpace.l2Space,
    `Mathlib.Analysis.Normed.Lp.lpSpace
  ]
  -- We allow only names in UpperCamelCase, possibly with a trailing underscore.
  let badNames := modules.filter fun name ↦
    let upperCamelName := Lake.toUpperCamelCase name
    !exceptions.contains name &&
      upperCamelName != name && s!"{upperCamelName}_" != name.toString
  for bad in badNames do
    let upperCamelName := Lake.toUpperCamelCase bad
    let good := if bad.toString.endsWith "_" then s!"{upperCamelName}_" else upperCamelName.toString
    IO.eprintln
      s!"error: module name '{bad}' is not in 'UpperCamelCase': it should be '{good}' instead"
  return badNames.size

end Mathlib.Linter.TextBased
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75dc9ed61b984e5bf8f676826f52a00131c2b42f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
