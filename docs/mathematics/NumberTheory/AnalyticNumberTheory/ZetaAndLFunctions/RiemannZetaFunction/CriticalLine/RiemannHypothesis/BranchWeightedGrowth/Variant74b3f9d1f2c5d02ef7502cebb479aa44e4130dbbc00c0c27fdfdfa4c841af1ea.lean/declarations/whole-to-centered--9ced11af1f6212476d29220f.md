# whole_to_centered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:392105d9-94b6-c2cb-64d4-598e67d1bfd9",
  "kind": "theorem",
  "lexical_name": "whole_to_centered",
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
  "slug": "whole-to-centered--9ced11af1f6212476d29220f",
  "source": {
    "blob": "0db97ae3339973128cd7b44392e5a854ae9d1f95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchWeightedGrowth/Variant74b3f9d1f2c5d02ef7502cebb479aa44e4130dbbc00c0c27fdfdfa4c841af1ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ced11af1f6212476d29220f014abfaf673da3c06f8f75f36575925d20b867eb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchWeightedGrowth/Variant74b3f9d1f2c5d02ef7502cebb479aa44e4130dbbc00c0c27fdfdfa4c841af1ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:392105d9-94b6-c2cb-64d4-598e67d1bfd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem whole_to_centered {C p : ℝ} (hC : 0 ≤ C) (hp : 0 ≤ p)
    (hW : ∀ t : ℝ, 0 ≤ t → |pickup t| ≤ C * (1 + t) ^ p)
    {A t : ℝ} (hA : 1 ≤ A) (ht : t ∈ readingWindow A) :
    |centeredPickup A t| ≤ (2 * C * 3 ^ p) * A ^ p := by
  have ha : 0 ≤ 2 * Real.log A := mul_nonneg (by norm_num) (Real.log_nonneg hA)
  have hbase : ∀ s : ℝ, 0 ≤ s → s ≤ 2 * A → (1 + s) ^ p ≤ (3 * A) ^ p := by
    intro s hs hsa
    exact Real.rpow_le_rpow (by linarith) (by linarith) hp
  have h1 := mul_le_mul_of_nonneg_left (hbase t (window_nonnegative hA ht) ht.2) hC
  have h2 := mul_le_mul_of_nonneg_left (hbase _ ha (reset_le_endpoint hA)) hC
  have habs := abs_sub_le (pickup t) 0 (pickup (2 * Real.log A))
  simp only [sub_zero, zero_sub, abs_neg] at habs
  rw [centeredPickup]
  have hsplit : (3 * A) ^ p = 3 ^ p * A ^ p := Real.mul_rpow (by norm_num) (by linarith)
  rw [hsplit] at h1 h2
  linarith [hW t (window_nonnegative hA ht), hW _ ha]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchWeightedGrowth/Variant74b3f9d1f2c5d02ef7502cebb479aa44e4130dbbc00c0c27fdfdfa4c841af1ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchWeightedGrowth/Variant74b3f9d1f2c5d02ef7502cebb479aa44e4130dbbc00c0c27fdfdfa4c841af1ea.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0db97ae3339973128cd7b44392e5a854ae9d1f95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
