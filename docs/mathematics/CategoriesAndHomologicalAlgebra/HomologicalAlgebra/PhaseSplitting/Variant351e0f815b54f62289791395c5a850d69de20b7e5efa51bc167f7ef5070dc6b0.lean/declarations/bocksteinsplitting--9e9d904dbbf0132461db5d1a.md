# BocksteinSplitting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d17ab2f01bcf73db33fc1ef83c490bd93abbd69c0e845c0f514c5b349155ff59",
  "kind": "structure",
  "lexical_name": "BocksteinSplitting",
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
  "slug": "bocksteinsplitting--9e9d904dbbf0132461db5d1a",
  "source": {
    "blob": "d83a11ce22ff13b184e0c899f54b6e43fe400c48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 16,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/PhaseSplitting/Variant351e0f815b54f62289791395c5a850d69de20b7e5efa51bc167f7ef5070dc6b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e9d904dbbf0132461db5d1afba3e8dcc302faf23757a391df8ac2381c0f66e6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/PhaseSplitting/Variant351e0f815b54f62289791395c5a850d69de20b7e5efa51bc167f7ef5070dc6b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d17ab2f01bcf73db33fc1ef83c490bd93abbd69c0e845c0f514c5b349155ff59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BocksteinSplitting
    {Torus : Type u} {Phase : Type v} {Torsion : Type w}
    [AddCommGroup Torus]
    [AddCommGroup Phase]
    [AddCommGroup Torsion]
    (extension : BocksteinExtension Torus Phase Torsion) where
  lift : Torsion →+ Phase
  rightInverse :
    Function.RightInverse lift extension.bockstein
  choiceDigest : Digest
  splittingCertificate : ObjectAddress

namespace BocksteinSplitting

variable
    {Torus : Type u} {Phase : Type v} {Torsion : Type w}
    [AddCommGroup Torus]
    [AddCommGroup Phase]
    [AddCommGroup Torsion]
    {extension : BocksteinExtension Torus Phase Torsion}
    (splitting : BocksteinSplitting extension)

/-- The selected torsion lift has exactly the requested finite phase. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/PhaseSplitting/Variant351e0f815b54f62289791395c5a850d69de20b7e5efa51bc167f7ef5070dc6b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/PhaseSplitting/Variant351e0f815b54f62289791395c5a850d69de20b7e5efa51bc167f7ef5070dc6b0.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d83a11ce22ff13b184e0c899f54b6e43fe400c48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
