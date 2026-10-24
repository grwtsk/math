# LinearIntervention

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b832d5026f7b5d2bd1b19e7a438c00ba808b198d667a1fc193d7eb8097a739ca",
  "kind": "structure",
  "lexical_name": "LinearIntervention",
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
  "slug": "linearintervention--62fa7b334d705cab97f3dff8",
  "source": {
    "blob": "c3f9fbeb8922540195acbe53043b9094d7a5ab51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 49,
    "path": "GRWTSK/Algebra/LinearAlgebra/3b190c43599a1ba5e59ef7c615826ae6b6ca0265002099df1c2ef12fbfe2ca6eInterventionDefe/Variant3b190c43599a1ba5e59ef7c615826ae6b6ca0265002099df1c2ef12fbfe2ca6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62fa7b334d705cab97f3dff8b0e67b92ea778f722a9162509e86ceced7fe57f3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/3b190c43599a1ba5e59ef7c615826ae6b6ca0265002099df1c2ef12fbfe2ca6eInterventionDefe/Variant3b190c43599a1ba5e59ef7c615826ae6b6ca0265002099df1c2ef12fbfe2ca6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b832d5026f7b5d2bd1b19e7a438c00ba808b198d667a1fc193d7eb8097a739ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LinearIntervention (X : Type v) (V : Type u)
    [AddCommGroup X] [Module ℝ X]
    [AddCommGroup V] [Module ℝ V] where
  baseline : X →ₗ[ℝ] V
  intervened : X →ₗ[ℝ] V

namespace LinearIntervention

/-- The linear intervention differential. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/3b190c43599a1ba5e59ef7c615826ae6b6ca0265002099df1c2ef12fbfe2ca6eInterventionDefe/Variant3b190c43599a1ba5e59ef7c615826ae6b6ca0265002099df1c2ef12fbfe2ca6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/3b190c43599a1ba5e59ef7c615826ae6b6ca0265002099df1c2ef12fbfe2ca6eInterventionDefe/Variant3b190c43599a1ba5e59ef7c615826ae6b6ca0265002099df1c2ef12fbfe2ca6e.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3f9fbeb8922540195acbe53043b9094d7a5ab51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
