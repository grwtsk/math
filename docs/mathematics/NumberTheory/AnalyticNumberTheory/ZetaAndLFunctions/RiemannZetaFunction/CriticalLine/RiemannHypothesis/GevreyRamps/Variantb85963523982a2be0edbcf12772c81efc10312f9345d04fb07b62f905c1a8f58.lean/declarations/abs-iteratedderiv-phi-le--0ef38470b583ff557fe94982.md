# abs_iteratedDeriv_phi_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b826885dbe6402f5cf219920a1667afaffb4f06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b85963523982a2be0edbcf12772c81efc10312f9345d04fb07b62f905c1a8f58.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ab52085-013c-7823-023f-b2d0c22af23d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73ea7c3e-1cdf-a477-520d-35c75eb83247",
  "kind": "lemma",
  "lexical_name": "abs_iteratedDeriv_phi_le",
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
  "slug": "abs-iteratedderiv-phi-le--0ef38470b583ff557fe94982",
  "source": {
    "blob": "7b826885dbe6402f5cf219920a1667afaffb4f06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 168,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Variantb85963523982a2be0edbcf12772c81efc10312f9345d04fb07b62f905c1a8f58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ef38470b583ff557fe94982d94afe339781f2f981500ff474a2836649993f53",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Variantb85963523982a2be0edbcf12772c81efc10312f9345d04fb07b62f905c1a8f58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73ea7c3e-1cdf-a477-520d-35c75eb83247`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_iteratedDeriv_phi_le (hϱ : GevreyProfile s A B ϱ) (hw : 0 < w) (hwL : 2 * w ≤ L)
    {k : ℕ} (hk : 1 ≤ k) (u : ℝ) :
    |iteratedDeriv k (phi ϱ L w) u|
      ≤ |iteratedDeriv k (fP ϱ L w) u| + |iteratedDeriv k (fM ϱ L w) u| := by
  have hprod : phi ϱ L w = fP ϱ L w * fM ϱ L w := by
    funext u; exact phi_eq_mul hϱ.taper hw hwL u
  have hPk : ContDiffAt ℝ k (fP ϱ L w) u := ((fP_contDiff hϱ).of_le (WithTop.coe_le_coe.mpr le_top)).contDiffAt
  have hMk : ContDiffAt ℝ k (fM ϱ L w) u := ((fM_contDiff hϱ).of_le (WithTop.coe_le_coe.mpr le_top)).contDiffAt
  rw [hprod, iteratedDeriv_mul hPk hMk]
  have hk0 : (0:ℕ) ≠ k := by omega
  rw [Finset.sum_eq_add 0 k hk0]
  · simp only [Nat.choose_zero_right, Nat.cast_one, one_mul, iteratedDeriv_zero, Nat.sub_zero,
      Nat.choose_self, Nat.sub_self]
    have h0 : |fP ϱ L w u| ≤ 1 := by
      unfold fP; rw [abs_of_nonneg (hϱ.taper.nonneg _)]; exact hϱ.taper.le_one _
    have h1 : |fM ϱ L w u| ≤ 1 := by
      unfold fM; rw [abs_of_nonneg (hϱ.taper.nonneg _)]; exact hϱ.taper.le_one _
    calc |fP ϱ L w u * iteratedDeriv k (fM ϱ L w) u + iteratedDeriv k (fP ϱ L w) u * fM ϱ L w u|
        ≤ |fP ϱ L w u * iteratedDeriv k (fM ϱ L w) u| + |iteratedDeriv k (fP ϱ L w) u * fM ϱ L w u| :=
          abs_add_le _ _
      _ = |fP ϱ L w u| * |iteratedDeriv k (fM ϱ L w) u| + |iteratedDeriv k (fP ϱ L w) u| * |fM ϱ L w u| := by
          rw [abs_mul, abs_mul]
      _ ≤ 1 * |iteratedDeriv k (fM ϱ L w) u| + |iteratedDeriv k (fP ϱ L w) u| * 1 := by
          gcongr
      _ = _ := by ring
  · intro c hc hne
    have hc1 : 1 ≤ c := Nat.one_le_iff_ne_zero.mpr hne.1
    have hc2 : 1 ≤ k - c := by
      have := Finset.mem_range.mp hc
      omega
    rw [mul_assoc, iteratedDeriv_fP_mul_fM_eq_zero hϱ hw hwL hc1 hc2, mul_zero]
  · intro h; exact absurd (Finset.mem_range.mpr (by omega)) h
  · intro h; exact absurd (Finset.mem_range.mpr (by omega)) h

/-- **Gevrey ramp lemma**: `‖φ^{(k)}‖_{L¹} ≤ 2B·w·(A/w)^k·k^{sk}` (`k ≥ 1`, `2w ≤ L`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Variantb85963523982a2be0edbcf12772c81efc10312f9345d04fb07b62f905c1a8f58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Variantb85963523982a2be0edbcf12772c81efc10312f9345d04fb07b62f905c1a8f58.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b826885dbe6402f5cf219920a1667afaffb4f06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
