# inverse_gain_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6aa6dbf3-5267-d227-427d-61b4a2b9d823",
  "kind": "theorem",
  "lexical_name": "inverse_gain_readout",
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
  "slug": "inverse-gain-readout--b9b7f9f7c992adf124eceab5",
  "source": {
    "blob": "002b7d5c2f5530ff61cd5cfaf18f6d5463cf19fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 160,
    "path": "GRWTSK/Geometry/Hodge/FiniteHeatRecovery.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9b7f9f7c992adf124eceab55c4fbebbd7b165f9fba05ebfd3af794e76cbce8f",
  "verification": {
    "reference": "docs/verification/Geometry/Hodge/FiniteHeatRecovery.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6aa6dbf3-5267-d227-427d-61b4a2b9d823`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverse_gain_readout {ι : Type*} (eigenvalue : ι → ℝ)
    (t : ℝ) (signal : ι → ℝ) (C : ℝ)
    (hgain : ∀ i, Real.exp (t * eigenvalue i) ≤ C) (i : ι) :
    |signal i| ≤ C * |diagonalHeat eigenvalue t signal i| := by
  have h := congrFun (inverse_after_heat eigenvalue t signal) i
  have hrew :
      signal i = Real.exp (t * eigenvalue i) *
          diagonalHeat eigenvalue t signal i := h.symm
  rw [hrew, abs_mul, abs_of_pos (Real.exp_pos _)]
  exact mul_le_mul_of_nonneg_right (hgain i) (abs_nonneg _)

/-- Exact uniform coordinate-inverse requirement for the full spectral
heat operator, with ONE real constant shared across all inputs and modes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Hodge/FiniteHeatRecovery.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Hodge/FiniteHeatRecovery.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `002b7d5c2f5530ff61cd5cfaf18f6d5463cf19fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
