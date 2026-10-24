# halfZero_lyapunovCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3dd2b9d3cfc4a01e913584751e59855529bf58dd02e93d56518c18bfd9227a4b",
  "kind": "def",
  "lexical_name": "halfZero_lyapunovCertificate",
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
  "slug": "halfzero-lyapunovcertificate--d6c063becec8a0deaf3c478e",
  "source": {
    "blob": "6a3874ad4ee8e3b2ab501b398030b231948c6e61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 219,
    "path": "GRWTSK/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6c063becec8a0deaf3c478e96feb78914b0ddef01dd3068c4086c599a8299d0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3dd2b9d3cfc4a01e913584751e59855529bf58dd02e93d56518c18bfd9227a4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def halfZero_lyapunovCertificate :
    LocalQuadraticLyapunovCertificate halfZero where
  region := Set.univ
  fixed_mem := Set.mem_univ _
  invariant := fun _ _ ↦ Set.mem_univ _
  energy := fun state ↦ (state : ℝ) ^ 2
  lowerConstant := 1
  upperConstant := 1
  lowerConstant_positive := one_pos
  upperConstant_positive := one_pos
  lower_bound := by
    intro state _
    change
      1 * dist (state : ℝ) 0 ^ 2 ≤
        (state : ℝ) ^ 2
    rw [Real.dist_eq, sub_zero, sq_abs]
    simp
  upper_bound := by
    intro state _
    change
      (state : ℝ) ^ 2 ≤
        1 * dist (state : ℝ) 0 ^ 2
    rw [Real.dist_eq, sub_zero, sq_abs]
    simp
  decreases := by
    intro state _
    change ((state : ℝ) / 2) ^ 2 ≤ (state : ℝ) ^ 2
    nlinarith [sq_nonneg (state : ℝ)]
  local_sublevel := by
    intro ε ε_positive
    refine ⟨ε, ε_positive, ?_⟩
    intro state stateClose
    refine ⟨Set.mem_univ _, ?_⟩
    change
      1 * dist (state : ℝ) 0 ^ 2 <
        1 * ε ^ 2
    simpa [Subtype.dist_eq, halfZero, Real.dist_eq,
      sq_abs] using
      (sq_lt_sq₀ dist_nonneg ε_positive.le).mpr stateClose

/-- Zero for `x ↦ x/2` is globally, hence locally, asymptotically stable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a3874ad4ee8e3b2ab501b398030b231948c6e61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
