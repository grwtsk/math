# sum_commonDivisorRatio_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7df55355-9372-ff36-f43d-2317f79b80f0",
  "kind": "theorem",
  "lexical_name": "sum_commonDivisorRatio_eq",
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
  "slug": "sum-commondivisorratio-eq--b3d9e5662d7a817a7a5f69b9",
  "source": {
    "blob": "dfafa925290e9527b552c1c136687bf7b082f0c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 202,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variant890664357325ed1523ba317b806093c29172bf5a1bff71531c1ab284b3fd45cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3d9e5662d7a817a7a5f69b9326b2a14276e1ae26b0176cc77a3e5968fecaad2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variant890664357325ed1523ba317b806093c29172bf5a1bff71531c1ab284b3fd45cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7df55355-9372-ff36-f43d-2317f79b80f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_commonDivisorRatio_eq (V : ℕ) :
    (∑ d ∈ Finset.Ioc 0 V, ∑ e ∈ Finset.Ioc 0 V,
      commonDivisorRatioSum V d e) =
    ∑ r ∈ Finset.Ioc 0 V,
      positiveMultipleRatioSum V r * positiveMultipleInvSum V r := by
  unfold commonDivisorRatioSum positiveMultipleRatioSum positiveMultipleInvSum
  let s := Finset.Ioc 0 V
  change (∑ d ∈ s, ∑ e ∈ s, ∑ r ∈ s,
      if r ∣ d ∧ r ∣ e then
        (r : ℝ) * (d : ℝ)⁻¹ * (e : ℝ)⁻¹ else 0) =
    ∑ r ∈ s,
      (∑ d ∈ s, if r ∣ d then (r : ℝ) / (d : ℝ) else 0) *
      (∑ e ∈ s, if r ∣ e then (e : ℝ)⁻¹ else 0)
  calc
    (∑ d ∈ s, ∑ e ∈ s, ∑ r ∈ s,
        if r ∣ d ∧ r ∣ e then
          (r : ℝ) * (d : ℝ)⁻¹ * (e : ℝ)⁻¹ else 0) =
      ∑ d ∈ s, ∑ r ∈ s, ∑ e ∈ s,
        if r ∣ d ∧ r ∣ e then
          (r : ℝ) * (d : ℝ)⁻¹ * (e : ℝ)⁻¹ else 0 := by
      apply Finset.sum_congr rfl
      intro d hd
      rw [Finset.sum_comm]
    _ = ∑ r ∈ s, ∑ d ∈ s, ∑ e ∈ s,
        if r ∣ d ∧ r ∣ e then
          (r : ℝ) * (d : ℝ)⁻¹ * (e : ℝ)⁻¹ else 0 := by
      rw [Finset.sum_comm]
    _ = ∑ r ∈ s,
        (∑ d ∈ s, if r ∣ d then (r : ℝ) / (d : ℝ) else 0) *
        (∑ e ∈ s, if r ∣ e then (e : ℝ)⁻¹ else 0) := by
      apply Finset.sum_congr rfl
      intro r hr
      rw [Finset.sum_mul_sum]
      apply Finset.sum_congr rfl
      intro d hd
      apply Finset.sum_congr rfl
      intro e he
      by_cases hrd : r ∣ d <;> by_cases hre : r ∣ e
      · simp [hrd, hre, div_eq_mul_inv]
      · simp [hrd, hre]
      · simp [hrd, hre]
      · simp [hrd, hre]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variant890664357325ed1523ba317b806093c29172bf5a1bff71531c1ab284b3fd45cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variant890664357325ed1523ba317b806093c29172bf5a1bff71531c1ab284b3fd45cb.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfafa925290e9527b552c1c136687bf7b082f0c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
