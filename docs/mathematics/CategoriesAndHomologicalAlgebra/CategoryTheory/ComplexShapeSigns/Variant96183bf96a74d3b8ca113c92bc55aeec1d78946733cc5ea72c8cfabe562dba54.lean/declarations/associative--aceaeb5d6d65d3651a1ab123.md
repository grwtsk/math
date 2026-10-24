# associative_ε₂_ε₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7d69d9a-3780-fc37-943a-1f8b440c4d4c",
  "kind": "lemma",
  "lexical_name": "associative_ε₂_ε₁",
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
  "slug": "associative--aceaeb5d6d65d3651a1ab123",
  "source": {
    "blob": "0c0500d11c49ffc429680f3c252124c2e3390785",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 233,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aceaeb5d6d65d3651a1ab1239b3eca8762cbe52f38dcd390969d6eaf01e9a4b3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7d69d9a-3780-fc37-943a-1f8b440c4d4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma associative_ε₂_ε₁ (i₁ : I₁) (i₂ : I₂) (i₃ : I₃) :
    ε₂ c₁ c₂₃ c (i₁, π c₂ c₃ c₂₃ (i₂, i₃)) * ε₁ c₂ c₃ c₂₃ (i₂, i₃) =
      ε₁ c₁₂ c₃ c (π c₁ c₂ c₁₂ (i₁, i₂), i₃) * ε₂ c₁ c₂ c₁₂ (i₁, i₂) := by
  apply Associative.ε₂_ε₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c0500d11c49ffc429680f3c252124c2e3390785` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
