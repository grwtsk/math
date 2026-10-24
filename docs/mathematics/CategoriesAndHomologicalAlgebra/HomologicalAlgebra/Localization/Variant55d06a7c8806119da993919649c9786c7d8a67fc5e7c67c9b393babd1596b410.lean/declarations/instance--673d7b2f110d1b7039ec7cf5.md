# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b097e83cb211d774d8463af3a603389694401a7e9eb882246b7739a74543c588",
  "kind": "instance",
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
  "slug": "instance--673d7b2f110d1b7039ec7cf5",
  "source": {
    "blob": "14e2ed14e77e3a841999f34dd9bd9b7e54c3b443",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 290,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:673d7b2f110d1b7039ec7cf53cc9700dee4d475fa4c98f79ca1f80d485f03a20",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b097e83cb211d774d8463af3a603389694401a7e9eb882246b7739a74543c588`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (ComplexShape.up ℤ).QFactorsThroughHomotopy C :=
  (ComplexShape.up ℤ).QFactorsThroughHomotopy_of_exists_prev (fun n => ⟨n - 1, by simp⟩) C

/-- When we define the derived category as `HomologicalComplexUpToQuasiIso C (ComplexShape.up ℤ)`,
i.e. as the localization of cochain complexes with respect to quasi-isomorphisms, this
example shall say that the derived category is also the localization of the homotopy
category with respect to quasi-isomorphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant55d06a7c8806119da993919649c9786c7d8a67fc5e7c67c9b393babd1596b410.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14e2ed14e77e3a841999f34dd9bd9b7e54c3b443` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
