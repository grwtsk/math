# FinitePowerEnclosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e5a1d3a675e9ec1eac728f02db9e4665c63b523654e968fd6be78af2aeb7fbe",
  "kind": "structure",
  "lexical_name": "FinitePowerEnclosure",
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
  "slug": "finitepowerenclosure--a51fa7a1421f42e5a8a05ea6",
  "source": {
    "blob": "d6fa16ca87f7c433a0cb410b2fc81bcda20cd858",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 31,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a51fa7a1421f42e5a8a05ea6a7cd8ad281514ae027ffbb4eb5aac9bc079505d7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e5a1d3a675e9ec1eac728f02db9e4665c63b523654e968fd6be78af2aeb7fbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FinitePowerEnclosure (N : ℕ) (s : ℂ) where
  value : ℕ → ℂ
  error : ℕ → ℝ
  error_nonneg : ∀ k ∈ Finset.Icc 1 N, 0 ≤ error k
  encloses : ∀ k ∈ Finset.Icc 1 N, ‖(k : ℂ) ^ (-s) - value k‖ ≤ error k
  endpoint : ℂ
  endpoint_error : ℝ
  endpoint_error_nonneg : 0 ≤ endpoint_error
  endpoint_encloses : ‖(N : ℂ) ^ (1 - s) - endpoint‖ ≤ endpoint_error

namespace FinitePowerEnclosure

variable {N : ℕ} {s : ℂ}

/-- Finite arithmetic expression; there is no quadrature call in this sample. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6fa16ca87f7c433a0cb410b2fc81bcda20cd858` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
