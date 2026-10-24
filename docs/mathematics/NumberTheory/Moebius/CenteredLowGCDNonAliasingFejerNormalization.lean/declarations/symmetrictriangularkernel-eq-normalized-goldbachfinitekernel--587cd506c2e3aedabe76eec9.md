# symmetricTriangularKernel_eq_normalized_goldbachFiniteKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:537207c3-9a36-4810-9b27-3850504a7bf1",
  "kind": "theorem",
  "lexical_name": "symmetricTriangularKernel_eq_normalized_goldbachFiniteKernel",
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
  "slug": "symmetrictriangularkernel-eq-normalized-goldbachfinitekernel--587cd506c2e3aedabe76eec9",
  "source": {
    "blob": "8b952aa6b6a7295dae0c3834a730c245955e994a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 15,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerNormalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:587cd506c2e3aedabe76eec92ee16d567289ead835b341a1e3e8e1b733c1cb7c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerNormalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:537207c3-9a36-4810-9b27-3850504a7bf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symmetricTriangularKernel_eq_normalized_goldbachFiniteKernel
    {N : ℕ} (hN : 0 < N) (t : ℝ) :
    symmetricTriangularKernel N (t : AddCircle (1 : ℝ)) =
      ((1 : ℂ) / (N : ℝ)) *
        goldbachFiniteSingularKernel (N - 1) t := by
  rw [goldbachFiniteSingularKernel_eq_triangularFrequencySum]
  unfold symmetricTriangularKernel
  have hsub :
      Finset.Icc (-((N - 1 : ℕ) : ℤ)) ((N - 1 : ℕ) : ℤ) ⊆
        Finset.Icc (-(N : ℤ)) (N : ℤ) := by
    intro k hk
    have hkI := Finset.mem_Icc.mp hk
    exact Finset.mem_Icc.mpr (by omega)
  have hsupport :
      (∑ k ∈
          Finset.Icc (-((N - 1 : ℕ) : ℤ)) ((N - 1 : ℕ) : ℤ),
          (goldbachTriangularFrequencyWeight (N - 1) k : ℂ) *
            unitCharacter k t) =
        ∑ k ∈ Finset.Icc (-(N : ℤ)) (N : ℤ),
          (goldbachTriangularFrequencyWeight (N - 1) k : ℂ) *
            unitCharacter k t := by
    apply Finset.sum_subset hsub
    intro k hkOuter hkNotInner
    have hkO := Finset.mem_Icc.mp hkOuter
    have hkNI :
        ¬(-((N - 1 : ℕ) : ℤ) ≤ k ∧
          k ≤ ((N - 1 : ℕ) : ℤ)) := by
      simpa only [Finset.mem_Icc] using hkNotInner
    have hkEndpoint : k = -(N : ℤ) ∨ k = (N : ℤ) := by
      omega
    have hnot : ¬N ≤ N - 1 := by omega
    rcases hkEndpoint with rfl | rfl <;>
      simp [goldbachTriangularFrequencyWeight_formula, hnot]
  rw [hsupport, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro k hk
  rw [goldbachTriangularFrequencyWeight_formula]
  by_cases hkN : k.natAbs < N
  · have hkLe : k.natAbs ≤ N - 1 := by omega
    rw [if_pos hkLe]
    have hcoeff :
        N - 1 + 1 - k.natAbs = N - k.natAbs := by
      omega
    rw [hcoeff]
    unfold symmetricTriangularWeight
    rw [if_pos hkN]
    simp only [unitCharacter]
    push_cast
    ring
  · have hkNotLe : ¬k.natAbs ≤ N - 1 := by omega
    rw [if_neg hkNotLe]
    simp [symmetricTriangularWeight, hkN]

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerNormalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerNormalization.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b952aa6b6a7295dae0c3834a730c245955e994a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
