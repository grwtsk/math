# multiplicativeClosure_eq_multiplicativeClosure'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0feb893-9eb7-1f44-b363-e1dd16b9d684",
  "kind": "lemma",
  "lexical_name": "multiplicativeClosure_eq_multiplicativeClosure'",
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
  "slug": "multiplicativeclosure-eq-multiplicativeclosure--e91b2815b3b6f0e8d4cc6380",
  "source": {
    "blob": "57f8110d0116a6790b0d02d8225f6f84bc943706",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 297,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Composition/Variant32845912725b162934e00179af73db1101d5c2c65601ac3ca897eea6c443c312.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e91b2815b3b6f0e8d4cc638083a62eeae54ed15c0371fb3c16f500b602a3e95c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Composition/Variant32845912725b162934e00179af73db1101d5c2c65601ac3ca897eea6c443c312.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0feb893-9eb7-1f44-b363-e1dd16b9d684`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma multiplicativeClosure_eq_multiplicativeClosure' :
    W.multiplicativeClosure = W.multiplicativeClosure' :=
  le_antisymm
    ((multiplicativeClosure_le_iff _ _).mpr (fun _ _ f hf ↦ .of f hf)) <|
    fun x y f hf ↦ by induction hf with
      | of _ h => exact .of _ h
      | id x => exact .id x
      | of_comp f g hf hg hr => exact W.multiplicativeClosure.comp_mem f g (.of f hf) hr

/-- A class of morphisms `W` has the of-postcomp property wrt. `W'` if whenever
`g` is in `W'` and `f ≫ g` is in `W`, also `f` is in `W`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Composition/Variant32845912725b162934e00179af73db1101d5c2c65601ac3ca897eea6c443c312.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Composition/Variant32845912725b162934e00179af73db1101d5c2c65601ac3ca897eea6c443c312.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57f8110d0116a6790b0d02d8225f6f84bc943706` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
