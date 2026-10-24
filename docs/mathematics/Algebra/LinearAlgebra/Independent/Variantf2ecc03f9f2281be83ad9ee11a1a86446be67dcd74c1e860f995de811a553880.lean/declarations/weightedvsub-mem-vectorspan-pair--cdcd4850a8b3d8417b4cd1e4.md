# weightedVSub_mem_vectorSpan_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b1d6907-866c-fa3d-005b-9a50b015c403",
  "kind": "theorem",
  "lexical_name": "weightedVSub_mem_vectorSpan_pair",
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
  "slug": "weightedvsub-mem-vectorspan-pair--cdcd4850a8b3d8417b4cd1e4",
  "source": {
    "blob": "12f84f9534fc3cd7c0373d25a1afd855e06167cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 514,
    "path": "GRWTSK/Algebra/LinearAlgebra/Independent/Variantf2ecc03f9f2281be83ad9ee11a1a86446be67dcd74c1e860f995de811a553880.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdcd4850a8b3d8417b4cd1e4efafe6d0dd3a66fea3599607cc93db1607f3cb28",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Independent/Variantf2ecc03f9f2281be83ad9ee11a1a86446be67dcd74c1e860f995de811a553880.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b1d6907-866c-fa3d-005b-9a50b015c403`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedVSub_mem_vectorSpan_pair {p : ι → P} (h : AffineIndependent k p) {w w₁ w₂ : ι → k}
    {s : Finset ι} (hw : ∑ i ∈ s, w i = 0) (hw₁ : ∑ i ∈ s, w₁ i = 1)
    (hw₂ : ∑ i ∈ s, w₂ i = 1) :
    s.weightedVSub p w ∈
        vectorSpan k ({s.affineCombination k p w₁, s.affineCombination k p w₂} : Set P) ↔
      ∃ r : k, ∀ i ∈ s, w i = r * (w₁ i - w₂ i) := by
  rw [mem_vectorSpan_pair]
  refine ⟨fun h => ?_, fun h => ?_⟩
  · rcases h with ⟨r, hr⟩
    refine ⟨r, fun i hi => ?_⟩
    rw [s.affineCombination_vsub, ← s.weightedVSub_const_smul, ← sub_eq_zero, ← map_sub] at hr
    have hw' : (∑ j ∈ s, (r • (w₁ - w₂) - w) j) = 0 := by
      simp_rw [Pi.sub_apply, Pi.smul_apply, Pi.sub_apply, smul_sub, Finset.sum_sub_distrib, ←
        Finset.smul_sum, hw, hw₁, hw₂, sub_self]
    have hr' := h s _ hw' hr i hi
    rw [eq_comm, ← sub_eq_zero, ← smul_eq_mul]
    exact hr'
  · rcases h with ⟨r, hr⟩
    refine ⟨r, ?_⟩
    let w' i := r * (w₁ i - w₂ i)
    change ∀ i ∈ s, w i = w' i at hr
    rw [s.weightedVSub_congr hr fun _ _ => rfl, s.affineCombination_vsub, ←
      s.weightedVSub_const_smul]
    congr

/-- Given an affinely independent family of points, an affine combination lies in the
span of two points given as affine combinations if and only if it is an affine combination
with weights those of one point plus a multiple of the difference between the weights of the
two points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Independent/Variantf2ecc03f9f2281be83ad9ee11a1a86446be67dcd74c1e860f995de811a553880.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Independent/Variantf2ecc03f9f2281be83ad9ee11a1a86446be67dcd74c1e860f995de811a553880.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12f84f9534fc3cd7c0373d25a1afd855e06167cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
