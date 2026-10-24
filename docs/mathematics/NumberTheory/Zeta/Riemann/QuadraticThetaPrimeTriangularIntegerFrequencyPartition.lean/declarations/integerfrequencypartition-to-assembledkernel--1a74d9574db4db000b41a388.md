# integerFrequencyPartition_to_assembledKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54430a4e-4ff2-e1b4-18c5-da45b4de2faf",
  "kind": "theorem",
  "lexical_name": "integerFrequencyPartition_to_assembledKernel",
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
  "slug": "integerfrequencypartition-to-assembledkernel--1a74d9574db4db000b41a388",
  "source": {
    "blob": "0f21dd8bf43f82a43afbef74ff14ba540a442620",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 108,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a74d9574db4db000b41a388dd7c763896d7da4803ff0fc102a0558c95a97c12",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54430a4e-4ff2-e1b4-18c5-da45b4de2faf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integerFrequencyPartition_to_assembledKernel
    (hpartition : TriangularIntegerFrequencyPartitionClaim) :
    TriangularAssembledFrequencyKernelClaim := by
  intro N hN t
  unfold triangularAssembledFrequencySum symmetricTriangularKernel
  rw [hpartition N]
  have hNegZero :
      Disjoint (triangularNegativeFrequencies N) triangularZeroFrequency := by
    rw [Finset.disjoint_left]
    intro k hk h0
    simp [triangularZeroFrequency] at h0
    subst k
    rw [mem_triangularNegativeFrequencies] at hk
    rcases hk with ⟨d, hd, hdz⟩
    have hdpos : 0 < d := (Finset.mem_Ico.mp hd).1
    omega
  have hNegZeroPos :
      Disjoint
        (triangularNegativeFrequencies N ∪ triangularZeroFrequency)
        (triangularPositiveFrequencies N) := by
    rw [Finset.disjoint_left]
    intro k hk hp
    rw [Finset.mem_union] at hk
    rcases hk with hn | hz
    · rw [mem_triangularNegativeFrequencies] at hn
      rw [mem_triangularPositiveFrequencies] at hp
      rcases hn with ⟨d, hd, rfl⟩
      rcases hp with ⟨e, he, hEq⟩
      have hdpos : 0 < d := (Finset.mem_Ico.mp hd).1
      have hepos : 0 < e := (Finset.mem_Ico.mp he).1
      omega
    · simp [triangularZeroFrequency] at hz
      subst k
      rw [mem_triangularPositiveFrequencies] at hp
      rcases hp with ⟨d, hd, hEq⟩
      have hdpos : 0 < d := (Finset.mem_Ico.mp hd).1
      omega
  -- The only remaining endpoint block contributes zero by construction.
  rw [Finset.sum_union]
  · rw [Finset.sum_union hNegZeroPos]
    rw [Finset.sum_union hNegZero]
    rw [triangularNegativeFrequency_sum hN,
      triangularPositiveFrequency_sum hN]
    simp [triangularZeroFrequency, triangularZeroFrequency_weight hN,
      symmetricTriangularKernel_endpoint_weights_zero]
    ring
  · rw [Finset.disjoint_left]
    intro k hk hend
    simp at hend
    rcases hend with rfl | rfl
    · rw [Finset.mem_union] at hk
      rcases hk with hnz | hp
      · rw [Finset.mem_union] at hnz
        rcases hnz with hn | hz
        · rw [mem_triangularNegativeFrequencies] at hn
          rcases hn with ⟨d, hd, hEq⟩
          have hdlt : d < N := (Finset.mem_Ico.mp hd).2
          omega
        · simp [triangularZeroFrequency] at hz
      · rw [mem_triangularPositiveFrequencies] at hp
        rcases hp with ⟨d, hd, hEq⟩
        have hdlt : d < N := (Finset.mem_Ico.mp hd).2
        omega
    · rw [Finset.mem_union] at hk
      rcases hk with hnz | hp
      · rw [Finset.mem_union] at hnz
        rcases hnz with hn | hz
        · rw [mem_triangularNegativeFrequencies] at hn
          rcases hn with ⟨d, hd, hEq⟩
          have hdlt : d < N := (Finset.mem_Ico.mp hd).2
          omega
        · simp [triangularZeroFrequency] at hz
      · rw [mem_triangularPositiveFrequencies] at hp
        rcases hp with ⟨d, hd, hEq⟩
        have hdlt : d < N := (Finset.mem_Ico.mp hd).2
        omega

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f21dd8bf43f82a43afbef74ff14ba540a442620` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
