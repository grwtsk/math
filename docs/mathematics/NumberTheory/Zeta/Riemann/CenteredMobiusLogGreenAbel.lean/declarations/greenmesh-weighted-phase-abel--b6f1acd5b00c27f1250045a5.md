# greenMesh_weighted_phase_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3325bb1c-a9c9-164c-5eda-ccc1870df8f4",
  "kind": "theorem",
  "lexical_name": "greenMesh_weighted_phase_abel",
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
  "slug": "greenmesh-weighted-phase-abel--b6f1acd5b00c27f1250045a5",
  "source": {
    "blob": "13f4dcc63e3aa0ca3e176d5fb96475e3aa54496b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 22,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAbel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6f1acd5b00c27f1250045a533632a4dcd4171f4a98af164f137de8c5fb8f019",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAbel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3325bb1c-a9c9-164c-5eda-ccc1870df8f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem greenMesh_weighted_phase_abel
    {X : ℕ} (hX : 1 ≤ X) (k : ℤ) :
    (∑ j ∈ Finset.Icc 1 X,
        (greenMeshWeight X j : ℂ) * (greenMeshPhase X k) ^ j) =
      (greenMeshWeight X X : ℂ) *
          greenMeshPhasePartialSum X k X +
        ∑ m ∈ Finset.Icc 1 (X - 1),
          ((greenMeshWeight X m - greenMeshWeight X (m + 1) : ℝ) : ℂ) *
            greenMeshPhasePartialSum X k m := by
  unfold greenMeshPhasePartialSum
  -- Finite summation by parts; expand partial sums and swap the triangular sum.
  induction X using Nat.case_strong_induction_on with
  | hz => omega
  | hs X ih =>
      by_cases hX0 : X = 0
      · subst X
        simp [greenMeshWeight]
      · have hXp : 1 ≤ X := by omega
        rw [show Finset.Icc 1 (X + 1) =
            insert (X + 1) (Finset.Icc 1 X) by
          ext j
          simp
          omega]
        rw [Finset.sum_insert (by simp)]
        have ih' := ih X (by omega) hXp k
        rw [ih']
        simp only [Nat.add_sub_cancel]
        ring_nf
        -- The new endpoint coefficient combines with the last old partial sum.
        ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAbel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAbel.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13f4dcc63e3aa0ca3e176d5fb96475e3aa54496b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
