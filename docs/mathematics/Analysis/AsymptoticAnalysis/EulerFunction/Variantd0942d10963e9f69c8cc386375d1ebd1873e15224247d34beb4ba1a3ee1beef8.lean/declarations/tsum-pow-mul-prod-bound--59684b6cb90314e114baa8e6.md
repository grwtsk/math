# tsum_pow_mul_prod_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7420874-a34d-6fa7-7f13-3d276cee66cf",
  "kind": "lemma",
  "lexical_name": "tsum_pow_mul_prod_bound",
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
  "slug": "tsum-pow-mul-prod-bound--59684b6cb90314e114baa8e6",
  "source": {
    "blob": "6716622248c8a860cefda6fa8ef560265949dadf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 71,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59684b6cb90314e114baa8e6d39a32150447a1e1d14e3fbaf4a27d38bf103ca4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7420874-a34d-6fa7-7f13-3d276cee66cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tsum_pow_mul_prod_bound (k : ℕ) {x : R} (hx : ‖x‖ < 1) :
    ‖∑' n, x ^ ((k + 1) * n) * ∏ i ∈ range (n + 1), (1 - x ^ (k + i + 1))‖ ≤
      (1 - ‖x‖)⁻¹ * ∏' i, (1 + ‖x‖ ^ i) := by
  refine tsum_of_norm_bounded (g := fun n ↦ ‖x‖ ^ n * ∏' i, (1 + ‖x‖ ^ i)) ?_ fun n ↦ ?_
  · rw [← tsum_geometric_of_lt_one (by simp) hx]
    exact (summable_geometric_of_lt_one (by simp) hx).hasSum.mul_right _
  · apply (pow_mul_prod_bound k n hx).trans
    gcongr ?_ * ?_
    · exact tprod_nonneg fun _ ↦ by positivity
    · grind [mul_comm, pow_mul, pow_le_of_le_one (by simp) (pow_le_one₀ (by simp) hx.le)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6716622248c8a860cefda6fa8ef560265949dadf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
