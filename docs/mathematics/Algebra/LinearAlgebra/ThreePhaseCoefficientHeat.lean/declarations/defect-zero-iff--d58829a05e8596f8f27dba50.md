# defect_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da06360e-edba-62be-cd32-8b716f0eb120",
  "kind": "theorem",
  "lexical_name": "defect_zero_iff",
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
  "slug": "defect-zero-iff--d58829a05e8596f8f27dba50",
  "source": {
    "blob": "6b50b0dd31cfcbb3e3faa04d622eefbe7eb9c544",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 121,
    "path": "GRWTSK/Analysis/LinearAlgebra/ThreePhaseCoefficientHeat.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d58829a05e8596f8f27dba50d6ae49ef9736a0dfa45c5fe453c0e38b9dbc1324",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da06360e-edba-62be-cd32-8b716f0eb120`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem defect_zero_iff (lam : ℝ) (hlam : 0 < lam) (z : Triple) (c : ℝ) :
    defectEnergy lam z c = 0 ↔ (∀ j, z j = mean z) ∧ c = 0 := by
  constructor
  · intro h
    have hr : 0 ≤ residualEnergy z := Finset.sum_nonneg (fun j _ => sq_nonneg _)
    have hc : 0 ≤ lam * c ^ 2 := mul_nonneg hlam.le (sq_nonneg c)
    change residualEnergy z + lam * c ^ 2 = 0 at h
    have hz : residualEnergy z = 0 := by linarith
    have hcz : c = 0 := by nlinarith [sq_nonneg c]
    refine ⟨?_, hcz⟩
    intro j
    have hj : (z j - mean z) ^ 2 ≤ residualEnergy z :=
      Finset.single_le_sum (fun i _ => sq_nonneg _) (Finset.mem_univ j)
    rw [hz] at hj
    nlinarith [sq_nonneg (z j - mean z)]
  · rintro ⟨hz, rfl⟩
    simp [defectEnergy, residualEnergy, hz]

/-- Exact attenuation at arbitrary scalar d; no exponential arithmetic is needed here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LinearAlgebra/ThreePhaseCoefficientHeat.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b50b0dd31cfcbb3e3faa04d622eefbe7eb9c544` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
