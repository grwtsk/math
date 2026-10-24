# uniformInverseBound_iff_gain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05af6747-5ee9-03fc-4429-8fac6a3fc50b",
  "kind": "theorem",
  "lexical_name": "uniformInverseBound_iff_gain",
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
  "slug": "uniforminversebound-iff-gain--4bb5e4a0dabcdac0bb919079",
  "source": {
    "blob": "002b7d5c2f5530ff61cd5cfaf18f6d5463cf19fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 181,
    "path": "GRWTSK/Geometry/Hodge/FiniteHeatRecovery.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bb5e4a0dabcdac0bb9190797a7203d181f242df9e2c424f756e9d457a90860c",
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

Occurrence: `result:05af6747-5ee9-03fc-4429-8fac6a3fc50b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformInverseBound_iff_gain {ι : Type*}
    (eigenvalue : ι → ℝ) (t C : ℝ) :
    UniformInverseBound eigenvalue t C ↔
      ∀ i : ι, Real.exp (t * eigenvalue i) ≤ C := by
  constructor
  · intro h i
    have hsingle := h (fun _ => (1 : ℝ)) i
    change |Real.exp (t * eigenvalue i) * (1 : ℝ)| ≤
      C * |(1 : ℝ)| at hsingle
    simpa [abs_of_pos (Real.exp_pos _)] using hsingle
  · intro h signal i
    change |Real.exp (t * eigenvalue i) * signal i| ≤
      C * |signal i|
    rw [abs_mul, abs_of_pos (Real.exp_pos _)]
    exact mul_le_mul_of_nonneg_right (h i) (abs_nonneg _)

/-- A supplied, source-faithful finite Hodge spectral chart for an ACTUAL
finite incidence Laplacian. Existence is not constructed in this module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Hodge/FiniteHeatRecovery.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Hodge/FiniteHeatRecovery.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `002b7d5c2f5530ff61cd5cfaf18f6d5463cf19fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
