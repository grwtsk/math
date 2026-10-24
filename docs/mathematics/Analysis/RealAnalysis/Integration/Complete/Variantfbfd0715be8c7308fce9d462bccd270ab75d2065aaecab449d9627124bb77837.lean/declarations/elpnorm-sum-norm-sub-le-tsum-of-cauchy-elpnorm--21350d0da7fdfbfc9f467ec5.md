# eLpNorm'_sum_norm_sub_le_tsum_of_cauchy_eLpNorm'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:799532a9-c0b3-9d4a-f7f1-13c3a8f749e5",
  "kind": "theorem",
  "lexical_name": "eLpNorm'_sum_norm_sub_le_tsum_of_cauchy_eLpNorm'",
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
  "slug": "elpnorm-sum-norm-sub-le-tsum-of-cauchy-elpnorm--21350d0da7fdfbfc9f467ec5",
  "source": {
    "blob": "df15e6c16bee2c1e7d25800d677338ed9caf0605",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 204,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Complete/Variantfbfd0715be8c7308fce9d462bccd270ab75d2065aaecab449d9627124bb77837.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21350d0da7fdfbfc9f467ec56c23df8cb900e4370fa45deee82109999c2610f8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Complete/Variantfbfd0715be8c7308fce9d462bccd270ab75d2065aaecab449d9627124bb77837.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:799532a9-c0b3-9d4a-f7f1-13c3a8f749e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem eLpNorm'_sum_norm_sub_le_tsum_of_cauchy_eLpNorm' {f : ℕ → α → E}
    (hf : ∀ n, AEStronglyMeasurable (f n) μ) {p : ℝ} (hp1 : 1 ≤ p) {B : ℕ → ℝ≥0∞}
    (h_cau : ∀ N n m : ℕ, N ≤ n → N ≤ m → eLpNorm' (f n - f m) p μ < B N) (n : ℕ) :
    eLpNorm' (fun x => ∑ i ∈ Finset.range (n + 1), ‖f (i + 1) x - f i x‖) p μ ≤ ∑' i, B i := by
  let f_norm_diff i x := ‖f (i + 1) x - f i x‖
  have hgf_norm_diff :
    ∀ n,
      (fun x => ∑ i ∈ Finset.range (n + 1), ‖f (i + 1) x - f i x‖) =
        ∑ i ∈ Finset.range (n + 1), f_norm_diff i :=
    fun n => funext fun x => by simp [f_norm_diff]
  rw [hgf_norm_diff]
  refine (eLpNorm'_sum_le (fun i _ => ((hf (i + 1)).sub (hf i)).norm) hp1).trans ?_
  simp_rw [eLpNorm'_norm]
  refine (Finset.sum_le_sum ?_).trans <| ENNReal.sum_le_tsum _
  exact fun m _ => (h_cau m (m + 1) m (Nat.le_succ m) (le_refl m)).le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Complete/Variantfbfd0715be8c7308fce9d462bccd270ab75d2065aaecab449d9627124bb77837.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Complete/Variantfbfd0715be8c7308fce9d462bccd270ab75d2065aaecab449d9627124bb77837.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df15e6c16bee2c1e7d25800d677338ed9caf0605` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
