# CoordinateRealization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24044d911022f147a0b7e3b2d0fe6f850373575c311be4036cf350b852336a37",
  "kind": "structure",
  "lexical_name": "CoordinateRealization",
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
  "slug": "coordinaterealization--6c2496dbe4a3d9db6667a55e",
  "source": {
    "blob": "5597c1b2c1a6f4893e8fa568b2e3f8ff3992a45e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 82,
    "path": "GRWTSK/Spectral/Sheaf/SymmetryResolvedQuadraticDescent.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c2496dbe4a3d9db6667a55ec43d08d46be419888a487124850d3962fc8f8913",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24044d911022f147a0b7e3b2d0fe6f850373575c311be4036cf350b852336a37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CoordinateRealization
    {V : Type*} [AddCommGroup V] [Module ℚ V]
    (hermite metric : SymmetricForm V) where
  dimension : ℕ
  coordinates : V ≃ₗ[ℚ] (Fin dimension → ℚ)
  hermiteMatrix : Matrix (Fin dimension) (Fin dimension) ℚ
  metricMatrix : Matrix (Fin dimension) (Fin dimension) ℚ
  hermite_symmetric : hermiteMatrix.transpose = hermiteMatrix
  metric_symmetric : metricMatrix.transpose = metricMatrix
  hermite_represents : ∀ x y,
    hermite.form x y =
      dotProduct (coordinates x) (hermiteMatrix.mulVec (coordinates y))
  metric_represents : ∀ x y,
    metric.form x y =
      dotProduct (coordinates x) (metricMatrix.mulVec (coordinates y))

/-- All finite local data at one vertex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Spectral/Sheaf/SymmetryResolvedQuadraticDescent.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5597c1b2c1a6f4893e8fa568b2e3f8ff3992a45e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
