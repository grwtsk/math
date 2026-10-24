# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1384ab5ec8d6da6aed751126d98a68edf972cd8c2e5f5a8fccb7c74dcb85577",
  "kind": "elab",
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
  "slug": "elab--3df9ad67d9c4cac4d0da23a6",
  "source": {
    "blob": "401d3403e732d95e6f529873a5a0dd05034273e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 178,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3df9ad67d9c4cac4d0da23a6190cf8d67defd56cb5d829122602c4572fdadeaa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1384ab5ec8d6da6aed751126d98a68edf972cd8c2e5f5a8fccb7c74dcb85577`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab (name := pure_coherence) "pure_coherence" : tactic => do
  if warn.refl_coherence.get (← getOptions) then
    Lean.logWarning
      "Usually, use `monoidal` or `bicategory` instead, depending on the context. \
    They are given in `Mathlib.Tactic.CategoryTheory.Monoidal.Basic` and \
    `Mathlib.Tactic.CategoryTheory.Bicategory.Basic.lean` respectively."
  let g ← getMainGoal
  monoidalCoherence g <|> bicategoryCoherence g

/-- The same as `pure_coherence`, but used internally in `coherence` without the warning. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Varianta9ac0ed7f8e55515700f334178e22e633237f13197219e00ba7c81ee2c7df6d3.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401d3403e732d95e6f529873a5a0dd05034273e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
